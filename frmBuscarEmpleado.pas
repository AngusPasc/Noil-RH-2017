unit frmBuscarEmpleado;

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
  Tfrm_BuscarEmpleado = class(TForm)
    btnSeleccionar: TButton;
    btnSalir: TButton;
    BuscaObjeto: TZReadOnlyQuery;
    ds_buscaobjeto: TDataSource;
    btnInserta: TSpeedButton;
    BuscaObjetosIdProveedor: TStringField;
    BuscaObjetosRFC: TStringField;
    BuscaObjetosCiudad: TStringField;
    BuscaObjetosTelefono: TStringField;
    BuscaObjetosNombreCompleto: TStringField;
    BuscaObjetosApellidoPaterno: TStringField;
    BuscaObjetosApellidoMaterno: TStringField;
    BuscaObjetosCP: TStringField;
    strngfldBuscaObjetosStatusPersonal: TStringField;
    strngfldBuscaObjetosDomicilio: TStringField;
    strngfldBuscaObjetoDomicilio: TStringField;
    GridClientes: TcxGrid;
    GridClientesDBTableView1: TcxGridDBTableView;
    GridClientesDBTableView1Column1: TcxGridDBColumn;
    GridClientesDBTableView1Column2: TcxGridDBColumn;
    GridClientesDBTableView1Column3: TcxGridDBColumn;
    GridClientesDBTableView1Column4: TcxGridDBColumn;
    GridClientesDBTableView1Column5: TcxGridDBColumn;
    GridClientesDBTableView1Column6: TcxGridDBColumn;
    GridClientesDBTableView1Column7: TcxGridDBColumn;
    GridClientesDBTableView1Column8: TcxGridDBColumn;
    GridClientesLevel1: TcxGridLevel;
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
  frm_BuscarEmpleado: Tfrm_BuscarEmpleado;
  //utgrid:ticdbgrid;
implementation

uses frmNuevoProveedor, frmEmpleados;


{$R *.dfm}

procedure Tfrm_BuscarEmpleado.btnSeleccionarClick(Sender: TObject);
begin
   sIdProveedorBusqueda := BuscaObjeto.FieldByName('sIdEmpleado').AsString ;
   sParamDomicilioProv := BuscaObjeto.FieldByName('Domicilio').AsString;
   sParamEstadoProv := BuscaObjeto.FieldByName('sStatusPersonal').AsString;
   sParamTelfProv := BuscaObjeto.FieldByName('sTelefono').AsString;
   sParamCPProv := BuscaObjeto.FieldByName('sCP').AsString;
   close
end;

procedure Tfrm_BuscarEmpleado.btnSalirClick(Sender: TObject);
begin
   close
end;

procedure Tfrm_BuscarEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //utgrid.Destroy;
end;

procedure Tfrm_BuscarEmpleado.FormShow(Sender: TObject);
begin
    //UtGrid:=TicdbGrid.create(GridClientes);
    //tsBuscar.Text := '' ;
    BuscaObjeto.Active := False ;
    BuscaObjeto.Sql.Clear ;
//    BuscaObjeto.Sql.Add('select *, concat(sCalle, " ", sNumero, " ", sColonia, " ", sLocalidad, " ", sEstado) as Domicilio from empleados where sNombreCompleto Like :Parametro ' +
//                        'Order By sNombreCompleto') ;
    BuscaObjeto.Sql.Add('select *, concat(sCalle, " ", sNumero, " ", sColonia, " ", sLocalidad, " ", sEstado) as Domicilio from empleados ' +
                        'Order By sNombreCompleto') ;
    //BuscaObjeto.Params.ParamByName('Parametro').Value := '%%';
    BuscaObjeto.Open ;
    //cbBusqueda.ItemIndex := 0 ;

    //tsBuscar.SetFocus
end;

procedure Tfrm_BuscarEmpleado.GridClientesDblClick(Sender: TObject);
begin
    btnSeleccionar.Click
end;

procedure Tfrm_BuscarEmpleado.btnInsertaClick(Sender: TObject);
var
    sParametro : String ;
begin
     Application.CreateForm(Tfrm_Empleados, frm_Empleados);
    frm_Empleados.ShowModal ;
end;

end.
