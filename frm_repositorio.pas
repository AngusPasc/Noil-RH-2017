unit frm_repositorio;

interface

uses
  SysUtils, Classes, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ImgList, Controls;

type
  Tfrmrepositorio = class(TDataModule)
    IconosTodos48: TcxImageList;
    IconosTodos24: TcxImageList;
    IconosBarra: TcxImageList;
    repositorio1: TcxGridViewRepository;
    BViewRHEstados: TcxGridDBBandedTableView;
    Nombre: TcxGridDBBandedColumn;
    BViewCompanias: TcxGridDBBandedTableView;
    BViewCompaniassIdCompania1: TcxGridDBBandedColumn;
    BViewCompaniassRazonSocial1: TcxGridDBBandedColumn;
    ds_Estados: TDataSource;
    ZQ_Estados: TZQuery;
    ZQ_Estadosid_Estados: TIntegerField;
    ZQ_EstadossClaveEstado: TStringField;
    ZQ_EstadossNombre: TStringField;
    dsCompanias: TDataSource;
    qryCompanias: TZQuery;
    qryCompaniassIdCompania: TStringField;
    qryCompaniassRFC: TStringField;
    qryCompaniassRazonSocial: TStringField;
    qryCompaniassDomicilio: TStringField;
    qryCompaniassCiudad: TStringField;
    qryCompaniassCP: TStringField;
    qryCompaniassEstado: TStringField;
    qryCompaniassTelefono: TStringField;
    qryCompaniasdMontoCredito: TFloatField;
    qryCompaniaslStatus: TStringField;
    qryCompaniassNumeroProveedor: TStringField;
    dsZQInsumos: TDataSource;
    BView_Medidas: TcxGridDBBandedTableView;
    BView_MedidasColumn1: TcxGridDBBandedColumn;
    BView_MedidasColumn2: TcxGridDBBandedColumn;
    ZQInsumos: TZQuery;
    IconosNav: TcxImageList;
    ZQPrecioDivisas: TZQuery;
    dsZQPrecioDivisas: TDataSource;
    BView_PrecioDivisas: TcxGridDBBandedTableView;
    BView_PrecioDivisasColumn1: TcxGridDBBandedColumn;
    BView_PrecioDivisasColumn2: TcxGridDBBandedColumn;
    BView_PrecioDivisasColumn3: TcxGridDBBandedColumn;
    IconosTodos16: TcxImageList;
    IconosTodos32: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrepositorio: Tfrmrepositorio;

implementation

{$R *.dfm}

end.
