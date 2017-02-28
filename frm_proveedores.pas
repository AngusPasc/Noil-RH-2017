unit frm_proveedores;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, global, db, StdCtrls,
  Mask, DBCtrls, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos,UnitValidaTexto,
  unitactivapop,StrUtils, UnitValidacion, ExtCtrls, frm_bancos, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExportaExcel, dxBarBuiltInMenu, cxPC, cxButtons,masUtilerias,
  cxPCdxBarPopupMenu, FormAutoScaler, utilerias;
type
  TfrmProveedores = class(TForm)
    frmBarra1: TfrmBarra;
    dsProveedores: TDataSource;
    Proveedores: TZQuery;
    anexo_ocompras: TZReadOnlyQuery;
    ds_anexo_ocompras: TDataSource;
    ProveedoressIdProveedor: TStringField;
    ProveedoressDomicilio: TStringField;
    ProveedoressCiudad: TStringField;
    ProveedoressEstado: TStringField;
    ProveedoressRfc: TStringField;
    ProveedoressTelefono: TStringField;
    ProveedoressCuenta: TStringField;
    ProveedoressSucursal: TStringField;
    ProveedoressBanco: TStringField;
    ProveedoresmComentarios: TMemoField;
    ProveedoressRepresentante: TStringField;
    ProveedoressVendedor: TStringField;
    ProveedoressEmail: TStringField;
    ProveedoressNombreCuenta: TStringField;
    ProveedoressClaveBan: TStringField;
    ProveedoressCp: TStringField;
    ProveedoressExt: TStringField;
    ProveedoressFax: TStringField;
    ProveedoresiId: TIntegerField;
    ProveedoressNombreCorto: TStringField;
    dsBancos: TDataSource;
    qryBancos: TZQuery;
    zq_contratos: TZQuery;
    strngfldProveedoressRazonSocial: TStringField;
    ds_provbanco: TDataSource;
    zq_provbanco: TZQuery;
    PopupPrincipal: TPopupMenu;
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
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tsIdProveedor: TDBEdit;
    tsNomCorto: TDBEdit;
    tsRazon: TDBEdit;
    tsRfc: TDBEdit;
    tsDomicilio: TDBEdit;
    tsCiudad: TDBEdit;
    dbCp: TDBEdit;
    tsEstado: TDBEdit;
    dbExt: TDBEdit;
    tsTelefono: TDBEdit;
    dbFax: TDBEdit;
    tmComentarios: TDBMemo;
    dbVendedor: TDBEdit;
    dbEmail: TDBEdit;
    cxTabSheet2: TcxTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbCuenta: TDBEdit;
    dbSucursal: TDBEdit;
    dbClave: TDBEdit;
    dbNombre: TDBEdit;
    cbbBanco: TDBLookupComboBox;
    btnCatalogoBanco: TButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    Id: TcxGridDBColumn;
    banco: TcxGridDBColumn;
    sucursal: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    btnDelete: TcxButton;
    Panel3: TPanel;
    grid_proveedores: TcxGrid;
    grid_proveedoresDBTableView1: TcxGridDBTableView;
    Col_clave: TcxGridDBColumn;
    col_nombrecorto: TcxGridDBColumn;
    col_razonsocial: TcxGridDBColumn;
    Col_domicilio: TcxGridDBColumn;
    Col_ciudad: TcxGridDBColumn;
    Col_telefonos: TcxGridDBColumn;
    grid_proveedoresLevel1: TcxGridLevel;
    frmtsclr1: TFormAutoScaler;
    ProveedoressRazon: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure tsRazonKeyPress(Sender: TObject; var Key: Char);
    procedure tsRfcKeyPress(Sender: TObject; var Key: Char);
    procedure tsDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tsEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_proveedoresCellClick(Column: TColumn);
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
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure dbCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure dbSucursalKeyPress(Sender: TObject; var Key: Char);
    procedure dbBancoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure dbClaveKeyPress(Sender: TObject; var Key: Char);
    procedure dbNombreKeyPress(Sender: TObject; var Key: Char);
    procedure dbVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdProveedorEnter(Sender: TObject);
    procedure tsIdProveedorExit(Sender: TObject);
    procedure tsRazonEnter(Sender: TObject);
    procedure tsRazonExit(Sender: TObject);
    procedure tsRfcEnter(Sender: TObject);
    procedure tsRfcExit(Sender: TObject);
    procedure tsDomicilioEnter(Sender: TObject);
    procedure tsDomicilioExit(Sender: TObject);
    procedure tsEstadoEnter(Sender: TObject);
    procedure tsEstadoExit(Sender: TObject);
    procedure tsCiudadEnter(Sender: TObject);
    procedure tsCiudadExit(Sender: TObject);
    procedure dbCuentaEnter(Sender: TObject);
    procedure dbCuentaExit(Sender: TObject);
    procedure tsTelefonoEnter(Sender: TObject);
    procedure tsTelefonoExit(Sender: TObject);
    procedure dbSucursalEnter(Sender: TObject);
    procedure dbSucursalExit(Sender: TObject);
    procedure dbClaveEnter(Sender: TObject);
    procedure dbClaveExit(Sender: TObject);
    procedure dbNombreEnter(Sender: TObject);
    procedure dbNombreExit(Sender: TObject);
    procedure dbVendedorEnter(Sender: TObject);
    procedure dbVendedorExit(Sender: TObject);
    procedure dbEmailEnter(Sender: TObject);
    procedure dbEmailExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure tsTelefonoChange(Sender: TObject);
    procedure dbCuentaChange(Sender: TObject);
    procedure dbClaveChange(Sender: TObject);
    procedure dbEmailKeyPress(Sender: TObject; var Key: Char);
    procedure dbCuentaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbCpKeyPress(Sender: TObject; var Key: Char);
    procedure dbCpEnter(Sender: TObject);
    procedure dbCpExit(Sender: TObject);
    procedure dbExtKeyPress(Sender: TObject; var Key: Char);
    procedure dbExtEnter(Sender: TObject);
    procedure dbExtExit(Sender: TObject);
    procedure dbFaxKeyPress(Sender: TObject; var Key: Char);
    procedure dbFaxEnter(Sender: TObject);
    procedure dbFaxExit(Sender: TObject);
    procedure tmComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBancoKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBancoEnter(Sender: TObject);
    procedure cbbBancoExit(Sender: TObject);
    procedure btnCatalogoBancoClick(Sender: TObject);
    procedure ProveedoresAfterScroll(DataSet: TDataSet);
    procedure grid_proveedoresDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure tsNomCortoEnter(Sender: TObject);
    procedure tsNomCortoExit(Sender: TObject);
    procedure tsNomCortoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cambio_estado;
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProveedores : TfrmProveedores;
  Opcion         : String ;
  //utgrid         : ticdbgrid;
  botonpermiso   : tbotonespermisos;
  banderaAgregar : Boolean;
  scuentabanco   : string;
  bCuentasBanco  : boolean;

implementation
uses
    frm_connection,
    frm_pedidos,
    frm_consumibles,
    frmCatalogoDeEquipos,
    Func_Genericas, frmBancos;
{$R *.dfm}

procedure TfrmProveedores.FormShow(Sender: TObject);
begin
    try
      BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cProveedores', PopupPrincipal);
      OpcButton := '' ;
      frmBarra1.btnCancel.Click ;
      bCuentasBanco := True;

      Proveedores.Active := False ;
      Proveedores.ParamByName('Id').AsInteger:=-1;
      Proveedores.ParamByName('Razon').AsInteger:=-1;
      Proveedores.ParamByName('NomCorto').AsInteger:=-1;
      Proveedores.Open;

      cbbBanco.KeyValue := Proveedores.FieldByName('sBanco').AsString;

      anexo_ocompras.Active := False ;
      anexo_ocompras.Params.ParamByName('Contrato').DataType := ftString ;
      anexo_ocompras.Params.ParamByName('Contrato').Value    := global_contrato ;
      anexo_ocompras.Open ;

      zq_contratos.Active := False ;
      zq_contratos.Params.ParamByName('sContrato').AsString := global_contrato;
      zq_contratos.Open ;

      if (global_frmActivo = 'frm_consumibles') or (global_frmActivo = 'frm_pedidos') then
          frmBarra1.btnAdd.Click;

      //UtGrid:=TicdbGrid.create(grid_proveedores);
      //BotonPermiso.permisosBotones(frmBarra1);
      frmbarra1.btnPrinter.Enabled:=false;
    except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al iniciar el formulario', 0);
    end;
 end;
end;

procedure TfrmProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.Free;
  Proveedores.Cancel ;
  action := cafree ;
end;

procedure TfrmProveedores.tsIdProveedorEnter(Sender: TObject);
begin
tsidproveedor.color:= global_color_entradaERP;
end;

procedure TfrmProveedores.tsIdProveedorExit(Sender: TObject);
begin
tsidproveedor.Color:= global_color_salidaERP;
end;

procedure TfrmProveedores.tsIdProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsRazon.SetFocus
end;

procedure TfrmProveedores.tsNomCortoEnter(Sender: TObject);
begin
  tsNomCorto.Color:= global_color_entradaERP;
end;

procedure TfrmProveedores.tsNomCortoExit(Sender: TObject);
begin
  tsNomCorto.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsNomCortoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    tsRazon.SetFocus
end;

procedure TfrmProveedores.tsRazonEnter(Sender: TObject);
begin
tsrazon.Color:= global_color_entradaERP;
end;

procedure TfrmProveedores.tsRazonExit(Sender: TObject);
begin
tsrazon.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsRazonKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsRfc.SetFocus
end;

procedure TfrmProveedores.tsRfcEnter(Sender: TObject);
begin
tsrfc.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.tsRfcExit(Sender: TObject);
begin
tsrfc.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsRfcKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDomicilio.SetFocus
end;

procedure TfrmProveedores.tsTelefonoChange(Sender: TObject);
begin
//tdbeditchangef(tsTelefono,'Teléfono');
end;

procedure TfrmProveedores.tsTelefonoEnter(Sender: TObject);
begin

    tstelefono.Color:=global_color_entradaERP;

end;

procedure TfrmProveedores.tsTelefonoExit(Sender: TObject);
begin
     tstelefono.Color:=global_color_salidaERP;

end;
procedure TfrmProveedores.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
//  if not KeyFiltroTdbedit(tstelefono,key) then
//      key:=#0;
  if key = #13 then
    dbExt.SetFocus;
end;

procedure TfrmProveedores.tsDomicilioEnter(Sender: TObject);
begin
     tsdomicilio.color:=global_color_entradaERP;
end;

procedure TfrmProveedores.tsDomicilioExit(Sender: TObject);
begin
    tsdomicilio.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsDomicilioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsCiudad.SetFocus
end;

procedure TfrmProveedores.tmComentariosEnter(Sender: TObject);
begin
tmcomentarios.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.tmComentariosExit(Sender: TObject);
begin
tmcomentarios.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tmComentariosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbVendedor.SetFocus
end;

procedure TfrmProveedores.tsCiudadEnter(Sender: TObject);
begin
tsciudad.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.tsCiudadExit(Sender: TObject);
begin
tsciudad.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsCiudadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbCp.SetFocus
end;

procedure TfrmProveedores.tsEstadoEnter(Sender: TObject);
begin
tsestado.color:=global_color_entradaERP;
end;

procedure TfrmProveedores.tsEstadoExit(Sender: TObject);
begin
tsestado.color:=global_color_salidaERP;
end;

procedure TfrmProveedores.tsEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsTelefono.SetFocus
end;

procedure TfrmProveedores.grid_proveedoresCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
    frmbarra1.btnCancel.Click
end;

procedure TfrmProveedores.grid_proveedoresDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmbarra1.btnCancel.Enabled = True then
    frmbarra1.btnCancel.Click
end;

procedure TfrmProveedores.frmBarra1btnAddClick(Sender: TObject);
begin
  try
       //activapop(frmProveedores, popupprincipal);
       banderaAgregar   :=true;
       frmBarra1.btnAddClick(Sender);
       Insertar1.Enabled  := False ;
       Editar1.Enabled    := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled       := True ;
       Eliminar1.Enabled  := False ;
       Refresh1.Enabled   := False ;
       Salir1.Enabled     := False ;
       cxTabSheet1.Show;

       tsNomCorto.SetFocus;
       BotonPermiso.permisosBotones(frmBarra1);

       grid_Proveedores.Enabled:=false;
       Proveedores.Append ;
       Proveedores.FieldValues['sRazon']     := '*';
       Proveedores.FieldValues['sDomicilio'] := '*';
       Proveedores.FieldValues['sCiudad']    := '*';
       Proveedores.FieldValues['sEstado']    := '*';
       Proveedores.FieldValues['sRfc']       := '*';
       Proveedores.FieldValues['sTelefono']  := '000 000 00000';
       Proveedores.FieldValues['sCuenta']    := '000000000';
       Proveedores.FieldValues['sSucursal']  := '*';
       Proveedores.FieldValues['sBanco']     := '*';
       Proveedores.FieldValues['mComentarios']   := '*';
       Proveedores.FieldValues['sRepresentante'] := '*';
       Proveedores.FieldValues['sVendedor']      := '*';
       Proveedores.FieldValues['sEmail']         := '_@_';
       Proveedores.FieldValues['sNombreCuenta']  := '*';
       Proveedores.FieldValues['sClaveBan']      := '0';
     except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      Proveedores.Edit ;
      //activapop(frmProveedores, popupprincipal);
      grid_Proveedores.Enabled:=false;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al editar registro', 0);
          frmbarra1.btnCancel.Click ;
      end;
   end ;
   BotonPermiso.permisosBotones(frmBarra1);
     frmbarra1.btnPrinter.Enabled:=false;

   tsNomCorto.SetFocus;
end;

procedure TfrmProveedores.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
    IdProveedor : string;
begin
    //empieza validacion
    nombres:=TStringList.Create;  cadenas:=TStringList.Create;
    nombres.Add('Nombre Corto');
    nombres.Add('Razon social');
    nombres.Add('RFC');
    nombres.Add('Domicilio');
    nombres.Add('Ciudad');
    nombres.Add('C.P.');
    nombres.Add('Estado');
    nombres.Add('Telefono');
    nombres.Add('Extension');
    nombres.Add('Fax');
    nombres.Add('Comentarios');
    nombres.Add('Contacto');
    nombres.Add('E Mail');

    cadenas.Add(tsNomCorto.Text);
    cadenas.Add(tsRazon.Text);
    cadenas.Add(tsrfc.Text);
    cadenas.Add(tsDomicilio.Text);
    cadenas.Add(tsciudad.Text);
    cadenas.Add(tsestado.Text);
    cadenas.Add(dbCp.Text);
    cadenas.Add(tsTelefono.Text);
    cadenas.Add(dbExt.Text);
    cadenas.Add(dbFax.Text);
    cadenas.Add(tmComentarios.Text);
    cadenas.Add(dbVendedor.Text);
    cadenas.Add(dbemail.Text);

    //continuainserccion de datos
     try
        if Proveedores.State=dsInsert then
        begin
          //BUSCAMOS EL MAXIMO
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select max(iId) as Folio FROM proveedores');
          connection.zCommand.Open;

          if connection.zCommand.RecordCount > 0 then
          begin
             Proveedores.FieldByName('iId').AsInteger := Connection.zCommand.FieldByName('Folio').AsInteger + 1;
             Proveedores.FieldByName('sIdProveedor').AsString := inttostr(Connection.zCommand.FieldByName('Folio').AsInteger + 1);
          end
          else
          begin
             Proveedores.FieldByName('iId').AsInteger := 1;
             Proveedores.FieldByName('sIdProveedor').AsString := '1';
          end;
        end;

        IdProveedor := Proveedores.FieldByName('sIdProveedor').AsString;
        Proveedores.FieldValues['sBanco']           := cbbBanco.KeyValue;
        Proveedores.FieldValues['sRazon']     := tsRazon.Text;

        if not validaTexto(nombres, cadenas, 'Proveedor', IdProveedor) then
        begin
            MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
            exit;
        end;

         Proveedores.Post ;
         Insertar1.Enabled := True ;
         Editar1.Enabled := True ;
         Registrar1.Enabled := False ;
         Can1.Enabled := False ;
         Eliminar1.Enabled := True ;
         Refresh1.Enabled := True ;
         Salir1.Enabled := True ;
         //frmBarra1.btnPostClick(Sender);

         try
             frmPedidos.Proveedores.Refresh;
             frmPedidos.tsIdProveedor.KeyValue := IdProveedor;
             frmPedidos.tsIdProveedor.SetFocus;
         Except
         end;
     except
       on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al salvar registro', 0);
          frmBarra1.btnCancel.Click ;
       end;
     end;

     grid_proveedores.Enabled:=True;
     frmbarra1.btnCancel.Click;
     frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Proveedores.Cancel ;
  BotonPermiso.permisosBotones(frmBarra1);
  grid_Proveedores.Enabled:=True;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al cancelar', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmProveedores.frmBarra1btnDeleteClick(Sender: TObject);
begin
 // If Proveedores.RecordCount  > 0 then
 //    if anexo_ocompras.RecordCount > 0 then
  if grid_proveedoresDBTableView1.DataController.DataSource.DataSet.IsEmpty=false then
  begin
    if grid_proveedoresDBTableView1.DataController.DataSource.DataSet.RecordCount>0 then
    begin

      if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        begin
          if anexo_ocompras.FieldValues ['sIdProveedor']<> Proveedores.FieldValues ['sIdProveedor'] then
          begin

            connection.QryBusca.Active := False;
            connection.qrybusca.SQL.Text := 'select  '+
                                              'count( ap.sIdProveedor ) as OrdenesCompras '+
                                            'from proveedores as p '+
                                            'inner join anexo_pedidos as ap '+
                                            'on ( p.sIdProveedor = ap.sIdProveedor ) '+

                                            'where p.sIdProveedor = :id_proveedor';
            connection.QryBusca.ParamByName( 'id_proveedor' ).AsString := Proveedores.FieldByName( 'sIdProveedor' ).AsString ;
            connection.QryBusca.Open;

            if connection.QryBusca.FieldByName( 'OrdenesCompras' ).AsInteger > 0 then
              raise Exception.Create( 'El proveedor ya tiene ordenes de compra asignadas.' );

            try
              Proveedores.Delete ;

              if (global_frmActivo = 'frm_pedidos') then
              begin
                frmPedidos.Proveedores.Refresh;
                frmPedidos.tsIdProveedor.SetFocus;
              end;

            except
              on e : exception do
              begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al eliminar registro', 0);
              end;
            end
          end
          else
            ShowMessage('El Proveedor ya ha sido agregado a una Orden de Compra');
        end;
      end;
    end;
  end;
  if (global_frmActivo = 'frm_consumibles') or (global_frmActivo = 'frm_pedidos') then
  begin
   global_frmActivo := 'ninguno';
   frmbarra1.btnCancel.Click;
   frmbarra1.btnExit.Click;
  end;
end;

procedure TfrmProveedores.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Proveedores.Active := False ;
  Proveedores.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmProveedores.frmBarra1btnExitClick(Sender: TObject);
begin
   global_proveedor := Proveedores.FieldByName('sIdProveedor').AsString;
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

procedure TfrmProveedores.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmProveedores.Paste1Click(Sender: TObject);
begin
try
//UtGrid.AddRowsFromClip;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al pegar registro', 0);
end;
end;
end;
procedure TfrmProveedores.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmProveedores.ProveedoresAfterScroll(DataSet: TDataSet);
begin
//  //Mostrar el banco del proveedor seleccionado
//  cbbBanco.KeyValue := Proveedores.FieldByName('sBanco').AsString;
//  zq_provbanco.Active:=False;
//  zq_provbanco.ParamByName('Prov').AsString:=Proveedores.FieldByName('sIdProveedor').AsString;
//  zq_provbanco.Open;
end;

procedure TfrmProveedores.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmProveedores.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmProveedores.btnAddClick(Sender: TObject);
begin
  try

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select max(iId) as Folio FROM con_provbanco');
    connection.zCommand.Open  ;

     zq_provbanco.Append;
     zq_provbanco.FieldByName('iId').AsInteger := connection.zCommand.FieldByName('Folio').asInteger + 1 ;
     zq_provbanco.FieldValues['sIdProv']       :=Proveedores.FieldValues['sIdProveedor'];
     zq_provbanco.FieldValues['sIdBanco']      :='NOMBRE BANCO' ;
     zq_provbanco.FieldValues['sClaveBan']     :='0000000000' ;
     zq_provbanco.FieldValues['sCuenta']       :='0000000000' ;

    cambio_estado;
  except
     on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Proveedores', 'Al agregar registro ', 0);
     end;
  end;
end;

procedure TfrmProveedores.btnCancelClick(Sender: TObject);
begin
  zq_provbanco.Cancel ;
  cambio_estado;
end;

procedure TfrmProveedores.btnCatalogoBancoClick(Sender: TObject);
begin
  //Mostrar el catalogo de bancos
    Application.CreateForm(Tfrm_BancosGral, frm_bancosGral);
    frm_bancosGral.show;
end;

procedure TfrmProveedores.btnDeleteClick(Sender: TObject);
begin
  If   zq_provbanco.RecordCount > 0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
      zq_provbanco.Delete;
  end;
end;

procedure TfrmProveedores.btnEditClick(Sender: TObject);
begin
  If zq_provbanco.RecordCount > 0 Then
  Begin
    zq_provbanco.Edit;
    cambio_estado;
  End;
end;

procedure TfrmProveedores.btnPostClick(Sender: TObject);
begin
  try
    if trim(cbbBanco.Text) = '' then
    begin
      MessageDlg('Banco debe tener un valor!', mtInformation, [mbOk], 0);
      exit;
    end;

    zq_provbanco.Post ;
    cambio_estado;
  except
   on e: exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmProveedores.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmProveedores.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmProveedores.ExportaraExcel1Click(Sender: TObject);
begin
  ExportExcelPersonalizado(zq_contratos,grid_proveedoresDBTableView1,'Proveedores','Catalogo de Proveedores');
end;

procedure TfrmProveedores.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmProveedores.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click 
end;

procedure TfrmProveedores.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmProveedores.dbClaveChange(Sender: TObject);
begin
//    tdbeditchangef(dbClave,'Clave Banco');
end;

procedure TfrmProveedores.dbClaveEnter(Sender: TObject);
begin
    dbclave.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbClaveExit(Sender: TObject);
begin
    dbclave.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbClaveKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
      dbCuenta.SetFocus
end;

procedure TfrmProveedores.dbCpEnter(Sender: TObject);
begin
  dbCp.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbCpExit(Sender: TObject);
begin
  dbCp.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbCpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsEstado.SetFocus
end;

procedure TfrmProveedores.dbCuentaChange(Sender: TObject);
begin
    //tdbeditchangef(dbCuenta,'Cuenta Banco');
end;

procedure TfrmProveedores.dbCuentaEnter(Sender: TObject);
begin
    dbcuenta.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbCuentaExit(Sender: TObject);
begin
    dbcuenta.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbCuentaKeyPress(Sender: TObject; var Key: Char);
begin
    if ((Key>#48) and (key>#57)) and (key<>#13) and (key<>#8) then
    begin
        ShowMessage('Valor introducido incorrecto');
        scuentabanco  := dbCuenta.Text;
        bCuentasBanco := False;
   end;

   If key = #13 Then
     dbNombre.SetFocus ;
end;

procedure TfrmProveedores.dbCuentaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if bCuentasBanco = False then
     begin
         dbCuenta.text:=scuentabanco;
         dbCuenta.SelStart:=Length(scuentabanco);
         bCuentasBanco  := True;
     end;

end;

procedure TfrmProveedores.dbEmailEnter(Sender: TObject);
begin
dbemail.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbEmailExit(Sender: TObject);
begin
dbemail.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbEmailKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    tsNomCorto.SetFocus
end;

procedure TfrmProveedores.dbExtEnter(Sender: TObject);
begin
  dbExt.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbExtExit(Sender: TObject);
begin
  dbExt.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbExtKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      dbFax.SetFocus
end;

procedure TfrmProveedores.dbFaxEnter(Sender: TObject);
begin
  dbFax.Color:=global_color_entradaERP; 
end;

procedure TfrmProveedores.dbFaxExit(Sender: TObject);
begin
  dbFax.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbFaxKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      tmComentarios.SetFocus;
end;

procedure TfrmProveedores.dbNombreEnter(Sender: TObject);
begin
dbnombre.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbNombreExit(Sender: TObject);
begin
dbnombre.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    cbbBanco.SetFocus
end;

procedure TfrmProveedores.dbSucursalEnter(Sender: TObject);
begin
dbsucursal.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbSucursalExit(Sender: TObject);
begin
dbsucursal.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbSucursalKeyPress(Sender: TObject; var Key: Char);
begin
      If key=#13 Then
         dbclave.SetFocus ;
end;

procedure TfrmProveedores.dbVendedorEnter(Sender: TObject);
begin
dbvendedor.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.dbVendedorExit(Sender: TObject);
begin
dbvendedor.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.dbVendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbemail.SetFocus
end;

procedure TfrmProveedores.cbbBancoEnter(Sender: TObject);
begin
  cbbBanco.Color:=global_color_entradaERP;
end;

procedure TfrmProveedores.cbbBancoExit(Sender: TObject);
begin
  cbbBanco.Color:=global_color_salidaERP;
end;

procedure TfrmProveedores.cbbBancoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
       dbSucursal.SetFocus;
end;

procedure TfrmProveedores.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmProveedores.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmProveedores.dbBancoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbsucursal.SetFocus
end;

procedure TfrmProveedores.cambio_estado;
begin
  if zq_provbanco.State in [dsInsert,dsEdit] then
  begin
    btnAdd.Enabled      :=False;
    btnEdit.Enabled     :=False;
    btnPost.Enabled     :=True;
    btnCancel.Enabled   :=True;
    btnDelete.Enabled   :=False;
  end else
  if zq_provbanco.State in [dsBrowse] then
  begin
    btnAdd.Enabled      :=True;
    btnEdit.Enabled     :=True;
    btnPost.Enabled     :=False;
    btnCancel.Enabled   :=False;
    btnDelete.Enabled   :=True;
  end;
end;

procedure TfrmProveedores.GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

end.
