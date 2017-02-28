unit frm_small_connection;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportMail, frxExportCSV, frxExportText,
  frxExportImage, frxExportPDF, frxExportXML, frxExportRTF, frxExportXLS,
  frxExportHTML, frxClass, frxExportTXT, frxDBSet, ImgList, Menus,
  StdActns, ActnList, Controls, fqbClass, fqbADOEngine;
type
  Tconnection = class(TDataModule)
    ds_contratos: TDataSource;
    connection_inteligent: TADOConnection;
    buscar: TADOQuery;
    ds_usuarios: TDataSource;
    usuarios: TADOQuery;
    command: TADOCommand;
    ds_buscar: TDataSource;
    deptos: TADOQuery;
    ds_deptos: TDataSource;
    buscar2: TADOQuery;
    ds_buscar2: TDataSource;
    configuracion: TADOQuery;
    ds_setup: TDataSource;
    contratos: TADOQuery;
    Embarcaciones: TADOQuery;
    ds_embarcaciones: TDataSource;
    ds_tiposdeembarcacion: TDataSource;
    TiposdeEmbarcacion: TADOQuery;
    ds_plataformas: TDataSource;
    Plataformas: TADOQuery;
    Tripulacion: TADOQuery;
    ds_tripulacion: TDataSource;
    Categorias: TADOQuery;
    ds_categorias: TDataSource;
    ds_subcuentas: TDataSource;
    subcuentas: TADOQuery;
    cuentas: TADOQuery;
    ds_cuentas: TDataSource;
    TiposdeOrden: TADOQuery;
    ds_tiposdeorden: TDataSource;
    ds_estatus: TDataSource;
    Estatus: TADOQuery;
    pernoctan: TADOQuery;
    ds_pernoctan: TDataSource;
    ds_CostodeEmbarcacion: TDataSource;
    CostodeEmbarcacion: TADOQuery;
    TiposdeMovimiento: TADOQuery;
    ds_tiposdemovimiento: TDataSource;
    FasesxOrden: TADOQuery;
    ds_fasesxorden: TDataSource;
    Proveedores: TADOQuery;
    ds_proveedores: TDataSource;
    TiposdePermiso: TADOQuery;
    ds_tiposdepermiso: TDataSource;
    ds_subactividadesxorden: TDataSource;
    SubactividadesxOrden: TADOQuery;
    BuscaReadOnly: TADOQuery;
    BuscaReadOnly2: TADOQuery;
    Contrato: TADOQuery;
    rpt_contrato: TfrxDBDataset;
    rpt_setup: TfrxDBDataset;
    frxTXTExport1: TfrxTXTExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    TiposdeEstimacion: TADOQuery;
    ds_TiposdeEstimacion: TDataSource;
    FasesxProyecto: TADOQuery;
    ds_fasesxproyecto: TDataSource;
    TiposdeConvenio: TADOQuery;
    ds_tiposdeconvenio: TDataSource;
    Residencias: TADOQuery;
    ds_residencias: TDataSource;
    UsuariosxPrograma: TADOQuery;
    GruposxPrograma: TADOQuery;
    EstimacionPeriodo: TADOQuery;
    EstimacionPeriodosContrato: TStringField;
    EstimacionPeriodoiNumeroEstimacion: TStringField;
    EstimacionPeriodosIdTipoEstimacion: TStringField;
    EstimacionPeriododFechaInicio: TDateField;
    EstimacionPeriododFechaFinal: TDateField;
    EstimacionPeriodosMoneda: TStringField;
    EstimacionPeriodolEstimado: TStringField;
    EstimacionPeriododRetencion: TBCDField;
    ds_estimacionperiodo: TDataSource;
    ImageList1: TImageList;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditUndo1: TEditUndo;
    ContratosxUsuario: TADOQuery;
    ds_ContratosxUsuario: TDataSource;
    ds_fases: TDataSource;
    fases: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  connection: Tconnection;

implementation

{$R *.dfm}

end.




