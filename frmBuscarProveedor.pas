unit frmBuscarProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons, UDbGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  Tfrm_BuscarProveedor = class(TForm)
    btnSeleccionar: TButton;
    btnSalir: TButton;
    BuscaObjeto: TZReadOnlyQuery;
    ds_buscaobjeto: TDataSource;
    btnInserta: TSpeedButton;
    BuscaObjetosIdProveedor: TStringField;
    BuscaObjetosRFC: TStringField;
    BuscaObjetosRazonSocial: TStringField;
    BuscaObjetosDomicilio: TStringField;
    BuscaObjetosCiudad: TStringField;
    BuscaObjetosCP: TStringField;
    BuscaObjetosEstado: TStringField;
    BuscaObjetosTelefono: TStringField;
    BuscaObjetolStatus: TStringField;
    GridClientes: TcxGrid;
    GridClientesDBTableView1: TcxGridDBTableView;
    GridClientesDBTableView1Column1: TcxGridDBColumn;
    GridClientesDBTableView1Column2: TcxGridDBColumn;
    GridClientesDBTableView1Column3: TcxGridDBColumn;
    GridClientesLevel1: TcxGridLevel;
    GridClientesDBTableView1Column4: TcxGridDBColumn;
    GridClientesDBTableView1Column5: TcxGridDBColumn;
    GridClientesDBTableView1Column6: TcxGridDBColumn;
    GridClientesDBTableView1Column7: TcxGridDBColumn;
    GridClientesDBTableView1Column8: TcxGridDBColumn;
    GridClientesDBTableView1Column9: TcxGridDBColumn;
    procedure btnSalirClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridClientesDblClick(Sender: TObject);
    procedure btnInsertaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_BuscarProveedor: Tfrm_BuscarProveedor;
  //utgrid:ticdbgrid;
implementation

uses frmNuevoProveedor, frm_proveedores;


{$R *.dfm}

procedure Tfrm_BuscarProveedor.btnSeleccionarClick(Sender: TObject);
begin
   sIdProveedorBusqueda := BuscaObjeto.FieldByName('sIdProveedor').AsString ;
    sParamDomicilioProv := BuscaObjeto.FieldByName('sDomicilio').AsString;
   sParamEstadoProv := BuscaObjeto.FieldByName('lStatus').AsString;
   sParamTelfProv := BuscaObjeto.FieldByName('sTelefono').AsString;
   sParamCPProv := BuscaObjeto.FieldByName('sCP').AsString;
   close
end;

procedure Tfrm_BuscarProveedor.btnSalirClick(Sender: TObject);
begin
   //sIdProveedorBusqueda := BuscaObjeto.FieldByName('sIdProveedor').AsString ;

   close
end;

procedure Tfrm_BuscarProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
end;

procedure Tfrm_BuscarProveedor.FormShow(Sender: TObject);
begin
    //UtGrid:=TicdbGrid.create(GridClientes);
    //tsBuscar.Text := '' ;
    //cbBusqueda.ItemIndex := 0 ;
    BuscaObjeto.Active := False ;
    BuscaObjeto.Sql.Clear ;
//    BuscaObjeto.Sql.Add('select * from proveedores where sRazonSocial Like :Parametro ' +
//                        'and sIdCompaniaConf =:Contrato Order By sRazonSocial, sDomicilio') ;

//    BuscaObjeto.Sql.Add('select * from proveedores where sRazonSocial Like :Parametro ' +
//                        'Order By sRazonSocial, sDomicilio') ;

    BuscaObjeto.Sql.Add('select * from proveedores') ;

    //BuscaObjeto.Params.ParamByName('Parametro').Value := '%%' ;
    //BuscaObjeto.params.ParamByName('Contrato').Value  := global_contrato ;
    BuscaObjeto.Open ;

    //tsBuscar.SetFocus
end;

procedure Tfrm_BuscarProveedor.GridClientesDblClick(Sender: TObject);
begin
    btnSeleccionar.Click 
end;

procedure Tfrm_BuscarProveedor.btnInsertaClick(Sender: TObject);
var
    sParametro : String ;
begin

    Application.CreateForm(TfrmProveedores, frmProveedores);
    frmProveedores.FormStyle := fsMDIForm;
    frmProveedores.BorderStyle:= bsSingle;
    frmProveedores.Top        := 58;
  frmProveedores.Left       := 302;
  frmProveedores.Width      := 1000;
  frmProveedores.Height     := 503;
    frmProveedores.Position   := poMainFormCenter;
    frmProveedores.Visible       := False;
    frmProveedores.showModal  ;
end;

end.
