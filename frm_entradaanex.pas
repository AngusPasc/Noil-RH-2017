unit frm_entradaanex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl,  RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ZAbstractRODataset, ZDataset,
  Newpanel, rxCurrEdit, rxToolEdit, unitexcepciones, udbgrid,
  unittbotonespermisos, UnitValidaTexto, UFunctionsGHH, UnitValidacion,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridCustomView, cxGrid, ZAbstractDataset, cxButtons, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,masUtilerias, FormAutoScaler;
  function IsDate(ADate: string): Boolean;
type

    Tfrmentradaanex = class(TForm)
    frmBarra2: TfrmBarra;
    anexo_psuministro: TZReadOnlyQuery;
    anexo_psuministrosNumeroActividad: TStringField;
    anexo_psuministrodCantidad: TFloatField;
    anexo_psuministroiItemOrden: TStringField;
    anexo_psuministromDescripcion: TMemoField;
    anexo_psuministrosMedida: TStringField;
    anexo_psuministrodCantidadAnexo: TFloatField;
    anexo_psuministrodVentaMN: TFloatField;
    anexo_psuministrodMontoMN: TCurrencyField;
    anexo_psuministrodMontoDLL: TCurrencyField;
    anexo_psuministrodVentaDLL: TFloatField;
    ds_anexo_psuministro: TDataSource;
    ds_anexo_suministro: TDataSource;
    anexo_suministro: TZReadOnlyQuery;
    ds_MovimientosdeAlmacen: TDataSource;
    MovimientosdeAlmacen: TZReadOnlyQuery;
    Proveedores: TZReadOnlyQuery;
    ds_proveedores: TDataSource;
    QrySuministro: TZReadOnlyQuery;
    MaxFolio: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    ds_Historico: TDataSource;
    Historico: TZReadOnlyQuery;
    frxDBReporte: TfrxDBDataset;
    Reporte: TZReadOnlyQuery;
    ReportedCantidad: TFloatField;
    ReportesContrato: TStringField;
    ReporteiFolio: TIntegerField;
    ReportesNumeroOrden: TStringField;
    ReportedIdFecha: TDateField;
    ReportedFechaAviso: TDateField;
    ReportesIdTipo: TStringField;
    ReportesReferencia: TStringField;
    ReportesIdProveedor: TStringField;
    ReportesOrigen: TStringField;
    ReportemComentarios: TMemoField;
    ReportesNumeroActividad: TStringField;
    ReportemDescripcion: TMemoField;
    ReportesMedida: TStringField;
    ReportedCantidadAnexo: TFloatField;
    ReportedVentaMN: TFloatField;
    ReportedVentaDLL: TFloatField;
    ReportedAcumulado: TFloatField;
    PgControl: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label10: TLabel;
    PaintBox1: TPaintBox;
    tmComentarios: TMemo;
    tsIdTipo: TRxDBLookupCombo;
    tiFolio: TCurrencyEdit;
    tdIdFecha: TDateTimePicker;
    tsReferencia: TEdit;
    tsOrigen: TEdit;
    tsIdProveedor: TRxDBLookupCombo;
    tdFechaAviso: TDateTimePicker;
    tsNumeroOrden: TComboBox;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    tsPlataforma: TLabel;
    imgNotas: TImage;
    tsNumeroActividad: TEdit;
    tmDescripcion: TMemo;
    frmBarra1: TfrmBarra;
    tsMedida: TEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    tdSuministro: TCurrencyEdit;
    tdCantidadAnexo: TCurrencyEdit;
    GridPartidas: TRxDBGrid;
    tdCantidad: TRxCalcEdit;
    PanelHistorico: tNewGroupBox;
    Grid_Historico: TRxDBGrid;
    frxEntrada: TfrxReport;
    Grid_Entradas: TcxGrid;
    Grid_EntradasView: TcxGridDBTableView;
    Grid_EntradasViewColumn1: TcxGridDBColumn;
    Grid_EntradasViewColumn2: TcxGridDBColumn;
    Grid_EntradasViewColumn3: TcxGridDBColumn;
    Grid_EntradasViewColumn4: TcxGridDBColumn;
    Grid_EntradasViewColumn5: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    Grid_EntradasViewColumn6: TcxGridDBColumn;
    Grid_EntradasViewColumn7: TcxGridDBColumn;
    zq_InsxPar: TZQuery;
    frxDBInsumos: TfrxDBDataset;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zq_ParIns: TZQuery;
    ds_InsxPar: TDataSource;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnDelete: TcxButton;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    ds_ParIns: TDataSource;
    edCtd: TcxCalcEdit;
    Label12: TLabel;
    anexo_psuministrosWbs: TStringField;
    btnAdd: TcxButton;
    btnCancel: TcxButton;
    PopupMenu1: TPopupMenu;
    CargarMateriales1: TMenuItem;
    zq_ParInsiId: TIntegerField;
    zq_ParInssContrato: TStringField;
    zq_ParInsiFolioSuministro: TIntegerField;
    zq_ParInssWbs: TStringField;
    zq_ParInssNumeroActividad: TStringField;
    zq_ParInssNumeroOrden: TStringField;
    zq_ParInsdFecha: TDateField;
    zq_ParInssIdInsumo: TStringField;
    zq_ParInsmDescripcion: TMemoField;
    zq_ParInssMedida: TStringField;
    zq_ParInsdCantidad: TFloatField;
    ReportesWbs: TStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
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
    btn3: TButton;
    btn1: TButton;
    frmtsclr1: TFormAutoScaler;
    function lExisteActividad ( sActividad : String ) : Boolean ;
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure anexo_suministroAfterScroll(DataSet: TDataSet);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdFechaAvisoKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaAvisoEnter(Sender: TObject);
    procedure tdFechaAvisoExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsIdTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoEnter(Sender: TObject);
    procedure tsIdTipoExit(Sender: TObject);
    procedure tsReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsReferenciaEnter(Sender: TObject);
    procedure tsReferenciaExit(Sender: TObject);
    procedure tsIdProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdProveedorEnter(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure GridPartidasEnter(Sender: TObject);
    procedure GridPartidasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure KardexdelInventario1Click(Sender: TObject);
    procedure Grid_HistoricoDblClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure Grid_EntradasEnter(Sender: TObject);
    procedure Grid_EntradasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure anexo_psuministroAfterScroll(DataSet: TDataSet);
    procedure anexo_psuministroCalcFields(DataSet: TDataSet);
    procedure tsIdProveedorExit(Sender: TObject);
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure Grid_EntradasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EntradasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EntradasTitleClick(Column: TColumn);
    procedure GridPartidasTitleClick(Column: TColumn);
    procedure GridPartidasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPartidasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure tdFechaAvisoChange(Sender: TObject);
    procedure tdIdFechaChange(Sender: TObject);
    procedure tiFolioChange(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure CargarMateriales1Click(Sender: TObject);
    procedure ReporteAfterScroll(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure tiFolioEnter(Sender: TObject);
    procedure tiFolioExit(Sender: TObject);
    procedure tsOrigenEnter(Sender: TObject);
    procedure tsOrigenExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tdCantidadAnexoEnter(Sender: TObject);
    procedure tdCantidadAnexoExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tdSuministroEnter(Sender: TObject);
    procedure tdSuministroExit(Sender: TObject);
    procedure tsOrigenKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure tiFolioKeyPress(Sender: TObject; var Key: Char);
    procedure CargarFrentes;
    procedure Salir1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmentradaanex: Tfrmentradaanex;
  sDescripcion    : String ;
  txtAux          : String ;
  lNuevo, DebeMostrar          : Boolean ;
  OpcButton1      : String ;
  botonpermiso:tbotonespermisos;
  //utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  sBackup  : String ;
  sSwbs: string;
  opcion: string;

implementation

uses frm_connection , frm_comentariosxanexo, Func_Genericas,frm_TipoMovto,frm_ordenesPerf, frm_ordenes;


{$R *.dfm}

procedure Tfrmentradaanex.anexo_psuministroAfterScroll(DataSet: TDataSet);
begin
    ImgNotas.Visible := False ;
    If anexo_psuministro.RecordCount > 0 then
    Begin
        tsNumeroActividad.Text := anexo_psuministro.FieldValues['sNumeroActividad'] ;
        tmDescripcion.Text := anexo_psuministro.FieldValues['mDescripcion'] ;
        tsMedida.Text := anexo_psuministro.FieldValues['sMedida'] ;
        tdCantidadAnexo.Value := anexo_psuministro.FieldValues['dCantidadAnexo'] ;
        tdCantidad.Value := anexo_psuministro.FieldValues['dCantidad'] ;

        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 Then
            imgNotas.Visible := True ;

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
        Historico.Open ;

        // Calculo de lo Suministrado, Reportado, Generado
        QrySuministro.Active := False ;
        QrySuministro.Params.ParamByName('Contrato').DataType := ftString ;
        QrySuministro.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
        QrySuministro.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        QrySuministro.Params.ParamByName('Fecha').DataType := ftDate ;
        QrySuministro.Params.ParamByName('Fecha').Value := Anexo_Suministro.FieldValues['dFechaAviso'] ;
        QrySuministro.Open ;
        tdSuministro.Value := 0.00 ;
        If QrySuministro.RecordCount > 0 Then
            tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;

    End
    Else
    Begin

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := '' ;
        Historico.Open ;

        tsNumeroActividad.Text := '' ;
        tmDescripcion.Text := '' ;
        tsMedida.Text := '' ;
        tdCantidadAnexo.Value := 0 ;
        tdCantidad.Value := 0 ;
        tdSuministro.Value := 0.00 ;
    End
end;

function IsDate(ADate: string): Boolean;
 var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure Tfrmentradaanex.anexo_psuministroCalcFields(DataSet: TDataSet);
begin
  anexo_psuministrodMontoMN.Value := anexo_psuministrodCantidad.Value * Anexo_pSuministrodVentaMN.Value ;
  Anexo_pSuministrodMontoDLL.Value := Anexo_pSuministrodCantidad.Value * Anexo_pSuministrodVentaDLL.Value ;
end;

procedure Tfrmentradaanex.anexo_suministroAfterScroll(DataSet: TDataSet);
begin
    If Self.Visible and (frmbarra2.btnCancel.Enabled = False) then
      frmBarra2.btnCancel.Click ;

    If anexo_suministro.RecordCount > 0 Then
    Begin
       tiFolio.Value           := anexo_suministro.FieldValues['iFolio'] ;
       tdIdFecha.Date          := anexo_suministro.FieldValues['dIdFecha'] ;
       tdFechaAviso.Date       := anexo_suministro.FieldValues['dFechaAviso'] ;
       tsIdTipo.KeyValue       := anexo_suministro.FieldValues['sIdTipo'] ;
       tsIdProveedor.KeyValue  := anexo_suministro.FieldValues['sIdProveedor'] ;
       tsReferencia.Text       := anexo_suministro.FieldValues['sReferencia'] ;
       tsOrigen.Text           := anexo_suministro.FieldValues['sOrigen'] ;
       tsNumeroOrden.ItemIndex := tsNumeroOrden.Items.IndexOf(anexo_suministro.FieldByName('sNumeroOrden').AsString);
       tmComentarios.Text      := anexo_suministro.FieldValues['mComentarios'] ;

       anexo_psuministro.Active := False ;
       anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Contrato').Value    := global_contrato ;
       anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Convenio').Value    := global_convenio ;
       anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Ordenado').Value    := 'sNumeroActividad' ;
       anexo_psuministro.Params.ParamByName('Folio').DataType    := ftInteger ;
       anexo_psuministro.Params.ParamByName('Folio').Value       := anexo_suministro.FieldValues['iFolio'] ;

       anexo_psuministro.Open ;

       If anexo_psuministro.RecordCount > 0 then
       Begin
           tsNumeroActividad.Text := anexo_psuministro.FieldValues['sNumeroActividad'] ;
           tmDescripcion.Text     := anexo_psuministro.FieldValues['mDescripcion'] ;
           tsMedida.Text          := anexo_psuministro.FieldValues['sMedida'] ;
           tdCantidadAnexo.Value  := anexo_psuministro.FieldValues['dCantidadAnexo'] ;
           tdCantidad.Value       := anexo_psuministro.FieldValues['dCantidad'] ;

           Historico.Active := False ;
           Historico.Params.ParamByName('Contrato').DataType  := ftString ;
           Historico.Params.ParamByName('Contrato').Value     := global_contrato ;
           Historico.Params.ParamByName('Actividad').DataType := ftString ;
           Historico.Params.ParamByName('Actividad').Value    := anexo_psuministro.FieldValues['sNumeroActividad'] ;
           Historico.Open ;

           Connection.qryBusca.Active := False ;
           Connection.qryBusca.SQL.Clear ;
           Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
           Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString ;
           Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato ;
           Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
           Connection.qryBusca.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text ;
           Connection.qryBusca.Open ;

           If Connection.qryBusca.RecordCount > 0 Then
               imgNotas.Visible := True ;

           // Calculo de lo Suministrado, Reportado, Generado
           QrySuministro.Active := False ;
           QrySuministro.Params.ParamByName('Contrato').DataType  := ftString ;
           QrySuministro.Params.ParamByName('Contrato').Value     := Global_Contrato ;
           QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
           QrySuministro.Params.ParamByName('Actividad').Value    := tsNumeroActividad.Text ;
           QrySuministro.Params.ParamByName('Fecha').DataType     := ftDate ;
           QrySuministro.Params.ParamByName('Fecha').Value        := Anexo_Suministro.FieldValues['dFechaAviso'] ;
           QrySuministro.Open ;

           tdSuministro.Value := 0.00 ;
           If QrySuministro.RecordCount > 0 Then
               tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;
       End
       Else
       Begin
           tsNumeroActividad.Text := '' ;
           tmDescripcion.Text := '' ;
           tsMedida.Text := '' ;
           tdCantidadAnexo.Value := 0 ;
           tdCantidad.Value := 0 ;
           tdSuministro.Value := 0.00 ;
       End
    End
    Else
    Begin
       tiFolio.Value := 0 ;
       tdIdFecha.Date := Date ;
       tdFechaAviso.Date := Date ;
       tsReferencia.Text := '' ;
       tsOrigen.Text := '' ;
       tmComentarios.Text := '' ;
       tdCantidad.Value := 0 ;
       tsNumeroOrden.Text := '' ;

       Historico.Active := False ;
       Historico.Params.ParamByName('Contrato').DataType := ftString ;
       Historico.Params.ParamByName('Contrato').Value := global_contrato ;
       Historico.Params.ParamByName('Actividad').DataType := ftString ;
       Historico.Params.ParamByName('Actividad').Value := '' ;
       Historico.Open ;

       anexo_psuministro.Active := False ;
       anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Contrato').Value := global_contrato ;
       anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Convenio').Value := global_convenio ;
       anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
       anexo_psuministro.Params.ParamByName('Ordenado').Value := 'sNumeroActividad' ;
       anexo_psuministro.Params.ParamByName('Folio').DataType := ftInteger ;
       anexo_psuministro.Params.ParamByName('Folio').Value := 0 ;
       
       anexo_psuministro.Open ;
    End
end;

procedure Tfrmentradaanex.btn1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmMovtos , frmMovtos);
   frmMovtos.Show;
end;

procedure Tfrmentradaanex.btn3Click(Sender: TObject);
begin
if Connection.configuracion.FieldValues['sCampPerf'] = 'No' then
  begin
      Application.CreateForm(TfrmOrdenes, frmOrdenes);
      frmOrdenes.show;
  end
  else
  begin
      Application.CreateForm(TfrmOrdenesPerf, frmOrdenesPerf);
      frmOrdenesPerf.Show;
  end;  
end;

procedure Tfrmentradaanex.btnAddClick(Sender: TObject);
begin
  zq_ParIns.Append;
  opcion:='New';
  btnCancel.Enabled:= False; 
  btnPost.Enabled:=True;
  btnCancel.Enabled:=True;
  btnAdd.Enabled:=False;
  btnEdit.Enabled:=False;
  edCtd.Enabled:=True;
end;

procedure Tfrmentradaanex.btnCancelClick(Sender: TObject);
begin
  btnPost.Enabled:=False;
  btnCancel.Enabled:=False;
  btnAdd.Enabled:=True;
  btnEdit.Enabled:=True;
  zq_ParIns.Cancel;
  edCtd.Enabled:=False;
end;

procedure Tfrmentradaanex.btnDeleteClick(Sender: TObject);
begin
  if zq_ParIns.RecordCount > 0 then
  begin  
    if MSG_YN('¿Desea Eliminar el Registro?') then
    begin
      zq_ParIns.Delete;
      zq_ParIns.Refresh;
      zq_InsxPar.Refresh;
    end;
  end;
end;

procedure Tfrmentradaanex.btnEditClick(Sender: TObject);
begin
  zq_ParIns.Edit;
  opcion:='Edit';
  btnPost.Enabled:=True;
  btnAdd.Enabled:=False;
  btnCancel.Enabled:=True;
  btnEdit.Enabled:=False;
  edCtd.Enabled:=True;
end;

procedure Tfrmentradaanex.btnPostClick(Sender: TObject);
begin
  try
    if (edCtd.Text <> '') and (edCtd.Value > 0)  then
    begin
      if edCtd.Value > zq_InsxPar.FieldByName('dCantidad').AsFloat then
      begin
        if not MSG_YN('El valor de la cantidad es mayor a la programada, Desea continuar?') then
          Exit;
      end;
        if opcion='New' then
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('SELECT iId FROM alm_suministroinsumos  where sContrato=:Contrato and sNumeroActividad=:Actividad and sNumeroOrden=:NumOrd and sIdInsumo=:Insumo');
          connection.QryBusca.ParamByName('Contrato').AsString:=global_contrato;
          connection.QryBusca.ParamByName('Actividad').AsString:=anexo_psuministro.FieldByName('sNumeroActividad').AsString;
          connection.QryBusca.ParamByName('NumOrd').AsString:=anexo_suministro.FieldByName('sNumeroOrden').AsString;
          connection.QryBusca.ParamByName('Insumo').AsString:=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount>0 then
          begin
            MessageDlg('Ya se cargó el material seleccionado.', mtInformation, [mbOK], 0);
            btnCancel.Click;
            Exit;
          end;

          zq_ParIns.FieldByName('sContrato').AsString         :=global_contrato;
          zq_ParIns.FieldByName('iFolioSuministro').AsInteger :=anexo_suministro.FieldByName('iFolio').AsInteger;
          zq_ParIns.FieldByName('sWbs').AsString              :=anexo_psuministro.FieldByName('sWbs').AsString;
          zq_ParIns.FieldByName('sNumeroActividad').AsString  :=anexo_psuministro.FieldByName('sNumeroActividad').AsString;
          zq_ParIns.FieldByName('sNumeroOrden').AsString      :=anexo_suministro.FieldByName('sNumeroOrden').AsString;
          zq_ParIns.FieldByName('dFecha').AsDateTime          :=Date;
          zq_ParIns.FieldByName('sIdInsumo').AsString         :=zq_InsxPar.FieldByName('sIdInsumo').AsString;
          zq_ParIns.FieldByName('mDescripcion').AsString      :=zq_InsxPar.FieldByName('mDescripcion').AsString;
          zq_ParIns.FieldByName('sMedida').AsString           :=zq_InsxPar.FieldByName('sMedida').AsString;
          zq_ParIns.FieldByName('dCantidad').AsFloat          :=edCtd.Value;
          zq_ParIns.Post;
        end
        else
        begin
          zq_ParIns.FieldByName('dCantidad').AsFloat:=edCtd.Value;
          zq_ParIns.Post;
        end;
        zq_ParIns.Refresh;
        zq_InsxPar.Refresh;
        btnPost.Enabled:=False;
        btnCancel.Enabled:=False;
        btnAdd.Enabled:=True;
        btnEdit.Enabled:=True;
        edCtd.Enabled:=False;

    end
    else
      MSG_W('Coloque un valor en Cantidad por favor');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al guardar el registro', 0);
    end;
  end;
end;

//938 2864281

procedure Tfrmentradaanex.Can1Click(Sender: TObject);
begin
    frmBarra2.btnCancel.Click
end;

procedure Tfrmentradaanex.CargarMateriales1Click(Sender: TObject);
begin
  zq_InsxPar.Active := False;
  zq_InsxPar.ParamByName('Contrato').AsString := global_contrato;
  zq_InsxPar.ParamByName('actividad').AsString := anexo_psuministro.FieldByName('sNumeroActividad').AsString;
  zq_InsxPar.Open;

  zq_ParIns.Active := False;
  zq_ParIns.ParamByName('Contrato').AsString := global_contrato;
  zq_ParIns.ParamByName('Folio').AsInteger := anexo_suministro.FieldByName('iFolio').AsInteger;
  zq_ParIns.ParamByName('Wbs').AsString := anexo_psuministro.FieldByName('sWbs').AsString;
  zq_ParIns.ParamByName('Actividad').AsString := anexo_psuministro.FieldByName('sNumeroActividad').AsString;
  zq_ParIns.ParamByName('NumOrd').AsString := anexo_suministro.FieldByName('sNumeroOrden').AsString;
  zq_ParIns.Open;

  btnPost.Enabled:=False;
  btnAdd.Enabled:=True;
  btnCancel.Enabled:=False;
  btnEdit.Enabled:=True;
  edCtd.Value:=0.0;

  Crear_Form(Panel1, 'Materiales por Partida', 580, 855, [biSystemMenu]);  
end;

procedure Tfrmentradaanex.ComentariosAdicionalesClick(Sender: TObject);
begin
    global_partida := tsNumeroActividad.Text ;
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.Show ;
end;

procedure Tfrmentradaanex.Copiar1Click(Sender: TObject);
begin
  ModificarPortaPapeles(self.ActiveControl, ftcopiar);
end;

procedure Tfrmentradaanex.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure Tfrmentradaanex.Editar1Click(Sender: TObject);
begin
    frmBarra2.btnEdit.Click
end;

procedure Tfrmentradaanex.Eliminar1Click(Sender: TObject);
begin
    frmBarra2.btnDelete.Click
end;

procedure Tfrmentradaanex.FormActivate(Sender: TObject);
begin
    MovimientosdeAlmacen.Active := False ;
    MovimientosdeAlmacen.Open ;
    Proveedores.Active := False ;
    Proveedores.Open ;
end;

procedure Tfrmentradaanex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  botonpermiso.free;
end;

procedure Tfrmentradaanex.FormShow(Sender: TObject);
begin
    sMenuP:=stMenu;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opAvisodeEmb',PopupPrincipal);

    Label10.Caption := '';
    tdIdFecha.Enabled := False ;
    tdFechaAviso.Enabled := False ;
    tsNumeroOrden.Enabled := False ;
    tsIdTipo.ReadOnly := True ;
    tsIdProveedor.ReadOnly := True ;
    tsReferencia.ReadOnly := True ;
    tsOrigen.ReadOnly := True ;
    tmComentarios.ReadOnly := True ;
    tsNumeroActividad.ReadOnly := True ;
    tdCantidad.ReadOnly := True ;

    MovimientosdeAlmacen.Active := False ;
    MovimientosdeAlmacen.Open ;

    Proveedores.Active := False ;
    Proveedores.Open ;

    CargarFrentes;

    anexo_suministro.Active := False ;
    anexo_suministro.Params.ParamByName('Contrato').DataType := ftString ;
    anexo_suministro.Params.ParamByName('Contrato').Value    := global_contrato ;
    anexo_suministro.Params.ParamByName('Ordenado').DataType := ftString ;
    anexo_suministro.Params.ParamByName('Ordenado').Value    := 'iFolio' ;
    anexo_suministro.Open ;

    anexo_psuministro.Active := False ;
    anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
    anexo_psuministro.Params.ParamByName('Contrato').Value    := global_contrato ;
    anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
    anexo_psuministro.Params.ParamByName('Convenio').Value    := global_convenio ;
    anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
    anexo_psuministro.Params.ParamByName('Ordenado').Value    := 'iItemOrden' ;
    anexo_psuministro.Params.ParamByName('Folio').DataType    := ftInteger ;

    If anexo_suministro.RecordCount > 0 Then
        anexo_psuministro.Params.ParamByName('Folio').Value := anexo_suministro.FieldValues['iFolio']
    Else
        anexo_psuministro.Params.ParamByName('Folio').Value := 0 ;
    anexo_psuministro.Open ;

    Grid_Entradas.SetFocus;

    frmBarra2.btnAdd.Enabled := true;
    frmBarra2.btnAdd.Enabled := true;
    frmBarra2.btnEdit.Enabled := true;
    frmBarra2.btnDelete.Enabled := true;
    frmBarra2.btnPrinter.Enabled := true;
    BloquearItemsPopup(PopupPrincipal, False );
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
end;

procedure Tfrmentradaanex.frmBarra1btnAddClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
     lValido := True ;
    If global_grupo <> 'INTEL-CODE' Then
    Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
        ReporteDiario.Open ;
        If ReporteDiario.RecordCount > 0 then
             While NOT ReporteDiario.Eof And lValido Do
             Begin
                 If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 Begin
                     MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                     lValido := False ;
                 End ;
                 ReporteDiario.Next
             end
    End ;

    If lValido Then
        If (anexo_suministro.RecordCount > 0) Then
        Begin
            Insertar1.Enabled := False ;
            Editar1.Enabled := False ;
            Registrar1.Enabled := True ;
            Can1.Enabled := True ;
            Eliminar1.Enabled := False ;
            Refresh1.Enabled := False ;
            frmBarra1.btnAddClick(Sender);
            tsNumeroActividad.ReadOnly := False ;
            tdCantidad.ReadOnly := False ;
            tsNumeroActividad.Text := '' ;
            tmDescripcion.Text := '' ;
            tsMedida.Text := '' ;
            tdCantidadAnexo.Value := 0 ;
            tdCantidad.Value := 0 ;
            tsNumeroActividad.SetFocus ;
        End;
    BotonPermiso.permisosBotones(frmBarra1);
end;

procedure Tfrmentradaanex.frmBarra1btnCancelClick(Sender: TObject);
begin
   Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  tsNumeroActividad.ReadOnly := True ;
  tdCantidad.ReadOnly := True ;
  tdCantidad.Enabled := True;
  if GridPartidas.CanFocus then
    GridPartidas.SetFocus;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure Tfrmentradaanex.frmBarra1btnDeleteClick(Sender: TObject);
Var
    SavePlace : TBookmark;
    lValido : Boolean ;
    Respuesta: Word;
begin
     lValido := True ;
    If global_grupo <> 'INTEL-CODE' Then
    Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
        ReporteDiario.Open ;
        If ReporteDiario.RecordCount > 0 then
             While NOT ReporteDiario.Eof And lValido Do
             Begin
                 If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 Begin
                     MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                     lValido := False ;
                 End ;
                 ReporteDiario.Next
             end
    End ;

    If lValido Then
        If anexo_psuministro.RecordCount > 0 Then
        Begin
              try

                    Connection.qryBusca2.Active := False ;
                    Connection.QryBusca2.SQL.Clear ;
                    Connection.QryBusca2.SQL.Add('Select sReferenciaDetalle, sFolioDetalle From bitacoradealcances ' +
                                                  'Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').Value     := Global_Contrato ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').Value    := anexo_psuministro.FieldValues['sNumeroActividad'] ;
                    Connection.QryBusca2.Open ;
                    If Connection.QryBusca2.RecordCount > 0 Then
                       begin
                            MessageDlg('No se Puede Borrar el Aviso Embarque. Existen Suministros de Partidas Reportadas', mtError, [mbOk], 0);
                            exit ;
                       end;

                  Connection.qryBusca2.Active := False ;
                  Connection.QryBusca2.SQL.Clear ;
                  Connection.QryBusca2.SQL.Add('select a1.* from anexo_psuministro a1 inner join anexo_suministro a2 on (a1.sContrato=a2.sContrato and a1.iFolio=a2.iFolio) '+
                                              'inner join alm_suministroinsumos si on (a1.sNumeroActividad=si.sNumeroActividad and a1.sWbs=si.sWbs and a1.sContrato=si.sContrato) '+
                                              'where a1.sContrato=:Contrato and a1.sNumeroActividad=:Actividad and a1.sWbs=:Wbs') ;
                  Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
                  Connection.QryBusca2.Params.ParamByName('Contrato').Value     := Global_Contrato ;
                  Connection.QryBusca2.Params.ParamByName('Actividad').DataType  := ftString ;
                  Connection.QryBusca2.Params.ParamByName('Actividad').Value     := anexo_psuministro.FieldValues['sNumeroActividad'];
                  Connection.QryBusca2.Params.ParamByName('Wbs').DataType  := ftString ;
                  Connection.QryBusca2.Params.ParamByName('Wbs').Value     := anexo_psuministro.FieldValues['sWbs'];
                  Connection.QryBusca2.Open ;

                  If Connection.QryBusca2.RecordCount > 0 Then  //error-030
                  Respuesta := MessageDlg('En esta Partida Existen Materiales Cargados "Realmente Desea Eliminarla"', mtConfirmation, [mbYes , mbNo], 0);
                  if Respuesta = mrNo then
                  begin
                    exit ;
                  end
                  else
                     //hijo
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zCommand.SQL.Add ('Delete from alm_suministroinsumos where sContrato = :Contrato And ' +
                                               'iFolioSuministro = :Folio And sNumeroActividad = :Actividad') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger ;
                  connection.zcommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
                  connection.zcommand.Params.ParamByName('Actividad').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Actividad').value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
                  connection.zCommand.ExecSQL  ;

                    //padre
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zCommand.SQL.Add ('Delete from anexo_psuministro where sContrato = :Contrato And ' +
                                               'iFolio = :Folio And sNumeroActividad = :Actividad') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger ;
                  connection.zcommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
                  connection.zcommand.Params.ParamByName('Actividad').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Actividad').value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
                  connection.zCommand.ExecSQL  ;

                  //SavePlace := anexo_psuministro.GetBookmark ;
                  anexo_psuministro.Active := False ;
                  anexo_psuministro.Open ;
                  try
                      anexo_psuministro.GotoBookmark(SavePlace);
                  Except
                  Else
                      anexo_psuministro.FreeBookmark(SavePlace);
                  end ;
                  GridPartidas.SetFocus
              Except
                   on e : exception do
                   begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al eliminar registro', 0);
                   end;

              End
        End
end;

procedure Tfrmentradaanex.frmBarra1btnEditClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
    lValido := True ;
    If global_grupo <> 'INTEL-CODE' Then
    Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
        ReporteDiario.Open ;
        If ReporteDiario.RecordCount > 0 then
           While NOT ReporteDiario.Eof And lValido Do
           Begin
               If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
               Begin
                   MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                   lValido := False ;
               End ;
               ReporteDiario.Next
           end
    End ;

    If lValido Then
        If anexo_suministro.RecordCount > 0 Then
        Begin
            // Verificar si ya se ha reportado un consumo de esta partida en específico
            Connection.qryBusca.Active := False;
            Connection.qryBusca.Sql.Text := 'select a.snumeroorden, a.sCantidadDetalle, a.sFolioDetalle, a.sReferenciaDetalle ' +
                                            'from bitacoradealcances a where a.scontrato = :contrato and a.snumeroactividad = :Actividad and ' +
                                            'concat(CHAR(254), a.sReferenciaDetalle, char(254)) like concat("%", Char(254), :referencia, Char(254), "%") limit 1';
            Connection.qryBusca.ParamByName('contrato').AsString := global_contrato;
            Connection.qryBusca.ParamByName('actividad').AsString := anexo_psuministro.FieldByName('sNumeroActividad').AsString;
            Connection.qryBusca.ParamByName('referencia').AsString := anexo_suministro.FieldByName('sReferencia').AsString;
            Connection.qryBusca.Open;
            if Connection.QryBusca.RecordCount = 1 then
            begin
              tdCantidad.Enabled := False;
            end
            else
              tdCantidad.Enabled := True;
            Connection.qryBusca.Close;

            Insertar1.Enabled := False ;
            Editar1.Enabled := False ;
            Registrar1.Enabled := True ;
            Can1.Enabled := True ;
            Eliminar1.Enabled := False ;
            Refresh1.Enabled := False;
            frmBarra1.btnEditClick(Sender);
            tsNumeroActividad.ReadOnly := False ;
            tdCantidad.ReadOnly := False ;
            tsNumeroActividad.SetFocus ;
        End;
    BotonPermiso.permisosBotones(frmBarra1);
end;

procedure Tfrmentradaanex.frmBarra1btnPostClick(Sender: TObject);
Var
  SavePlace : TBookmark;
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Concepto');nombres.Add('Medida');nombres.Add('Volumen Anexo');
  cadenas.Add(tsNumeroActividad.Text);cadenas.Add(tsMedida.Text);cadenas.Add(tdCantidadAnexo.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}

  If tsNumeroActividad.Text <> '' then
    If Not lExisteActividad ( tsNumeroActividad.Text ) then
        tsNumeroActividad.SetFocus
    Else
    Begin
        try
            If OpcButton = 'New' then
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'INSERT INTO anexo_psuministro ( sContrato, iFolio,swbs, sNumeroActividad, dCantidad ) ' +
                                              'VALUES (:Contrato, :Folio,:swbs, :Actividad, :Cantidad )') ;
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger ;
                connection.zCommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
                connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Actividad').value := tsNumeroActividad.Text ;
                connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value ;
                connection.zCommand.Params.ParamByName('swbs').AsString:=sSwbs;
                connection.zCommand.ExecSQL ;
            End
            Else
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'UPDATE anexo_psuministro SET sNumeroActividad = :Actividad, dCantidad = :Cantidad, swbs=:swbs ' +
                                              'WHERE sContrato = :Contrato And iFolio = :Folio And sNumeroActividad = :OldActividad') ;
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger ;
                connection.zCommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
                connection.zCommand.Params.ParamByName('OldActividad').DataType := ftString ;
                connection.zCommand.Params.ParamByName('OldActividad').value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
                connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Actividad').value := tsNumeroActividad.Text ;
                connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value ;
                connection.zCommand.Params.ParamByName('swbs').AsString:=sSwbs;
                connection.zCommand.ExecSQL ;
            End
        except
            on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al actualizar registro', 0);
            end;
        End ;
        SavePlace := anexo_psuministro.GetBookmark ;
        anexo_psuministro.Active := False ;
        
        anexo_psuministro.Open ;
        try
            anexo_psuministro.GotoBookmark(SavePlace);
        Except
        Else
            anexo_psuministro.FreeBookmark(SavePlace);
        end ;
        tsNumeroActividad.ReadOnly := True ;
        tdCantidad.ReadOnly := True ;
        tdCantidad.Enabled := True;
        Insertar1.Enabled := True ;
        Editar1.Enabled := True ;
        Registrar1.Enabled := False ;
        Can1.Enabled := False ;
        Eliminar1.Enabled := True ;
        Refresh1.Enabled := True ;
        frmBarra1.btnPostClick(Sender);
     End;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure Tfrmentradaanex.frmBarra1btnRefreshClick(Sender: TObject);
begin
    anexo_psuministro.Active := False ;
    anexo_psuministro.Open ;
end;

procedure Tfrmentradaanex.frmBarra2btnAddClick(Sender: TObject);
Var
  dFechaFinal : tDate ;
  iCheck      : Integer ;
begin
  try
    OpcButton1 := 'New' ;
    frmBarra2.btnAddClick(Sender);
    frmBarra1.btnCancel.Click ;
    pgControl.ActivePageIndex := 0 ;
    tdIdFecha.Enabled := True ;
    tdFechaAviso.Enabled := True ;
    tsIdTipo.ReadOnly := False ;
    tsIdProveedor.ReadOnly := False ;
    tsReferencia.ReadOnly := False ;
    tsOrigen.ReadOnly := False ;
    tmComentarios.ReadOnly := False ;
    tsNumeroOrden.Enabled := True ;

    tiFolio.Value := 0 ;
    tdIdFecha.Date := Date ;
    tdFechaAviso.Date := Date ;
    tsReferencia.Text := '' ;
    tsOrigen.Text := '' ;
    tmComentarios.Text := '' ;
    tdCantidad.Value := 0 ;

    MaxFolio.Active := False ;
    MaxFolio.Params.ParamByName('Contrato').DataType := ftString ;
    MaxFolio.Params.ParamByName('Contrato').Value := global_contrato ;
    MaxFolio.Open ;

    If MaxFolio.RecordCount > 0 Then
        tiFolio.Value := MaxFolio.FieldValues['iFolio'] + 1
    Else
        tiFolio.Value := 1 ;

    tsNumeroOrden.ItemIndex := 0 ;
    tdIdFecha.SetFocus;

    BloquearItemsPopup(PopupPrincipal, True );
    BotonPermiso.permisosBotones(frmBarra2);
  Except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_entradaanex', 'Al iniciar el formulario', 0);
    end;
  end;
end;

procedure Tfrmentradaanex.frmBarra2btnCancelClick(Sender: TObject);
begin
  tdIdFecha.Enabled := False ;
  tdFechaAviso.Enabled := False ;
  tsNumeroOrden.Enabled := False ;
  tsIdTipo.ReadOnly := True ;
  tsIdProveedor.ReadOnly := True ;
  tsReferencia.ReadOnly := True ;
  tsOrigen.ReadOnly := True ;
  tmComentarios.ReadOnly := True ;
  frmBarra2.btnCancelClick(Sender);
  Grid_Entradas.SetFocus ;
  DebeMostrar := False;

  BloquearItemsPopup(PopupPrincipal, False );
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure Tfrmentradaanex.frmBarra2btnDeleteClick(Sender: TObject);
Var
  lValido : Boolean ;
  SavePlace : TBookmark;
  confirmacion : Word;

    begin
      lValido := True ;
      If global_grupo <> 'INTEL-CODE' Then
      Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
        ReporteDiario.Open ;

        If ReporteDiario.RecordCount > 0 then

         While NOT ReporteDiario.Eof And lValido Do
         begin
             If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
             begin
               MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
               lValido := False ;
             end ;
             ReporteDiario.Next
         end
      End ;

      If lValido Then
        If anexo_suministro.RecordCount > 0 Then
          If MessageDlg('Desea eliminar el folio seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select * from anexo_psuministro Where sContrato =:Contrato And iFolio = :Folio ');
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value    := Global_Contrato ;
          Connection.QryBusca.Params.ParamByName('Folio').DataType    := ftInteger ;
          Connection.QryBusca.Params.ParamByName('Folio').Value       := anexo_suministro.FieldValues['iFolio'] ;
          Connection.QryBusca.Open ;

          if Connection.QryBusca.RecordCount >0 then
          Connection.QryBusca.First ;

           While NOT Connection.QryBusca.Eof Do
             begin
              Connection.qryBusca2.Active := False ;
              Connection.QryBusca2.SQL.Clear ;
              Connection.QryBusca2.SQL.Add('Select sReferenciaDetalle, sFolioDetalle From bitacoradealcances ' +
                                            'Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
              Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
              Connection.QryBusca2.Params.ParamByName('Contrato').Value     := Global_Contrato ;
              Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
              Connection.QryBusca2.Params.ParamByName('Actividad').Value    := Connection.QryBusca.FieldValues['sNumeroActividad'] ;
              Connection.QryBusca2.Open ;

               If Connection.QryBusca2.RecordCount > 0 Then
               begin
                MessageDlg('No se Puede Borrar el Aviso Embarque. Existen Suministros de Partidas Reportadas', mtError, [mbOk], 0);
                exit ;
               end;
               Connection.QryBusca.Next ;
             end ;

        Connection.qryBusca2.Active := False ;
        Connection.QryBusca2.SQL.Clear ;
        Connection.QryBusca2.SQL.Add('select s.iFolio from anexo_suministro s inner join alm_suministroinsumos si on (s.iFolio=si.iFolioSuministro and s.sContrato=si.sContrato)where s.sContrato=:Contrato and s.iFolio=:Folio') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value     := Global_Contrato ;
        Connection.QryBusca2.Params.ParamByName('Folio').DataType  := ftString ;
        Connection.QryBusca2.Params.ParamByName('Folio').Value     := anexo_suministro.FieldValues['iFolio'] ; ;
        Connection.QryBusca2.Open ;

        If Connection.QryBusca2.RecordCount > 0 Then
         confirmacion := MessageDlg('No se Puede Borrar el Aviso Embarque. Existen Materiales Cargados.¿Desea Continuar?', mtConfirmation, [mbYes , mbNo], 0);
        if confirmacion= mrNo then
        begin
          Exit;
        end
        else
        // Actualizo Kardex del Sistema ....
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.zCommand.Params.ParamByName('Fecha').Value := Date ;
        connection.zCommand.Params.ParamByName('Hora').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
        connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Descripcion').Value := 'Eliminación del Aviso de Embarque No. ' + tsReferencia.Text  + ' Recibido el día [' + DateToStr(tdFechaAviso.Date) + '] Registrado el [' + DateToStr(tdIdFecha.Date) +  '] Usuario [ ' + global_usuario + ']' ;
        connection.zCommand.Params.ParamByName('Origen').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
        connection.zCommand.ExecSQL ;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from anexo_psuministro where sContrato = :Contrato And iFolio = :Folio') ;
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').value    := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Folio').DataType    := ftInteger ;
        connection.zcommand.Params.ParamByName('Folio').value       := anexo_suministro.FieldValues['iFolio'] ;
        connection.zCommand.ExecSQL ;
        //hijo
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear;
        connection.zcommand.SQL.Add( 'Delete from alm_suministroinsumos where sContrato = :Contrato And iFoliosuministro = :Folio');
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger ;
        connection.zcommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
        connection.zCommand.ExecSQL ;

        //padre
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from anexo_suministro where sContrato = :Contrato And iFolio = :Folio') ;
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger ;
        connection.zcommand.Params.ParamByName('Folio').value := anexo_suministro.FieldValues['iFolio'] ;
        connection.zCommand.ExecSQL ;

        anexo_suministro.Active := False ;
        anexo_suministro.Open ;
      end;

    end;

procedure Tfrmentradaanex.frmBarra2btnEditClick(Sender: TObject);
Var
    lValido : Boolean ;
begin
    lValido := True ;
    If global_grupo <> 'INTEL-CODE' Then
    Begin
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
        ReporteDiario.Open ;
        If ReporteDiario.RecordCount > 0 then
             While NOT ReporteDiario.Eof And lValido Do
             Begin
                 If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                 Begin
                     MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                     lValido := False ;
                 End ;
                 ReporteDiario.Next
             end
    End ;

    If lValido Then
       If anexo_suministro.RecordCount > 0 then
       Begin
            // Verificar si ya se ha reportado un consumo de esta partida en específico
            Connection.qryBusca.Active := False;
            Connection.qryBusca.Sql.Text := 'select a.snumeroorden, a.sCantidadDetalle, a.sFolioDetalle, a.sReferenciaDetalle ' +
                                            'from bitacoradealcances a where a.scontrato = :contrato and ' +
                                            'concat(CHAR(254), a.sReferenciaDetalle, char(254)) like concat("%", Char(254), :referencia, Char(254), "%") limit 1';
            Connection.qryBusca.ParamByName('contrato').AsString := global_contrato;
            Connection.qryBusca.ParamByName('referencia').AsString := anexo_suministro.FieldByName('sReferencia').AsString;
            Connection.qryBusca.Open;
            if Connection.QryBusca.RecordCount = 1 then
            begin
              DebeMostrar := True;
              Label10.Caption := 'Campo cancelado para edición';
              tsReferencia.ReadOnly := True;
            end
            else
            begin
              DebeMostrar := False;
              Label10.Caption := '';
              tsReferencia.ReadOnly := False;
            end;
            Connection.qryBusca.Close;

            OpcButton1 := 'Edit' ;
            frmBarra2.btnEditClick(Sender);
            pgControl.ActivePageIndex := 0 ;
            tdIdFecha.Enabled := True ;
            tdFechaAviso.Enabled := True ;
            tsNumeroOrden.Enabled := True ;
            tsIdTipo.ReadOnly := False ;
            tsIdProveedor.ReadOnly := False ;
            tsOrigen.ReadOnly := False ;
            tiFolio.SetFocus
       End
       Else
            MessageDlg('Folio de Entrada Aplicada no se pueden realizar cambios', mtWarning, [mbOk], 0);
  BloquearItemsPopup(PopupPrincipal, True );
  BotonPermiso.permisosBotones(frmBarra2);
  BloquearItemsPopup(PopupPrincipal, True );
end;

procedure Tfrmentradaanex.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure Tfrmentradaanex.frmBarra2btnPostClick(Sender: TObject);
Var
  SavePlace : TBookmark;
  lValido : Boolean ;
  nombres, cadenas: TStringList;
  Posicion: Integer;
begin
  posicion:=anexo_suministro.RecNo;
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('No. de Orden');nombres.Add('Tipo Movimiento');nombres.Add('Referencia');nombres.Add('Proveedor');nombres.Add('Origen');
  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIdTipo.Text);cadenas.Add(tsReferencia.Text);cadenas.Add(tsIdProveedor.Text);cadenas.Add(tsOrigen.Text);
  if not validaTexto(nombres, cadenas, 'Folio', tiFolio.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
   //Verifica que la fecha recepcion no sea menor que la fecha de aviso
  if tdFechaAviso.Date<tdIdFecha.Date then
  begin
     showmessage('la fecha de recepción es menor a la fecha de captura' );
     tdFechaAviso.SetFocus;
     exit;
  end;
  {Continua insercion de datos}
  DebeMostrar := False;

  If OpcButton1 = 'New' then
  Begin
      lValido := True ;
      If global_grupo <> 'INTEL-CODE' Then
      Begin
          ReporteDiario.Active := False ;
          ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
          ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
          ReporteDiario.Params.ParamByName('turno').DataType := ftString ;
          ReporteDiario.Params.ParamByName('turno').Value := global_turno ;
          ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate ;
          ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date  ;
          ReporteDiario.Open ;
          If ReporteDiario.RecordCount > 0 then
               While NOT ReporteDiario.Eof And lValido Do
               Begin
                   If ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' Then
                   Begin
                       MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
                       lValido := False ;
                   End ;
                   ReporteDiario.Next
               end
      End ;

      If lValido Then
      Begin
          try
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'INSERT INTO anexo_suministro ( sContrato, iFolio, sNumeroOrden, dIdFecha, dFechaAviso, sIdTipo, sReferencia, sIdProveedor, sOrigen, mComentarios ) ' +
                                             'VALUES (:Contrato, :Folio, :Orden, :Fecha, :FechaAviso, :Tipo, :Referencia, :Proveedor, :Origen, :Comentarios )') ;
               connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
               connection.zCommand.params.ParamByName('Contrato').value := Global_Contrato ;
               connection.zCommand.params.ParamByName('Folio').DataType := ftInteger ;
               connection.zCommand.params.ParamByName('Folio').value := tiFolio.Value ;
               connection.zCommand.params.ParamByName('Orden').DataType := ftString ;
               connection.zCommand.params.ParamByName('Orden').value := tsNumeroOrden.Text ;
               connection.zCommand.params.ParamByName('Fecha').DataType := ftDate ;
               connection.zCommand.params.ParamByName('Fecha').value := tdIdFecha.Date ;
               connection.zCommand.params.ParamByName('FechaAviso').DataType := ftDate ;
               connection.zCommand.params.ParamByName('FechaAviso').value := tdFechaAviso.Date ;
               connection.zCommand.params.ParamByName('Tipo').DataType := ftString ;
               connection.zCommand.params.ParamByName('Tipo').value := tsIdTipo.KeyValue ;
               connection.zCommand.params.ParamByName('Referencia').DataType := ftString ;
               connection.zCommand.params.ParamByName('Referencia').value := tsReferencia.Text ;
               connection.zCommand.params.ParamByName('Proveedor').DataType := ftString ;
               connection.zCommand.params.ParamByName('Proveedor').value := tsIdProveedor.KeyValue ;
               connection.zCommand.params.ParamByName('Origen').DataType := ftString ;
               connection.zCommand.params.ParamByName('Origen').value := tsOrigen.Text ;
               connection.zCommand.params.ParamByName('Comentarios').DataType := ftMemo ;
               connection.zCommand.params.ParamByName('Comentarios').value := tmCOmentarios.Text ;
               connection.zCommand.ExecSQL ;

                // Actualizo Kardex del Sistema ....
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                                             'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
               connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
               connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
               connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
               connection.zCommand.Params.ParamByName('Fecha').Value := Date ;
               connection.zCommand.Params.ParamByName('Hora').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
               connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Descripcion').Value := 'Registro de Aviso de Embarque No. ' + tsReferencia.Text  + ' Recibido el día [' + DateToStr(tdFechaAviso.Date) + '] Registrado el [' + DateToStr(tdIdFecha.Date) +  '] Usuario [ ' + global_usuario + ']' ;
               connection.zCommand.Params.ParamByName('Origen').DataType := ftString ;
               connection.zCommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
               connection.zCommand.ExecSQL ;

               SavePlace := Grid_EntradasView.DataController.DataSource.DataSet.GetBookmark ;
               anexo_suministro.Active := False ;
               anexo_suministro.Open ;
               try
                   Grid_EntradasView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
               Except
               Else
                   Grid_EntradasView.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
               end ;

               tdIdFecha.Enabled := False ;
               tdFechaAviso.Enabled := False ;
               tsNumeroOrden.Enabled := False ;
               tsIdTipo.ReadOnly := True ;
               tsIdProveedor.ReadOnly := True ;
               tsReferencia.ReadOnly := True ;
               tsOrigen.ReadOnly := True ;
               tmComentarios.ReadOnly := True ;
               frmBarra2.btnCancelClick(Sender);
          Except
                on e : exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al actualizar registro', 0);
                end;
          End
      End
  End
  Else
  If OpcButton1 = 'Edit' then
  Begin
      try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE anexo_suministro SET dIdFecha = :Fecha, dFechaAviso = :FechaAviso, sNumeroOrden = :Orden, sIdTipo = :Tipo, sReferencia = :Referencia, sIdProveedor = :Proveedor, sOrigen = :Origen, mComentarios = :Comentarios ' +
                                          'WHERE sContrato = :Contrato And iFolio = :Folio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').value      := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Folio').DataType      := ftInteger ;
            connection.zCommand.Params.ParamByName('Folio').value         := anexo_suministro.FieldValues['iFolio'] ;
            connection.zCommand.Params.ParamByName('Orden').DataType      := ftString ;
            connection.zCommand.Params.ParamByName('Orden').value         := tsNumeroOrden.Text ;
            connection.zCommand.Params.ParamByName('Fecha').DataType      := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').value         := tdIdFecha.Date ;
            connection.zCommand.Params.ParamByName('FechaAviso').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('FechaAviso').value    := tdFechaAviso.Date ;
            connection.zCommand.Params.ParamByName('Tipo').DataType       := ftString ;
            connection.zCommand.Params.ParamByName('Tipo').value          := tsIdTipo.KeyValue ;
            connection.zCommand.Params.ParamByName('Referencia').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Referencia').value    := tsReferencia.Text ;
            connection.zCommand.Params.ParamByName('Proveedor').DataType  := ftString ;
            connection.zCommand.Params.ParamByName('Proveedor').value     := tsIdProveedor.KeyValue ;
            connection.zCommand.Params.ParamByName('Origen').DataType     := ftString ;
            connection.zCommand.Params.ParamByName('Origen').value        := tsOrigen.Text ;
            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Comentarios').value    := tmCOmentarios.Text ;
            connection.zCommand.ExecSQL ;

            // Actualizo Kardex del Sistema ....
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                                          'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').Value := Date ;
            connection.zCommand.Params.ParamByName('Hora').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
            connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Descripcion').Value := 'Modificación de Aviso de Embarque No. ' + tsReferencia.Text  + ' Recibido el día [' + DateToStr(tdFechaAviso.Date) + '] Registrado el [' + DateToStr(tdIdFecha.Date) +  '] Usuario [ ' + global_usuario + ']' ;
            connection.zCommand.Params.ParamByName('Origen').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
            connection.zCommand.ExecSQL ;

            SavePlace := Grid_EntradasView.DataController.DataSource.DataSet.GetBookmark ;
            anexo_suministro.Active := False ;
            anexo_suministro.Open ;
            try
               Grid_EntradasView.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
            Except
            Else
               Grid_EntradasView.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
            end ;
            tdIdFecha.Enabled := False ;
            tdFechaAviso.Enabled := False ;
            tsNumeroOrden.Enabled := False ;
            tsIdTipo.ReadOnly := True ;
            tsIdProveedor.ReadOnly := True ;
            tsReferencia.ReadOnly := True ;
            tsOrigen.ReadOnly := True ;
            tmComentarios.ReadOnly := True ;
            frmBarra2.btnCancelClick(Sender);
      except
            on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al actualizar registro', 0);
            end;
      End
  End ;
  OpcButton1 := '' ;
  BloquearItemsPopup(PopupPrincipal, False);
  BotonPermiso.permisosBotones(frmBarra2);
  anexo_suministro.RecNo:=Posicion+1;
end;

procedure Tfrmentradaanex.frmBarra2btnPrinterClick(Sender: TObject);
begin

  try
    if Grid_EntradasView.DataController.DataSource.DataSet.RecordCount>0 then
    begin
      If (tsNumeroOrden.Text = ('CONTRATO No. ' + global_contrato)) Then
          rDiarioFirmas (global_contrato, '', 'A',anexo_suministro.FieldValues['dFechaAviso'], frmEntradaAnex )
      Else
          rDiarioFirmas (global_contrato, anexo_suministro.FieldValues['sNumeroOrden'], 'A',anexo_suministro.FieldValues['dFechaAviso'], frmEntradaAnex ) ;

      Reporte.Active := False ;
      Reporte.Params.ParamByName('Contrato').DataType := ftString ;
      Reporte.Params.ParamByName('Contrato').Value := global_contrato ;
      Reporte.Params.ParamByName('Convenio').DataType := ftString ;
      Reporte.Params.ParamByName('Convenio').Value := global_convenio ;
      Reporte.Params.ParamByName('Folio').DataType := ftInteger ;
      Reporte.Params.ParamByName('Folio').Value := anexo_suministro.FieldValues['iFolio'] ;
      Reporte.Open ;

      if Reporte.RecordCount > 0 then
      begin
        try
          opcion:='Reporte';
          frxentrada.LoadFromFile(global_files + global_miReporte + '_ALMAvisosEmbarque.fr3');
          if not FileExists(global_files + global_miReporte + '_ALMAvisosEmbarque.fr3') then
     showmessage('El archivo de reporte '+global_Mireporte+'_ALMAvisosEmbarque.fr3 no existe, notifique al administrador del sistema');
          frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));//listaVerificacion.fr3
        finally
          opcion:='';
        end;
      end
      else begin
          showmessage('El aviso de embarque seleccionado no tiene Partidas Anexo');
      end;

    end;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Avisos de Embarque', 'Al imprimir', 0);
    end;
  end;
end;

procedure Tfrmentradaanex.frmBarra2btnRefreshClick(Sender: TObject);
begin
    anexo_suministro.Active := False ;
    anexo_suministro.Open ;
end;



procedure Tfrmentradaanex.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
begin
  If CompareText(VarName, 'TIPO_ENTRADA') = 0 then
      Value := tsIdTipo.Text ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
end;

procedure Tfrmentradaanex.GridPartidasEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;


  If  anexo_psuministro.state <> dsInactive   Then
   Begin
     If anexo_psuministro.RecordCount > 0 Then
      begin
        tsNumeroActividad.Text := anexo_psuministro.FieldValues['sNumeroActividad'] ;
        tmDescripcion.Text     := anexo_psuministro.FieldValues['mDescripcion'] ;
        tsMedida.Text          := anexo_psuministro.FieldValues['sMedida'] ;
        tdCantidadAnexo.Value  := anexo_psuministro.FieldValues['dCantidadAnexo'] ;
        tdCantidad.Value       := anexo_psuministro.FieldValues['dCantidad'] ;

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
        Historico.Open ;

        // Calculo de lo Suministrado, Reportado, Generado
        QrySuministro.Active := False ;
        QrySuministro.Params.ParamByName('Contrato').DataType := ftString ;
        QrySuministro.Params.ParamByName('Contrato').Value := Global_Contrato ;
        QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
        QrySuministro.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
        QrySuministro.Params.ParamByName('Fecha').DataType := ftDate ;
        QrySuministro.Params.ParamByName('Fecha').Value := Anexo_Suministro.FieldValues['dFechaAviso'] ;
        QrySuministro.Open ;
        tdSuministro.Value := 0.00 ;
        If QrySuministro.RecordCount > 0 Then
            tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;

     end
    Else
     begin

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := '' ;
        Historico.Open ;

        tsNumeroActividad.Text := '' ;
        tmDescripcion.Text := '' ;
        tsMedida.Text := '' ;
        tdCantidadAnexo.Value := 0 ;
        tdCantidad.Value := 0 ;
        tdSuministro.Value := 0.00 ;
     end
  end ;
end;

procedure Tfrmentradaanex.GridPartidasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrmentradaanex.GridPartidasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrmentradaanex.GridPartidasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var
  sCampo : String ;
begin
  sCampo := Field.FieldName ;
  anexo_psuministro.Active := False ;
  anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
  anexo_psuministro.Params.ParamByName('Contrato').Value := global_contrato ;
  anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
  anexo_psuministro.Params.ParamByName('Convenio').Value := global_convenio ;
  anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
  anexo_psuministro.Params.ParamByName('Ordenado').Value := sCampo ;
  anexo_psuministro.Params.ParamByName('Folio').DataType := ftInteger ;
  anexo_psuministro.Params.ParamByName('Folio').Value := anexo_suministro.FieldValues['iFolio'] ;

  anexo_psuministro.Open ;
end;

procedure Tfrmentradaanex.GridPartidasTitleClick(Column: TColumn);
begin
UtGrid2.DbGridTitleClick(Column);
end;

procedure Tfrmentradaanex.Grid_EntradasEnter(Sender: TObject);
begin
    if OpcButton1 <> '' then
    begin

      If anexo_suministro.RecordCount > 0 Then
      Begin
          tiFolio.Value := anexo_suministro.FieldValues['iFolio'] ;
          tdIdFecha.Date := anexo_suministro.FieldValues['dIdFecha'] ;
          tdFechaAviso.Date := anexo_suministro.FieldValues['dFechaAviso'] ;
          tsIdTipo.KeyValue := anexo_suministro.FieldValues['sIdTipo'] ;
          tsIdProveedor.KeyValue := anexo_suministro.FieldValues['sIdProveedor'] ;
          tsReferencia.Text := anexo_suministro.FieldValues['sReferencia'] ;
          tsOrigen.Text := anexo_suministro.FieldValues['sOrigen'] ;
          tmComentarios.Text := anexo_suministro.FieldValues['mComentarios'] ;

          anexo_psuministro.Active := False ;
          anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Contrato').Value := global_contrato ;
          anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Convenio').Value := global_convenio ;
          anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Ordenado').Value := 'sNumeroActividad' ;
          anexo_psuministro.Params.ParamByName('Folio').DataType := ftInteger ;
          anexo_psuministro.Params.ParamByName('Folio').Value := anexo_suministro.FieldValues['iFolio'] ;

          anexo_psuministro.Open ;
          If anexo_psuministro.RecordCount > 0 then
          Begin
              tsNumeroActividad.Text := anexo_psuministro.FieldValues['sNumeroActividad'] ;
              tmDescripcion.Text := anexo_psuministro.FieldValues['mDescripcion'] ;
              tsMedida.Text := anexo_psuministro.FieldValues['sMedida'] ;
              tdCantidadAnexo.Value := anexo_psuministro.FieldValues['dCantidadAnexo'] ;
              tdCantidad.Value := anexo_psuministro.FieldValues['dCantidad'] ;

              Historico.Active := False ;
              Historico.Params.ParamByName('Contrato').DataType := ftString ;
              Historico.Params.ParamByName('Contrato').Value := global_contrato ;
              Historico.Params.ParamByName('Actividad').DataType := ftString ;
              Historico.Params.ParamByName('Actividad').Value := anexo_psuministro.FieldValues['sNumeroActividad'] ;
              Historico.Open ;

              // Calculo de lo Suministrado, Reportado, Generado
              QrySuministro.Active := False ;
              QrySuministro.Params.ParamByName('Contrato').DataType := ftString ;
              QrySuministro.Params.ParamByName('Contrato').Value := Global_Contrato ;
              QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
              QrySuministro.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
              QrySuministro.Params.ParamByName('Fecha').DataType := ftDate ;
              QrySuministro.Params.ParamByName('Fecha').Value := Anexo_Suministro.FieldValues['dFechaAviso'] ;
              QrySuministro.Open ;
              tdSuministro.Value := 0.00 ;
              If QrySuministro.RecordCount > 0 Then
                  tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;
          End
          Else
          Begin
              Historico.Active := False ;
              Historico.Params.ParamByName('Contrato').DataType := ftString ;
              Historico.Params.ParamByName('Contrato').Value := global_contrato ;
              Historico.Params.ParamByName('Actividad').DataType := ftString ;
              Historico.Params.ParamByName('Actividad').Value := '' ;
              Historico.Open ;

              tsNumeroActividad.Text := '' ;
              tmDescripcion.Text := '' ;
              tsMedida.Text := '' ;
              tdCantidadAnexo.Value := 0 ;
              tdCantidad.Value := 0 ;
              tdSuministro.Value := 0.00 ;
          End
      End
      Else
      Begin
          tiFolio.Value := 0 ;
          tdIdFecha.Date := Date ;
          tdFechaAviso.Date := Date ;
          tsReferencia.Text := '' ;
          tsOrigen.Text := '' ;
          tmComentarios.Text := '' ;
          tdCantidad.Value := 0 ;
          anexo_psuministro.Active := False ;
          anexo_psuministro.Params.ParamByName('Contrato').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Contrato').Value    := global_contrato ;
          anexo_psuministro.Params.ParamByName('Convenio').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Convenio').Value    := global_convenio ;
          anexo_psuministro.Params.ParamByName('Ordenado').DataType := ftString ;
          anexo_psuministro.Params.ParamByName('Ordenado').Value    := 'sNumeroActividad' ;
          anexo_psuministro.Params.ParamByName('Folio').DataType    := ftInteger ;
          anexo_psuministro.Params.ParamByName('Folio').Value       := 0 ;

          anexo_psuministro.Open ;
      End;
    end;
end;

procedure Tfrmentradaanex.Grid_EntradasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrmentradaanex.Grid_EntradasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrmentradaanex.Grid_EntradasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var
    sOrdenado : String ;
begin
  sOrdenado := Field.FieldName ;
  anexo_suministro.Active := False ;
  anexo_suministro.Params.ParamByName('Contrato').DataType := ftString ;
  anexo_suministro.Params.ParamByName('Contrato').Value := global_contrato ;
  anexo_suministro.Params.ParamByName('Ordenado').DataType := ftString ;
  anexo_suministro.Params.ParamByName('Ordenado').Value := sOrdenado ;
  anexo_suministro.Open ;
end;

procedure Tfrmentradaanex.Grid_EntradasTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrmentradaanex.Grid_HistoricoDblClick(Sender: TObject);
begin
    PanelHistorico.Visible := NOT PanelHistorico.Visible ;
end;

procedure Tfrmentradaanex.Insertar1Click(Sender: TObject);
begin
  frmBarra2.btnAdd.Click
end;

procedure Tfrmentradaanex.KardexdelInventario1Click(Sender: TObject);
begin
    PanelHistorico.Visible := NOT PanelHistorico.Visible ;
end;

procedure Tfrmentradaanex.tdCantidadAnexoEnter(Sender: TObject);
begin
 tdCantidad.Color := global_color_salidaERP
end;

procedure Tfrmentradaanex.tdCantidadAnexoExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tdCantidadChange(Sender: TObject);
begin
TRxCalcEditChangef(tdCantidad,'Cantidad');
end;

procedure Tfrmentradaanex.tdCantidadEnter(Sender: TObject);
begin
   tdCantidad.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tdCantidadKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTRxCalcEdit(tdCantidad,key) then
   key:=#0;
    If Key = #13 Then
        frmBarra1.btnPost.SetFocus
end;

procedure Tfrmentradaanex.tdFechaAvisoChange(Sender: TObject);
begin
//  tdFechaAviso.MinDate:=tdidFecha.Date;
end;

procedure Tfrmentradaanex.tdFechaAvisoEnter(Sender: TObject);
begin
 tdFechaAviso.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tdFechaAvisoExit(Sender: TObject);
begin
  If frmBarra2.btnCancel.Enabled = True  Then
  If tsReferencia.Text = '' Then
  tsReferencia.Text := 'CAL' + FormatDateTime('yymmdd' , tdFechaAviso.Date) ;
  tdFechaAviso.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tdFechaAvisoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  tsNumeroOrden.SetFocus 
end;

procedure Tfrmentradaanex.tdIdFechaChange(Sender: TObject);
begin
//  if tdFechaAviso.Date<tdidFecha.Date then

end;

procedure Tfrmentradaanex.tdIdFechaEnter(Sender: TObject);
begin
 tdIdFecha.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tdIdFechaExit(Sender: TObject);
begin
 tdIdFecha.Color := global_color_salidaERP;
end;


procedure Tfrmentradaanex.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  tdFechaAviso.SetFocus
end;

procedure Tfrmentradaanex.tdSuministroEnter(Sender: TObject);
begin
  tdSuministro.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tdSuministroExit(Sender: TObject);
begin
 tdSuministro.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tiFolioChange(Sender: TObject);
begin
  TCurrenCyEdit(sender).Value:=abs(TCurrenCyEdit(sender).Value);
end;

procedure Tfrmentradaanex.tiFolioEnter(Sender: TObject);
begin
  tiFolio.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tiFolioExit(Sender: TObject);
begin
  tiFolio.Color:= global_color_salidaERP;
end;

procedure Tfrmentradaanex.tiFolioKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 tdIdFecha.SetFocus;
end;

procedure Tfrmentradaanex.tmComentariosEnter(Sender: TObject);
begin
tmComentarios.Color := global_color_entradaERP
end;

procedure Tfrmentradaanex.tmComentariosExit(Sender: TObject);
begin
 tmComentarios.Color := global_color_salidaERP; 
end;

procedure Tfrmentradaanex.tmComentariosKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 tiFolio.SetFocus;
end;

procedure Tfrmentradaanex.tmDescripcionEnter(Sender: TObject);
begin
 tmDescripcion.Color := global_color_entradaERP; 
end;

procedure Tfrmentradaanex.tmDescripcionExit(Sender: TObject);
begin
tmDescripcion.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsIdProveedorEnter(Sender: TObject);
begin
 tsIdProveedor.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tsIdProveedorExit(Sender: TObject);
begin
 tsIdProveedor.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsIdProveedorKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
        tsOrigen.SetFocus 
end;

procedure Tfrmentradaanex.tsIdTipoEnter(Sender: TObject);
begin
 tsIdTipo.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tsIdTipoExit(Sender: TObject);
begin
 tsIdTipo.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsIdTipoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
        tsReferencia.SetFocus
end;

procedure Tfrmentradaanex.tsMedidaEnter(Sender: TObject);
begin
 tsMedida.color := global_color_entradaERP; 
end;

procedure Tfrmentradaanex.tsNumeroActividadEnter(Sender: TObject);
begin
  imgNotas.Visible := False ;
  tsNumeroActividad.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaERP;
  If tsNumeroActividad.ReadOnly = False Then
  Begin
      tmDescripcion.Text := '' ;
      tdCantidadAnexo.Value := 0 ;
      tsMedida.Text := '' ;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 Then
          imgNotas.Visible := True ;

      if tsNumeroActividad.Text <> '' then
         If Not lExisteActividad ( tsNumeroActividad.Text ) then
              tsNumeroActividad.SetFocus
         Else
         Begin
              tsMedida.Text := connection.qryBusca.FieldValues['sMedida']  ;
              tmDescripcion.Text := sDescripcion ;

              // Calculo de lo Suministrado, Reportado, Generado
              QrySuministro.Active := False ;
              QrySuministro.Params.ParamByName('Contrato').DataType := ftString ;
              QrySuministro.Params.ParamByName('Contrato').Value := Global_Contrato ;
              QrySuministro.Params.ParamByName('Actividad').DataType := ftString ;
              QrySuministro.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
              QrySuministro.Params.ParamByName('Fecha').DataType := ftDate ;
              QrySuministro.Params.ParamByName('Fecha').Value := Anexo_Suministro.FieldValues['dFechaAviso'] ;
              QrySuministro.Open ;
              tdSuministro.Value := 0.00 ;
              If QrySuministro.RecordCount > 0 Then
                  tdSuministro.Value := QrySuministro.FieldValues['dCantidad'] ;
         End
    end
end;
 procedure Tfrmentradaanex.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdCantidad.SetFocus 
end;

procedure Tfrmentradaanex.tsNumeroOrdenEnter(Sender: TObject);
begin
 tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tsNumeroOrdenExit(Sender: TObject);
begin
 tsNumeroOrden.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
        tsIdTipo.SetFocus 
end;

procedure Tfrmentradaanex.tsOrigenEnter(Sender: TObject);
begin
tsOrigen.Color := global_color_entradaERP; 
end;

procedure Tfrmentradaanex.tsOrigenExit(Sender: TObject);
begin
 tsOrigen.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsOrigenKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13  then
 tmComentarios.SetFocus;


end;

procedure Tfrmentradaanex.tsReferenciaEnter(Sender: TObject);
begin
  tsReferencia.Color := global_color_entradaERP;
end;

procedure Tfrmentradaanex.tsReferenciaExit(Sender: TObject);
begin
   tsReferencia.Color := global_color_salidaERP;
end;

procedure Tfrmentradaanex.tsReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsIdProveedor.SetFocus
end;

function TfrmEntradaAnex.lExisteActividad ( sActividad : String ) : Boolean ;
Begin
      sSwbs:='';
      connection.qryBusca.Active := False ;
      connection.qryBusca.SQL.Clear ;
      connection.qryBusca.SQL.Add('select mDescripcion, dCantidadAnexo,swbs, sMedida from actividadesxanexo where sContrato = :Contrato ' +
                                'And sIdConvenio = :Convenio and sNumeroActividad = :Actividad' ) ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad ;
      connection.qryBusca.Open ;
      If connection.qryBusca.RecordCount > 0 then
      Begin
          sDescripcion := connection.qryBusca.FieldValues['mDescripcion'] ;
          tdCantidadAnexo.Value := connection.qryBusca.FieldValues['dCantidadAnexo'] ;
          lExisteActividad := True;
          sSwbs:= connection.qryBusca.FieldByName('swbs').AsString;
      end
      else
      Begin
          sDescripcion := '' ;
          tdCantidadAnexo.Value := 0 ;
          lExisteActividad := False
      end
End ;
procedure Tfrmentradaanex.Paste1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure Tfrmentradaanex.Pegar1Click(Sender: TObject);
begin
  ModificarPortaPapeles(self.ActiveControl, ftpegar);
end;

procedure Tfrmentradaanex.Refresh1Click(Sender: TObject);
begin
    frmBarra2.btnRefresh.Click
end;

procedure Tfrmentradaanex.Registrar1Click(Sender: TObject);
begin
    frmBarra2.btnPost.Click
end;

procedure Tfrmentradaanex.ReporteAfterScroll(DataSet: TDataSet);
begin
  try
    if opcion='Reporte' then
    begin
      zq_ParIns.Active := False;
      zq_ParIns.ParamByName('Contrato').AsString := global_contrato;
      zq_ParIns.ParamByName('Folio').AsInteger := Reporte.FieldByName('iFolio').AsInteger;
      zq_ParIns.ParamByName('Wbs').AsString := Reporte.FieldByName('sWbs').AsString;;
      zq_ParIns.ParamByName('Actividad').AsString := Reporte.FieldByName('sNumeroActividad').AsString;;
      zq_ParIns.ParamByName('NumOrd').AsString := Reporte.FieldByName('sNumeroOrden').AsString;;
      zq_ParIns.Open;
    end;
  finally

  end;

end;

procedure Tfrmentradaanex.Salir1Click(Sender: TObject);
begin
    frmBarra2.btnExit.Click;
end;

procedure TfrmEntradaanex.CargarFrentes;
begin
    tsNumeroOrden.Items.Clear ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden from ordenesdetrabajo where sContrato = :Contrato and ' +
                                'cIdStatus = :status order by sNumeroOrden') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := Global_Contrato ;
    Connection.qryBusca.Params.ParamByName('status').DataType   := ftString ;
    Connection.qryBusca.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
        While NOT Connection.qryBusca.Eof Do
        Begin
            tsNumeroOrden.Items.Add(Connection.qryBusca.FieldValues['sNumeroOrden']) ;
            Connection.qryBusca.Next
        End ;
    tsNumeroOrden.ItemIndex := 0 ;
end;

end.
