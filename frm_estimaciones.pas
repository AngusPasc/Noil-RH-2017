unit frm_estimaciones;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, DB, StdCtrls, Grids, DBGrids,
  frm_barra, ComCtrls, DBCtrls, Mask, Menus, ExtCtrls, frxClass, frxDBSet,
  ToolWin,  RXDBCtrl, Buttons, RxMemDS, DateUtils,
  jpeg,  FramedPanel, BrowseOpenDialog, ShellCtrls, UnitExcepciones,
  Sockets, IdGlobal, Newpanel, utilerias, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, math, frxRich, rxToolEdit, UnitTBotonesPermisos, udbgrid, UnitValidaTexto, UnitTablasImpactadas, UFunctionsGHH,
  DBDateTimePicker, cxGraphics, cxControls, cxLookAndFeels,
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
  TfrmEstimaciones = class(TForm)
    ds_generadoresxestimacion: TDataSource;
    dsEstimacionPeriodo: TDataSource;
    gbGeneradores: tNewGroupBox;
    TolGeneradores: TToolBar;
    NumGeneradores: TToolButton;
    Generador: TToolButton;
    SemConImportes: TToolButton;
    SemSinImportes: TToolButton;
    btnVerificacion: TToolButton;
    gbEstimaciones: tNewGroupBox;
    frmBarra1: TfrmBarra;
    TiposdeEstimacion: TZReadOnlyQuery;
    ds_TiposdeEstimacion: TDataSource;
    GeneradoresxEstimacion: TZReadOnlyQuery;
    GeneradoresxEstimacionsContrato: TStringField;
    GeneradoresxEstimacioniNumeroEstimacion: TStringField;
    GeneradoresxEstimacionsNumeroOrden: TStringField;
    GeneradoresxEstimacioniSemana: TIntegerField;
    GeneradoresxEstimacioniConsecutivo: TIntegerField;
    GeneradoresxEstimaciondFechaInicio: TDateField;
    GeneradoresxEstimaciondFechaFinal: TDateField;
    GeneradoresxEstimacionlStatus: TStringField;
    GeneradoresxEstimaciondMontoMN: TFloatField;
    GeneradoresxEstimaciondMontoDLL: TFloatField;
    GeneradoresxEstimaciondFinancieroGenerador: TFloatField;
    EstimacionPeriodo: TZQuery;
    dsEstimacionCaratula: TfrxDBDataset;
    EstimacionPeriodosContrato: TStringField;
    EstimacionPeriodoiNumeroEstimacion: TStringField;
    EstimacionPeriodosIdTipoEstimacion: TStringField;
    EstimacionPeriododFechaInicio: TDateField;
    EstimacionPeriododFechaFinal: TDateField;
    EstimacionPeriodosMoneda: TStringField;
    EstimacionPeriodolEstimado: TStringField;
    EstimacionPeriododMontoMNGeneradores: TFloatField;
    EstimacionPeriododMontoDLLGeneradores: TFloatField;
    EstimacionPeriododMontoMN: TFloatField;
    EstimacionPeriododMontoDLL: TFloatField;
    EstimacionPeriododMontoAcumuladoMN: TFloatField;
    EstimacionPeriododMontoAcumuladoDLL: TFloatField;
    EstimacionPeriododRetencionDLL: TFloatField;
    EstimacionPeriodosElementoPEP: TStringField;
    EstimacionPeriodosFondo: TStringField;
    EstimacionPeriodosPosicionFinanciera: TStringField;
    EstimacionPeriodosCuentaMayor: TStringField;
    EstimacionPeriodosCentroGestor: TStringField;
    EstimacionPeriodosCentroCosto: TStringField;
    EstimacionPeriodosCentroBeneficio: TStringField;
    EstimacionPeriodosProyecto: TStringField;
    EstimacionPeriodomComentarios: TMemoField;
    EstimacionPeriododAvanceFisicoProgramado: TFloatField;
    EstimacionPeriododAvanceFisicoReal: TFloatField;
    EstimacionPeriododAvanceFinancieroProgramado: TFloatField;
    EstimacionPeriododAvanceFinancieroReal: TFloatField;
    EstimacionPeriododFechaInicioContrato: TDateField;
    EstimacionPeriododFechaFinalContrato: TDateField;
    EstimacionPeriododMontoContratoMN: TFloatField;
    EstimacionPeriododMontoContratoDLL: TFloatField;
    EstimacionPeriododMontoProgramadoMensualMN: TFloatField;
    EstimacionPeriododMontoProgramadoMensualDLL: TFloatField;
    EstimacionPeriododMontoProgramadoAcumuladoMN: TFloatField;
    EstimacionPeriododMontoProgramadoAcumuladoDLL: TFloatField;
    EstimacionPeriodosDescripcion: TStringField;
    EstimacionPeriododRetencionMN: TFloatField;
    ActividadesxEstimacion: TZReadOnlyQuery;
    ActividadesxEstimacionsContrato: TStringField;
    ActividadesxEstimacioniNumeroEstimacion: TStringField;
    ActividadesxEstimacioniNivel: TIntegerField;
    ActividadesxEstimacionsSimbolo: TStringField;
    ActividadesxEstimacionsWbs: TStringField;
    ActividadesxEstimacionsWbsAnterior: TStringField;
    ActividadesxEstimacionsNumeroActividad: TStringField;
    ActividadesxEstimacionsTipoActividad: TStringField;
    ActividadesxEstimacionsEspecificacion: TStringField;
    ActividadesxEstimacioniItemOrden: TStringField;
    ActividadesxEstimacionmDescripcion: TMemoField;
    ActividadesxEstimaciondCostoMN: TFloatField;
    ActividadesxEstimaciondCostoDll: TFloatField;
    ActividadesxEstimaciondVentaMN: TFloatField;
    ActividadesxEstimaciondVentaDLL: TFloatField;
    ActividadesxEstimacionsMedida: TStringField;
    ActividadesxEstimaciondCantidadAnexo: TFloatField;
    ActividadesxEstimacioniColor: TIntegerField;
    ActividadesxEstimaciondAcumuladoAnterior: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimaciondCantidad: TFloatField;
    ActividadesxEstimaciondMontoMN: TFloatField;
    ActividadesxEstimaciondMontoDLL: TFloatField;
    ActividadesxEstimaciondAcumuladoActual: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimacionsWbsSpace: TStringField;
    dsActividadesxEstimacion: TfrxDBDataset;
    popEstimaciones: TPopupMenu;
    mnEstimacion: TMenuItem;
    mnConcentradoEstimacion: TMenuItem;
    Acumulados1: TMenuItem;
    Parciales1: TMenuItem;
    mnIsometricos: TMenuItem;
    mnConcentradoIsometricos: TMenuItem;
    mnGeneradores: TMenuItem;
    mnConcentradoGeneradores: TMenuItem;
    mnResumenEstimacion: TMenuItem;
    mnConcentradoResumenEstimacion: TMenuItem;
    dsInforme: TfrxDBDataset;
    EstimacionPeriodosIdUsuarioAutoriza: TStringField;
    EstimacionPeriodosFirmas: TMemoField;
    mnDetalleParcial: TMenuItem;
    mnDetalleAcumulado: TMenuItem;
    EstimacionPeriododIdFecha: TDateField;
    frGenerador: TfrxReport;
    tsMoneda: TDBEdit;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    tiNumeroEstimacion: TDBEdit;
    tsTipo: TDBLookupComboBox;
    Label7: TLabel;
    GeneradoresxEstimacionsNumeroGenerador: TStringField;
    mnGeneradorExtra: TMenuItem;
    dsConcentradoIsometricos: TfrxDBDataset;
    GeneradoresxEstimacionsFaseObra: TStringField;
    tdIdFecha: TDBDateTimePicker;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    LEstimacion: TLabel;
    tsIdEstimacion: TDBEdit;
    EstimacionPeriodosNumeroEstimacion: TStringField;
    dbNota: TDBMemo;
    EstimacionPeriodomNota: TMemoField;
    grid_Estimaciones: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid_Generadores: TcxGrid;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column11: TcxGridDBColumn;
    procedure ActualizaFirmas2 ( dFecha: TDateTime ) ;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure tiNumeroEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsMonedaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tiNumeroEstimacionEnter(Sender: TObject);
    procedure tiNumeroEstimacionExit(Sender: TObject);
    procedure tsTipoEnter(Sender: TObject);
    procedure tsTipoExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tsMonedaEnter(Sender: TObject);
    procedure tsMonedaExit(Sender: TObject);
    procedure NumerosGeneradores1Click(Sender: TObject);
    procedure SemanalImportes1Click(Sender: TObject);
    procedure SemanalsinImportes1Click(Sender: TObject);
    procedure Generador1Click(Sender: TObject);
    procedure GeneradorClick(Sender: TObject);
    procedure NumGeneradoresClick(Sender: TObject);
    procedure SemConImportesClick(Sender: TObject);
    procedure SemSinImportesClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure Grid_EstimacionesEnter(Sender: TObject);
    procedure EstimacionPeriodoAfterScroll(DataSet: TDataSet);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure Grid_GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_DblClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure EstimacionPeriodoCalcFields(DataSet: TDataSet);
    procedure ActividadesxEstimacionCalcFields(DataSet: TDataSet);
    procedure mnEstimacionClick(Sender: TObject);
    procedure mnConcentradoEstimacionClick(Sender: TObject);
    procedure mnIsometricosClick(Sender: TObject);
    procedure mnConcentradoIsometricosClick(Sender: TObject);
    procedure mnGeneradoresClick(Sender: TObject);
    procedure mnConcentradoGeneradoresClick(Sender: TObject);
    procedure mnResumenEstimacionClick(Sender: TObject);
    procedure mnConcentradoResumenEstimacionClick(Sender: TObject);
    procedure mnDetalleParcialClick(Sender: TObject);
    procedure mnDetalleAcumuladoClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure mnGeneradorExtraClick(Sender: TObject);
    procedure btnVerificacionClick(Sender: TObject);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
    procedure Grid_MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_TitleClick(Column: TColumn);
    procedure popEstimacionesPopup(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure tsIdEstimacionEnter(Sender: TObject);
    procedure tsIdEstimacionExit(Sender: TObject);
    procedure tsIdEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure grid_1Enter(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView2DblClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView2MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgrdbtblvwGrid1DBTableView2MouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimaciones: TfrmEstimaciones;
  dFactor : Real ;
  sOpcion : String ;
  sPath   : String ;
  sDescripcion    : String ;
  mDescripcion    : WideString ;
  iNumeroEstimacion : String ;
  BotonPermiso: TBotonesPermisos;
  //utgrid:TicDbGrid;
  //utgrid2:TicDbgrid;
  sIdOrig : string;

implementation

uses frm_EstimacionAlbum;

{$R *.dfm}

procedure TfrmEstimaciones.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opEstimaciones', popEstimaciones);
  //UtGrid:=TicdbGrid.create(grid_estimaciones);
  //UtGrid2:=TicdbGrid.create(grid_generadores);
  OpcButton := '' ;
  sIdOrig := '';
  frmBarra1.btnCancel.Click ;


  TiposdeEstimacion.Active := False ;
  TiposdeEstimacion.Open ;

  if connection.configuracion.FieldByName('eEstRep').AsString = 'Si' then
    dbNota.Visible := True
  else
    dbNota.Visible := False;
  

  EstimacionPeriodo.Active := False ;
  EstimacionPeriodo.Params.ParamByName('contrato').DataType := ftString ;
  EstimacionPeriodo.Params.ParamByName('contrato').Value := global_contrato ;
  EstimacionPeriodo.Open ;
  Grid_Estimaciones.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaciones.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   EstimacionPeriodo.Append ;
   EstimacionPeriodo.FieldValues['sContrato'] := global_contrato ;
   EstimacionPeriodo.FieldValues['dIdFecha']  := tdIdFecha.Date ;
   EstimacionPeriodo.FieldValues['dFechaInicio']  := tdFechaInicio.Date ;
   EstimacionPeriodo.FieldValues['dFechaFinal']  := tdFechaFinal.Date ;
   EstimacionPeriodo.FieldValues['lEstimado'] := 'No' ;
   EstimacionPeriodo.FieldValues['dMontoMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoAcumuladoMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoAcumuladoDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['dRetencionMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dRetencionDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['sMoneda'] := 'MONEDA NACIONAL' ;
   EstimacionPeriodo.FieldValues['dMontoMNGeneradores'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoDLLGeneradores'] := 0 ;
   EstimacionPeriodo.FieldValues['sElementoPEP'] := '' ;
   EstimacionPeriodo.FieldValues['sFondo'] := '' ;
   EstimacionPeriodo.FieldValues['sPosicionFinanciera'] := '' ;
   EstimacionPeriodo.FieldValues['sCuentaMayor'] := '' ;
   EstimacionPeriodo.FieldValues['sCentroGestor'] := '' ;
   EstimacionPeriodo.FieldValues['sCentroCosto'] := '' ;
   EstimacionPeriodo.FieldValues['sCentroBeneficio'] := '' ;
   EstimacionPeriodo.FieldValues['sProyecto'] := '' ;
   EstimacionPeriodo.FieldValues['mComentarios'] := ' ' ;
   EstimacionPeriodo.FieldValues['dAvanceFisicoProgramado'] := 0 ;
   EstimacionPeriodo.FieldValues['dAvanceFisicoReal'] := 0 ;
   EstimacionPeriodo.FieldValues['dAvanceFinancieroProgramado'] := 0 ;
   EstimacionPeriodo.FieldValues['dAvanceFinancieroReal'] := 0 ;
   EstimacionPeriodo.FieldValues['dAvanceFisicoProgramado'] := 0 ;
   EstimacionPeriodo.FieldValues['dFechaInicioContrato'] := Date() ;
   EstimacionPeriodo.FieldValues['dFechaFinalContrato'] := Date() ;
   EstimacionPeriodo.FieldValues['dMontoContratoMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoContratoDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoProgramadoMensualMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoProgramadoMensualDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoProgramadoAcumuladoMN'] := 0 ;
   EstimacionPeriodo.FieldValues['dMontoProgramadoAcumuladoDLL'] := 0 ;
   EstimacionPeriodo.FieldValues['sIdUsuarioAutoriza'] := '' ;
   tiNumeroEstimacion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaciones.frmBarra1btnEditClick(Sender: TObject);
begin
   If EstimacionPeriodo.RecordCount > 0 Then
      If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
      Begin
           sIdOrig := EstimacionPeriodo.FieldByName('iNumeroEstimacion').AsString;
           frmBarra1.btnEditClick(Sender);
           Try
               EstimacionPeriodo.Edit ;
               iNumeroEstimacion := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
           Except
               on e : exception do begin
                   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al editar registro', 0);
               end;
           End ;
           tiNumeroEstimacion.SetFocus
       End
       Else
           MessageDlg('Estimación Aplicada, no pueden realizarse cambios', mtInformation, [mbOk], 0);

  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaciones.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
  lEdita: boolean;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Tipo');;nombres.Add('Moneda');
  cadenas.Add(tsTipo.Text);cadenas.Add(tsMoneda.Text);
  if not validaTexto(nombres, cadenas, 'Estimacion', tiNumeroEstimacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
 {Continua insercion de datos}
  lEdita := false;
  if EstimacionPeriodo.State = dsEdit then
    lEdita := true;

  Try
      EstimacionPeriodo.FieldValues['sFirmas'] := '*' ;
      EstimacionPeriodo.FieldValues['lEstimado'] := 'No' ;
      EstimacionPeriodo.FieldValues['dMontoMN'] := 0 ;
      EstimacionPeriodo.FieldValues['dMontoDLL'] := 0 ;
      EstimacionPeriodo.FieldValues['sContrato'] := global_contrato ;
      EstimacionPeriodo.FieldValues['dIdFecha']  := tdIdFecha.Date ;
      EstimacionPeriodo.FieldValues['dFechaInicio']  := tdFechaInicio.Date ;
      EstimacionPeriodo.FieldValues['dFechaFinal']  := tdFechaFinal.Date ;
      //Try
          EstimacionPeriodo.Post ;
      {
      Finally
          Try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('update actividadesxestimacion SET iNumeroEstimacion = :Estimacion Where sContrato = :Contrato and iNumeroEstimacion = :OldEstimacion') ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('oldEstimacion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('oldEstimacion').Value := iNumeroEstimacion ;
              connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
              connection.zCommand.ExecSQL ;
          Except
              on e : exception do begin
                   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al actualizar las partidas de la estimacion', 0);
              end;
          End ;

          Try
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add('update estimaciones SET iNumeroEstimacion = :Estimacion Where sContrato = :Contrato and iNumeroEstimacion = :OldEstimacion') ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('oldEstimacion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('oldEstimacion').Value := iNumeroEstimacion ;
              connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
              connection.zCommand.ExecSQL ;
          Except
              on e : exception do begin
                   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al actualizar los generadores de la estimacion', 0);
              end;
          End ;
      End ;}
      frmBarra1.btnCancelClick(Sender);
  Except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al salvar registro', 0);
          lEdita := false;//cancelar la actualizacion de tablas dependientes
      end;
  End;
  if (lEdita) and (EstimacionPeriodo.FieldByName('iNumeroEstimacion').AsString <> sIdOrig) then
  begin
      tablasDependientes(sIdOrig);
  end;

  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaciones.frmBarra1btnCancelClick(Sender: TObject);
begin
  EstimacionPeriodo.Cancel ;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //utgrid.Destroy;
    //utgrid2.Destroy;
    global_isometrico := '' ;
    global_generador := '' ;
    global_orden := '' ;
    EstimacionPeriodo.Cancel ;
    action := cafree ;
    BotonPermiso.free;
end;

procedure TfrmEstimaciones.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close ;
end;

procedure TfrmEstimaciones.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If EstimacionPeriodo.RecordCount  > 0 then
      if not posibleBorrar(EstimacionPeriodo.FieldByName('iNumeroEstimacion').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
      Begin
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select sContrato From estimaciones Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion') ;
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
          Connection.qryBusca.Open ;
          If Connection.qryBusca.RecordCount > 0 Then
              MessageDlg('Existen generadores referenciados a la estimación, no puede eliminarse la estimación activa', mtInformation, [mbOk], 0)
          Else
              If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                  try
                      EstimacionPeriodo.Delete ;
                      Grid_Estimaciones.SetFocus
                  except
                      on e : exception do begin
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al eliminar registro', 0);
                      end;
                  end
              End
      end
      Else
          MessageDlg('Estimación Aplicada, no puede eliminarse la estimación activa', mtInformation, [mbOk], 0);

end;

procedure TfrmEstimaciones.frmBarra1btnRefreshClick(Sender: TObject);
Var
    dFinancieroGenerador : Real ;
    dMonto, dMontoMN, dMontoDLL : Double ;
begin
generadoresxestimacion.Open;
    GeneradoresxEstimacion.First ;
    While NOT GeneradoresxEstimacion.Eof Do
    Begin
        If GeneradoresxEstimacion.FieldValues['lStatus'] = 'Autorizado' Then
        Begin
            // Cierro el Generador ....

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select dMontoMN from convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato ;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
            Connection.qryBusca.Open ;
            dMonto := 0 ;
            If Connection.qryBusca.RecordCount > 0 Then
                dMonto := Connection.qryBusca.FieldValues['dMontoMN'] ;

            Connection.qryBusca.Active := False ;
            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Add('Select Sum(g.dCantidad * a.dVentaMN) as dMontoMN, Sum(g.dCantidad * a.dVentaDLL) as dMontoDLL From estimacionxpartida g ' +
                                        'INNER JOIN actividadesxanexo a ON (g.sContrato = a.sContrato And a.sIdConvenio = :Convenio And g.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                        'Where g.sContrato = :Contrato And g.sNumeroOrden = :Orden And g.sNumeroGenerador = :Generador And g.lEstima = "Si" ' +
                                        'Group By g.sContrato, g.sNumeroOrden, g.sNumeroGenerador' ) ;
            Connection.qryBusca.Active := False ;
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato ;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := Global_Convenio ;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Orden').Value := GeneradoresxEstimacion.FieldValues['sNumeroOrden'] ;
            Connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
            Connection.qryBusca.Params.ParamByName('Generador').Value := GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] ;
            Connection.qryBusca.Open ;
            dFinancieroGenerador := 0 ;
            dMontoMN := 0 ;
            dMontoDLL := 0 ;
            If Connection.qryBusca.RecordCount > 0 Then
            Begin
                dMontoMN := Connection.qryBusca.FieldValues['dMontoMN'] ;
                dMontoDLL := Connection.qryBusca.FieldValues['dMontoDLL'] ;
                dFinancieroGenerador := Connection.qryBusca.FieldValues['dMontoMN'] / dMonto ;
            End ;


            dFinancieroGenerador := dFinancieroGenerador * 100 ;
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Update Estimaciones SET dFinancieroGenerador = :Avance, ' +
                                          'dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
                                          'Where sContrato = :Contrato And sNumeroOrden = :Orden And iNumeroEstimacion = :Estimacion And sNumeroGenerador = :Generador') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Orden').Value := GeneradoresxEstimacion.FieldValues['sNumeroOrden'] ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').Value := GeneradoresxEstimacion.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Generador').Value := GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] ;
            connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('Avance').Value := dFinancieroGenerador ;
            connection.zCommand.Params.ParamByName('MontoMN').DataType := ftCurrency ;
            connection.zCommand.Params.ParamByName('MontoMN').Value := dMontoMN ;
            connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftCurrency ;
            connection.zCommand.Params.ParamByName('MontoDLL').Value := dMontoDLL ;
            connection.zCommand.ExecSQL ;
        End ;
        GeneradoresxEstimacion.Next
    End ;
    EstimacionPeriodo.Active := False ;
    EstimacionPeriodo.Open
end;

procedure TfrmEstimaciones.tiNumeroEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdEstimacion.SetFocus
end;

procedure TfrmEstimaciones.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus
end;

procedure TfrmEstimaciones.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsMoneda.SetFocus 
end;

procedure TfrmEstimaciones.tsMonedaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tiNumeroEstimacion.SetFocus
end;

procedure TfrmEstimaciones.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEstimaciones.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEstimaciones.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEstimaciones.cxgrdbtblvwGrid1DBTableView2DblClick(
  Sender: TObject);
begin
   try
  If GeneradoresxEstimacion.RecordCount > 0 Then
  begin
    sGeneradorContrato := GeneradoresxEstimacion.FieldValues['sContrato'] ;
    sGeneradorOrden := GeneradoresxEstimacion.FieldValues['sNumeroOrden'] ;
    sGeneradorNumero := GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] ;
    sGeneradorStatus := GeneradoresxEstimacion.FieldValues['lStatus'] ;

    Application.CreateForm(TfrmEstimacionAlbum, frmEstimacionAlbum);
    frmEstimacionAlbum.show ;
  end
 except
  on e:Exception do
  begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al mostrar formulario Album Fotografico', 0);
  end;
 end;
end;

procedure TfrmEstimaciones.cxgrdbtblvwGrid1DBTableView2MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
    if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmEstimaciones.cxgrdbtblvwGrid1DBTableView2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
end;

procedure TfrmEstimaciones.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEstimaciones.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEstimaciones.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEstimaciones.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEstimaciones.tsTipoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tdIdfecha.SetFocus 
end;

procedure TfrmEstimaciones.tiNumeroEstimacionEnter(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tiNumeroEstimacionExit(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.tsTipoEnter(Sender: TObject);
begin
    tsTipo.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tsTipoExit(Sender: TObject);
begin
    tsTipo.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salidaERP;
end;

function TfrmEstimaciones.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('iNumeroEstimacion');ParamValuesSET.Add(EstimacionPeriodo.FieldByName('iNumeroEstimacion').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('iNumeroEstimacion');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('estimacionperiodo',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end;
end;

function TfrmEstimaciones.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('iNumeroEstimacion');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('estimacionperiodo',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmEstimaciones.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.tsIdEstimacionEnter(Sender: TObject);
begin
tsIdEstimacion.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tsIdEstimacionExit(Sender: TObject);
begin
tsIdEstimacion.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.tsIdEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsTipo.SetFocus
end;

procedure TfrmEstimaciones.tsMonedaEnter(Sender: TObject);
begin
    tsMoneda.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tsMonedaExit(Sender: TObject);
begin
    tsMoneda.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.NumerosGeneradores1Click(Sender: TObject);
begin
    NumGeneradores.Click 
end;

procedure TfrmEstimaciones.SemanalImportes1Click(Sender: TObject);
begin
    SemConImportes.Click
end;

procedure TfrmEstimaciones.SemanalsinImportes1Click(Sender: TObject);
begin
    SemSinImportes.Click 
end;

procedure TfrmEstimaciones.Generador1Click(Sender: TObject);
begin
    Generador.Click 
end;


procedure TfrmEstimaciones.GeneradorClick(Sender: TObject);
Begin
  try
      If GeneradoresxEstimacion.RecordCount > 0 Then
          If lfnValidaGenerador (global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues['sNumeroOrden'], GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] , frmEstimaciones ) Then
          Begin
              Connection.qryBusca.Active := False ;
              Connection.qryBusca.SQL.Clear ;
              Connection.qryBusca.SQL.Add('Select sContrato From ordenesdetrabajo where sContrato = :Contrato') ;
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
              Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
              Connection.qryBusca.Open ;
              If Connection.qryBusca.RecordCount > 1 Then
                    procCaratulaGenerador (0, global_contrato, GeneradoresxEstimacion.FieldValues['iNumeroEstimacion'] , GeneradoresxEstimacion.FieldValues['sNumeroOrden'], GeneradoresxEstimacion.FieldValues['sNumeroGenerador']  , global_convenio, frmEstimaciones, frGenerador.OnGetValue, True)
              Else
                    procCaratulaGenerador (0, global_contrato, GeneradoresxEstimacion.FieldValues['iNumeroEstimacion'] , GeneradoresxEstimacion.FieldValues['sNumeroOrden'], GeneradoresxEstimacion.FieldValues['sNumeroGenerador']  , global_convenio, frmEstimaciones, frGenerador.OnGetValue, False)
          End
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al click en el boton generador', 0);
      end;
  end;
end;

procedure TfrmEstimaciones.grid_1Enter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;

    If EstimacionPeriodo.RecordCount > 0 Then
    Begin
        GeneradoresxEstimacion.Active := False ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').Value := global_contrato ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        GeneradoresxEstimacion.Open ;
    End
end;

//soad -> Modificacion para impresionde Generador Normal o Despiezado...
//**************************************************************************
procedure TfrmEstimaciones.NumGeneradoresClick(Sender: TObject);
begin
  try
      If GeneradoresxEstimacion.RecordCount > 0 Then
      begin
          if Connection.Configuracion.FieldValues['sGenDesp'] = 'Despiezado' then
          begin
              if lfnValidaGenerador( global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], frmEstimaciones ) then
                 procNumeroGeneradorDespiezado( global_contrato, GeneradoresxEstimacion.FieldValues[ 'iNumeroEstimacion' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], global_convenio, 'Cliente', frmEstimaciones, frGenerador.OnGetValue, True )
              else
                 MessageDlg( 'Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [ mbOk ], 0 );
          end;
          if Connection.Configuracion.FieldValues['sGenDesp'] = 'Normales' then
          begin
              if lfnValidaGenerador( global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], frmEstimaciones ) then
                 procNumeroGenerador( global_contrato, GeneradoresxEstimacion.FieldValues[ 'iNumeroEstimacion' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], global_convenio, 'Cliente', frmEstimaciones, frGenerador.OnGetValue, True )
              else
                 MessageDlg( 'Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [ mbOk ], 0 );
          end;
      end;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al click en el boton No. Generadores', 0);
      end;
  end;
end;

procedure TfrmEstimaciones.popEstimacionesPopup(Sender: TObject);
begin
 if TcxGridDBTableView(grid_Estimaciones.ActiveView).DataController.DataSource.DataSet.IsEmpty=true then
  begin
    parciales1.Enabled:=false;
   Acumulados1.Enabled:=false;
  end
 else
 begin
     parciales1.Enabled:=true;
    Acumulados1.Enabled:=true;
 end;
end;

procedure TfrmEstimaciones.SemConImportesClick(Sender: TObject);
begin
  try
    global_caratula := 'MN';
    If GeneradoresxEstimacion.RecordCount > 0 Then
        If lfnValidaGenerador (global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues['sNumeroOrden'], GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] , frmEstimaciones ) Then
             procSemanalSinConImportes(global_contrato, GeneradoresxEstimacion.FieldValues['iNumeroEstimacion'] , GeneradoresxEstimacion.FieldValues['sNumeroOrden'] , GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] , global_convenio, 'Con Importes', frmEstimaciones, frGenerador.OnGetValue, True)
        Else
            MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al click en boton Sem. c/Importes', 0);
      end;
  end;
end;

procedure TfrmEstimaciones.SemSinImportesClick(Sender: TObject);
begin
  try
      If GeneradoresxEstimacion.RecordCount > 0 Then
          If lfnValidaGenerador (global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues['sNumeroOrden'], GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] , frmEstimaciones ) Then
               procSemanalSinConImportes(global_contrato, GeneradoresxEstimacion.FieldValues['iNumeroEstimacion'] , GeneradoresxEstimacion.FieldValues['sNumeroOrden'] , GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] , global_convenio, 'Sin Importes', frmEstimaciones, frGenerador.OnGetValue, True)
          Else
              MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0) ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al click en boton Sem. s/Importes', 0);
      end;
  end;
end;

procedure TfrmEstimaciones.ActualizaFirmas2( dFecha: TDateTime );
Begin
    sSuperIntendente := '' ;
    sSupervisor := '' ;
    sPuestoSuperintendente := '' ;
    sPuestoSupervisor := '' ;
    sSupervisorTierra := '' ;
    sPuestoSupervisorTierra := '' ;
    connection.qryBusca2.Active := False ;
    connection.qryBusca2.SQL.Clear ;
    connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha = :fecha') ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
    Connection.qryBusca2.Params.ParamByName('fecha').Value := dFecha ;
    connection.qryBusca2.Open ;
    If connection.qryBusca2.RecordCount > 0 then
    Begin
        sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
        sSupervisor := connection.qryBusca2.FieldValues['sFirmante4'] ;
        sSupervisorTierra := connection.qryBusca2.FieldValues['sFirmante5'] ;
        sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
        sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto4'] ;
        sPuestoSupervisorTierra := connection.qryBusca2.FieldValues['sPuesto5'] ;
    End
    Else
    Begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha <= :fecha Order By dIdFecha DESC') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('fecha').Value := dFecha ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 then
        Begin
            sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
            sSupervisor := connection.qryBusca2.FieldValues['sFirmante4'] ;
            sSupervisorTierra := connection.qryBusca2.FieldValues['sFirmante5'] ;
            sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
            sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto4'] ;
            sPuestoSupervisorTierra := connection.qryBusca2.FieldValues['sPuesto5'] ;
        End
    End
End ;

procedure TfrmEstimaciones.btnSalirClick(Sender: TObject);
begin
    Grid_Estimaciones.SetFocus
end;


procedure TfrmEstimaciones.btnVerificacionClick(Sender: TObject);
begin
  try
    if GeneradoresxEstimacion.RecordCount > 0 then
    begin
        if lfnValidaGenerador( global_contrato, global_convenio, GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], frmEstimaciones ) then
            procListadeVerificacion( global_contrato, GeneradoresxEstimacion.FieldValues[ 'iNumeroEstimacion' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroOrden' ], GeneradoresxEstimacion.FieldValues[ 'sNumeroGenerador' ], global_convenio, frmEstimaciones, frGenerador.OnGetValue, False )
        else
            MessageDlg( 'Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [ mbOk ], 0 );
    end
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al click en el boton lista de verificacion', 0);
    end;
  end;
end;

procedure TfrmEstimaciones.Grid_EstimacionesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;

    If EstimacionPeriodo.RecordCount > 0 Then
    Begin
        GeneradoresxEstimacion.Active := False ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').Value := global_contrato ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        GeneradoresxEstimacion.Open ;
    End
end;

procedure TfrmEstimaciones.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimaciones.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimaciones.Grid_EstimacionesTitleClick(Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEstimaciones.EstimacionPeriodoAfterScroll(DataSet: TDataSet);
begin
    If EstimacionPeriodo.State <> dsInsert Then
      If EstimacionPeriodo.RecordCount > 0 Then
      Begin
        gbGeneradores.Caption := 'Detalle de Generadores pertenecientes a la Estimación No. [' + EstimacionPeriodo.FieldValues['iNumeroEstimacion'] + ']' ;
        GeneradoresxEstimacion.Active := False ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').Value := global_contrato ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        GeneradoresxEstimacion.Open ;

      End
      Else
      Begin
        gbGeneradores.Caption := 'Detalle de Generadores' ;
        GeneradoresxEstimacion.Active := False ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('contrato').Value := global_contrato ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        GeneradoresxEstimacion.Params.ParamByName('Estimacion').Value := '' ;
        GeneradoresxEstimacion.Open ;
      End ;
end;

procedure TfrmEstimaciones.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
  sIsometricos : String ;
  iValorNumerico : Longint;
  sCadena        : String ;
  Resultado      : Real;
begin
  If CompareText(VarName, 'IMPORTE') = 0 then
      If EstimacionPeriodo.FieldValues['lEstimado'] = 'Si' Then
      Begin
          iValorNumerico := Trunc( EstimacionPeriodo.FieldValues['dMontoMN'] ) ;
          sCadena := xIntToLletres (iValorNumerico) +' PESOS CON ';
          Resultado := roundto(EstimacionPeriodo.FieldValues['dMontoMN'] - iValorNumerico, -2) ;
          Resultado := Resultado * 100;
          iValorNumerico := Trunc(Resultado);
          sCadena := sCadena + xIntToLletres(iValorNumerico) + ' CENTAVOS /100 M.N.';
          Value := sCadena ;
      End
      Else
          Value := 'ESTIMACION PENDIENTE DE AUTORIZAR' ;

  If CompareText(VarName, 'DIAS') = 0 then
        Value := DaysBetween( EstimacionPeriodo.FieldValues['dFechaFinalContrato'] , EstimacionPeriodo.FieldValues['dFechaInicioContrato']) + 1 ;

  If CompareText(VarName, 'REPRESENTANTE_TECNICO') = 0 then
      Value := sRepresentanteTecnico ;
  If CompareText(VarName, 'PUESTO_REPRESENTANTE_TECNICO') = 0 then
      Value := sPuestoRepresentanteTecnico ;

  If CompareText(VarName, 'RESIDENTE') = 0 then
      Value := sResidente ;
  If CompareText(VarName, 'PUESTO_RESIDENTE') = 0 then
      Value := sPuestoResidente ;

  If CompareText(VarName, 'ISOMETRICOS') = 0 then
  Begin
      sIsometricos := '' ;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select distinct sIsometrico, sPrefijo From estimacionxpartida Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                      'sNumeroGenerador = :Generador And sNumeroActividad = :Actividad And sIsometricoReferencia = :Referencia') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Orden').Value := QryGenerador.FieldValues['sNumeroOrden'] ;
      Connection.qryBusca.Params.ParamByName('Generador').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Generador').Value := QryGenerador.FieldValues['sNumeroGenerador'] ;
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'] ;
      Connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Referencia').Value := QryGenerador.FieldValues['sIsometricoReferencia'] ;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          If sIsometricos <> '' Then
              sIsometricos := sIsometricos + ', ' ;
          sIsometricos := sIsometricos + Connection.qryBusca.FieldValues['sIsometrico'] + ' ' + Connection.qryBusca.FieldValues['sPrefijo'] ;
          Connection.qryBusca.Next
      End ;
      Value := sIsometricos ;
  End ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisorGenerador ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;
  If CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisorGenerador ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
      Value := sPuestoResidente ;

  If CompareText(VarName, 'ESTIMACION') = 0 then
      Value := EstimacionPeriodo.FieldValues['sNumeroEstimacion'] ;
  If CompareText(VarName, 'GENERADOR') = 0 then
      Value := GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] ;
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := DateToStr(connection.EstimacionPeriodo.FieldValues['dFechaInicio']) + ' AL ' + DateToStr(connection.EstimacionPeriodo.FieldValues['dFechaFinal']) ;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := GeneradoresxEstimacion.FieldValues['sNumeroOrden'] ;
  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDescripcion ;
  If CompareText(VarName, 'DESCRIPCION') = 0 then
      Value := mDescripcion ;

   If CompareText(VarName, 'T_REALIZO') = 0 then
      Value :=connection.configuracion.FieldByName('sleyenda1').AsString;

   If CompareText(VarName, 'T_AUTORIZO') = 0 then
      Value :=connection.configuracion.FieldByName('sleyenda3').AsString;
end;



procedure TfrmEstimaciones.Grid_GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString <> 'Autorizado' then
        Background := clGradientActiveCaption
end;


procedure TfrmEstimaciones.Grid_MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
//UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimaciones.Grid_MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
//UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimaciones.Grid_TitleClick(Column: TColumn);
begin
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.datasource.DataSet.IsEmpty=false  then
if TcxGridDBTableView(grid_Generadores.ActiveView).DataController.DataSource.DataSet.RecordCount>0 then
 //UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmEstimaciones.Grid_DblClick(Sender: TObject);
begin
try
  If GeneradoresxEstimacion.RecordCount > 0 Then
  begin
    sGeneradorContrato := GeneradoresxEstimacion.FieldValues['sContrato'] ;
    sGeneradorOrden := GeneradoresxEstimacion.FieldValues['sNumeroOrden'] ;
    sGeneradorNumero := GeneradoresxEstimacion.FieldValues['sNumeroGenerador'] ;
    sGeneradorStatus := GeneradoresxEstimacion.FieldValues['lStatus'] ;

    Application.CreateForm(TfrmEstimacionAlbum, frmEstimacionAlbum);
    frmEstimacionAlbum.show ;
  end
except
  on e:Exception do
  begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al mostrar formulario Album Fotografico', 0);
  end;
end;
end;


procedure TfrmEstimaciones.frmBarra1btnPrinterClick(Sender: TObject);
begin
try
if TcxGridDBTableView(grid_Estimaciones.ActiveView).DataController.DataSource.DataSet.IsEmpty=false then
 begin
   rDiarioFirmas (global_contrato, '', 'A',EstimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;
   ActividadesxEstimacion.Active := False ;
   ActividadesxEstimacion.SQL.Clear ;
   ActividadesxEstimacion.SQL.Add('Select * from actividadesxestimacion Where sContrato = :contrato and iNumeroEstimacion = :Estimacion order by iItemOrden') ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').Value := Global_Contrato ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
   ActividadesxEstimacion.Open ;

   if ActividadesxEstimacion.RecordCount > 0 then
   begin
     frGenerador.PreviewOptions.MDIChild := False ;
     frGenerador.PreviewOptions.Modal := True ;
     frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
     frGenerador.PreviewOptions.ShowCaptions := False ;
     frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
     if connection.configuracion.FieldByName('eEstRep').AsString = 'No' then
       frGenerador.LoadFromFile (global_files + global_miReporte + '_Estimacion.fr3')
     else
      frGenerador.LoadFromFile (global_files+ global_miReporte + '_Estimacion2.fr3');
     frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
     if not FileExists(global_files + global_miReporte +'_Estimacion.fr3') then
       showmessage('El archivo de reporte Estimacion.fr3 no existe, notifique al administrador del sistema');
   end
   else begin
     showmessage('No hay datos para imprimir');
   end;

   ActividadesxEstimacion.Active := False
 end;
except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al imprimir', 0);
    end;
end;
end;

procedure TfrmEstimaciones.EstimacionPeriodoCalcFields(DataSet: TDataSet);
begin
    If EstimacionPeriodo.State <> dsEdit Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sDescripcion From tiposdeestimacion ' +
                                    'Where sIdTipoEstimacion = :Tipo') ;
        Connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Tipo').Value := EstimacionPeriodo.FieldValues['sIdTipoEstimacion'] ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 then
              EstimacionPeriodosDescripcion.Value := Connection.qryBusca.FieldValues['sDescripcion']
        Else
              EstimacionPeriodosDescripcion.Value := ''
    End ;
end;

procedure TfrmEstimaciones.ActividadesxEstimacionCalcFields(
  DataSet: TDataSet);
begin
     If ActividadesxEstimacion.FieldValues['sWbs'] <> Null Then
        ActividadesxEstimacionsWbsSpace.Text := espaces (ActividadesxEstimacion.FieldValues['iNivel']) + ActividadesxEstimacion.FieldValues['sWbs'] ;
end;

procedure TfrmEstimaciones.mnEstimacionClick(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmEstimaciones.mnConcentradoEstimacionClick(Sender: TObject);
var
  sDir: string;
begin
  try
    rDiarioFirmas (global_contrato, '' , 'A',EstimacionPeriodo.fieldValues['dFechaFinal'] , frmEstimaciones ) ;
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('Select e.iNumeroEstimacion, e2.sNumeroEstimacion, If( e.sTipoActividad = "Paquete", e.sWbs , ' +
                                'concat("      "  , e.sNumeroActividad)) as sConcepto, e.mDescripcion, e.sMedida, ' +
                                'If( e.sTipoActividad = "Paquete", 0 , e.dCantidadAnexo) as dCantidadAnexo, e.dVentaMN, e.dCantidad, e.dMontoMN ' +
                                'From actividadesxestimacion e ' +
                                'INNER JOIN estimacionperiodo e2 ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion And ' +
                                'e.iNumeroEstimacion <= :Estimacion And e2.lEstimado = "Si") ' +
                                'Where e.sContrato = :Contrato Order By e.iNumeroEstimacion, e.iItemOrden') ;
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.fieldValues['iNumeroEstimacion'] ;

    dsInforme.FieldAliases.Clear ;
    dsInforme.DataSet := connection.QryBusca ;
    connection.QryBusca.Open ;
    if connection.QryBusca.RecordCount > 0 then
    begin
        If MessageDlg('Desea imprimir el consolidado en Importes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            sDir := 'ConcentradoEstimacionesDetalle.fr3'
        Else
            sDir := 'ConcentradoEstimacionesDetalleVolumen.fr3' ;
        frGenerador.LoadFromFile (global_files + sDir);
        frGenerador.PreviewOptions.MDIChild := False ;
        frGenerador.PreviewOptions.Modal := True ;
        frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
        frGenerador.PreviewOptions.ShowCaptions := False ;
        frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
        frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + sDir) then
            showmessage('El archivo de reporte ' + sDir + ' no existe, notifique al administrador del sistema');
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar acumulado estimacion', 0);
    end;
  end;
end;

procedure TfrmEstimaciones.mnIsometricosClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  If Global_contrato= global_Contrato_Barco Then
     QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion,ep.sNumeroEstimacion, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'e.sIsometrico, e.sPrefijo, e.dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador and e2.iNumeroEstimacion = :Estimacion)' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato order by a.iItemOrden, e.sIsometrico') ;
  If Global_contrato<> global_Contrato_Barco Then
     QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'e.sIsometrico, e.sPrefijo, e.dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador and e2.iNumeroEstimacion = :Estimacion)' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato order by a.iItemOrden, e.sIsometrico') ;

  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_IsometricosxEstimacion.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_IsometricosxEstimacion.fr3') then
      showmessage('El archivo de reporte IsometricosxEstimacion.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir')
  end;
  QryConcentradoIsometricos.Destroy ;
except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar isometricos', 0);
    end;
end;
end;

procedure TfrmEstimaciones.mnConcentradoIsometricosClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  If Global_contrato= global_Contrato_Barco Then
    QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e2.sNumeroOrden, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'e.sIsometrico, e.sPrefijo, e.dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador and e2.iNumeroEstimacion <= :Estimacion)' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" And a.sWbs=e.sWbs) ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato order by a.iItemOrden, e.sIsometrico') ;

  If Global_contrato<> global_Contrato_Barco Then
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e2.sNumeroOrden, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'e.sIsometrico, e.sPrefijo, e.dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador and e2.iNumeroEstimacion <= :Estimacion)' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato order by a.iItemOrden, e.sIsometrico') ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_ConcentradoIsometricosxEstimacion.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_ConcentradoIsometricosxEstimacion.fr3') then
      showmessage('El archivo de reporte ConcentradoIsometricosxEstimacion.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;

  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar acumulado isometricos', 0);
  end;
end;
end;

procedure TfrmEstimaciones.mnGeneradoresClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador And e2.iNumeroEstimacion = :Estimacion) ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sWbscontrato = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato Group By a.iItemOrden, e2.sNumeroOrden, e2.sNumeroGenerador order by a.iItemOrden, e2.sNumeroOrden, e2.iConsecutivo') ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_GeneradoresxEstimacion.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_GeneradoresxEstimacion.fr3') then
      showmessage('El archivo de reporte GeneradoresxEstimacion.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;

  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar Generadores', 0);
  end;
end;
end;

procedure TfrmEstimaciones.mnGeneradorExtraClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, e3.sNumeroEstimacion, e2.mComentarios, e3.dFechaInicio, e3.dFechaFinal, e2.sNumeroOrden, e2.sNumeroGenerador, ' +
                                    'e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dVentaDLL, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador) ' +
                                    'inner join estimacionperiodo e3 on (e3.sContrato = e2.sContrato and e3.iNumeroEstimacion = e2.iNumeroEstimacion and e3.sIdTipoEstimacion = "B") ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'Where e.sContrato = :Contrato Group By e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.sNumeroActividad order by e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.iItemOrden');

  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet  := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_DetalledeGeneradoresExt.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_DetalledeGeneradoresExt.fr3') then
      showmessage('El archivo de reporte DetalledeGeneradoresExt.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;
  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar Detalle de Generadores Extraordinarios', 0);
  end;
end;
end;

procedure TfrmEstimaciones.mnConcentradoGeneradoresClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;

  If global_contrato= global_Contrato_Barco Then
    QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador And e2.iNumeroEstimacion <= :Estimacion) ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" And e.sWbs=a.sWbs) ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato Group By a.iItemOrden, e2.sNumeroOrden, e2.sNumeroGenerador order by a.sNumeroActividad, a.iItemOrden, e2.sNumeroOrden, e2.iConsecutivo') ;
  If global_contrato<> global_Contrato_Barco Then
     QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, ep.sNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador And e2.iNumeroEstimacion <= :Estimacion) ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'inner join estimacionperiodo as ep on(e2.iNumeroEstimacion= ep.iNumeroEstimacion) ' +
                                    'Where e.sContrato = :Contrato ' +
                                    'Group By a.iItemOrden, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iNumeroEstimacion ' +
                                    'order by a.sNumeroActividad, a.iItemOrden, e2.sNumeroOrden, e2.iConsecutivo, e2.iNumeroEstimacion') ;

                                    //order by a.iItemOrden, e2.sNumeroOrden, e2.sNumeroGenerador ') ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet  := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_GeneradoresxEstimacion.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte +  '_GeneradoresxEstimacion.fr3') then
      showmessage('El archivo de reporte GeneradoresxEstimacion.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;
  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar Concentrato de Generadores x Orden', 0);
  end;
end;
end;

procedure TfrmEstimaciones.mnResumenEstimacionClick(Sender: TObject);
begin
 try
   rDiarioFirmas (global_contrato, '', 'A',EstimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;
   ActividadesxEstimacion.Active := False ;
   ActividadesxEstimacion.SQL.Clear ;
   ActividadesxEstimacion.SQL.Add('Select * from actividadesxestimacion Where sContrato = :contrato and iNumeroEstimacion = :Estimacion And sTipoActividad = "Paquete" order by iItemOrden') ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').Value := Global_Contrato ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
   ActividadesxEstimacion.Open ;

   if ActividadesxEstimacion.RecordCount > 0 then
   begin
     frGenerador.PreviewOptions.MDIChild := False ;
     frGenerador.PreviewOptions.Modal := True ;
     frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
     frGenerador.PreviewOptions.ShowCaptions := False ;
     frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
     frGenerador.LoadFromFile (global_files + global_miReporte + '_Estimacion.fr3') ;
     frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
     if not FileExists(global_files + global_miReporte + '_Estimacion.fr3') then
       showmessage('El archivo de reporte Estimacion.fr3 no existe, notifique al administrador del sistema');
   end
   else begin
     showmessage('No hay datos para imprimir');
   end;

   ActividadesxEstimacion.Active := False
 except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar Resumen de Estimacion', 0);
   end;
 end;
end;

procedure TfrmEstimaciones.mnConcentradoResumenEstimacionClick(
  Sender: TObject);
var
    sDir: string;
begin
  try
    rDiarioFirmas (global_contrato, '' , 'A',EstimacionPeriodo.fieldValues['dFechaFinal'] , frmEstimaciones ) ;
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('Select e.iNumeroEstimacion, e2.sNumeroEstimacion, e.sEspecificacion, e.sWbs, e.sWbs as sConcepto, e.mDescripcion, e.sMedida, ' +
                                '0 as dCantidadAnexo, e.dVentaMN, e.dCantidad, e.dMontoMN ' +
                                'From actividadesxestimacion e ' +
                                'INNER JOIN estimacionperiodo e2 ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion And ' +
                                'e.iNumeroEstimacion <= :Estimacion And e2.lEstimado = "Si") ' +
                                'Where e.sContrato = :Contrato and e.sTipoActividad = "Paquete" Order By e.iNumeroEstimacion, e.iItemOrden') ;
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.fieldValues['iNumeroEstimacion'] ;

    dsInforme.FieldAliases.Clear ;
    dsInforme.DataSet := connection.QryBusca ;
    connection.QryBusca.Open ;
    if connection.QryBusca.RecordCount > 0 then
    begin
        If MessageDlg('Desea imprimir el consolidado en Importes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            sDir := 'ConcentradoEstimacionesDetalle.fr3'
        Else
            sDir := 'ConcentradoEstimacionesDetalleVolumen.fr3';
        frGenerador.LoadFromFile (global_files + sDir) ;
        frGenerador.PreviewOptions.MDIChild := False ;
        frGenerador.PreviewOptions.Modal := True ;
        frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
        frGenerador.PreviewOptions.ShowCaptions := False ;
        frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
        frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + sDir) then
            showmessage('El archivo de reporte ' + sDir + ' no existe, notifique al administrador del sistema');
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar acumulado Resumen de Estimacion', 0);
    end;
  end;
end;

procedure TfrmEstimaciones.mnDetalleParcialClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  If Global_contrato= global_Contrato_Barco Then
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, e3.sNumeroEstimacion, e2.mComentarios, e3.dFechaInicio, e3.dFechaFinal, ' +
                                    'e2.sNumeroOrden, e2.sNumeroGenerador, e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dVentaDLL, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador And e2.iNumeroEstimacion = :Estimacion) ' +
                                    'inner join estimacionperiodo e3 on (e3.sContrato = e2.sContrato and e3.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sWbsContrato = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                                    'Where e.sContrato = :Contrato Group By e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.sNumeroActividad order by e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.iItemOrden') ;
  If Global_contrato<> global_Contrato_Barco Then
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, e3.sNumeroEstimacion, e2.mComentarios, e3.dFechaInicio, e3.dFechaFinal, e2.sNumeroOrden, e2.sNumeroGenerador, e.sWbs, e.sNumeroActividad, ' +
                                    'a.mDescripcion, a.sMedida, a.dVentaMN, a.dVentaDLL, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador And e2.iNumeroEstimacion = :Estimacion) ' +
                                    'inner join estimacionperiodo e3 on (e3.sContrato = e2.sContrato and e3.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" And a.sWbs=e.sWbsContrato) ' +
                                    'Where e.sContrato = :Contrato Group By e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.sNumeroActividad order by e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.iItemOrden') ;

  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + 'DetalledeGeneradores.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    frIsometricos.Destroy ;
    if not FileExists(global_files + global_miReporte + '_DetalledeGeneradores.fr3') then
      showmessage('El archivo de reporte DetalledeGeneradores.fr3 no existe, notifique al administrador del sistema');
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;

  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar Detalle de Generadores de Obra', 0);
  end;
end;
end;

procedure TfrmEstimaciones.mnDetalleAcumuladoClick(Sender: TObject);
var
  QryConcentradoIsometricos : tzReadOnlyQuery ;
  frIsometricos             : TfrxReport ;
begin
try
  QryConcentradoIsometricos := tzReadOnlyQuery.Create(Self) ;
  QryConcentradoIsometricos.Connection := connection.zConnection ;
  QryConcentradoIsometricos.Active := False ;
  QryConcentradoIsometricos.SQL.Clear ;
  QryConcentradoIsometricos.SQL.Add('select e2.iNumeroEstimacion, e3.sNumeroEstimacion, e2.mComentarios, e3.dFechaInicio, e3.dFechaFinal, e2.sNumeroOrden, e2.sNumeroGenerador, ' +
                                    'e.sWbs, e.sNumeroActividad, a.mDescripcion, a.sMedida, a.dVentaMN, a.dVentaDLL, a.dCantidadAnexo as dCantidadInstalar, ' +
                                    'sum(e.dCantidad) as dCantidad from estimacionxpartida e ' +
                                    'inner join estimaciones e2 on (e2.sContrato = e.sContrato and e2.sNumeroOrden = e.sNumeroOrden and e2.sNumeroGenerador = e.sNumeroGenerador) ' +
                                    'inner join estimacionperiodo e3 on (e3.sContrato = e2.sContrato and e3.iNumeroEstimacion = e2.iNumeroEstimacion and e3.sIdTipoEstimacion <> "B") ' +
                                    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and ' +
                                    'a.sIdConvenio = :Convenio and e.sWbs = a.sWbs and e.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad" And a.sWbs=e.sWbsContrato) ' +
                                    'Where e.sContrato = :Contrato Group By e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.sNumeroActividad order by e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, a.iItemOrden');

  QryConcentradoIsometricos.Params.ParamByName('contrato').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('contrato').Value := global_contrato ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').DataType := ftString ;
  QryConcentradoIsometricos.Params.ParamByName('convenio').Value := global_convenio ;
  QryConcentradoIsometricos.Open ;

  dsConcentradoIsometricos.DataSet := QryConcentradoIsometricos ;
  dsConcentradoIsometricos.UserName := 'dsConcentradoIsometricos' ;

  rDiarioFirmas (global_contrato, '', 'A',estimacionPeriodo.FieldValues['dFechaFinal'] , frmEstimaciones ) ;

  if QryConcentradoIsometricos.RecordCount > 0 then
  begin
    frIsometricos := tFrxReport.Create(Self) ;
    frIsometricos.DataSets.Add(connection.rpt_contrato) ;
    frIsometricos.DataSets.Add(connection.rpt_setup) ;
    frIsometricos.OnGetValue := frGenerador.OnGetValue ;
    frIsometricos.PreviewOptions.MDIChild := False ;
    frIsometricos.PreviewOptions.Modal := True ;
    frIsometricos.PreviewOptions.Maximized := lCheckMaximized () ;
    frIsometricos.PreviewOptions.ShowCaptions := False ;
    frIsometricos.Previewoptions.ZoomMode := zmPageWidth ;
    frIsometricos.LoadFromFile (global_files + global_miReporte + '_DetalledeGeneradoresExt.fr3') ;
    frIsometricos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_DetalledeGeneradoresExt.fr3') then
      showmessage('El archivo de reporte DetalledeGeneradoresExt.fr3 no existe, notifique al administrador del sistema');
    frIsometricos.Destroy ;
  end
  else begin
    showmessage('No hay datos para imprimir');
  end;
  QryConcentradoIsometricos.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones', 'Al reportar acumulado Detalle de Generadores', 0);
  end;
end;
end;

procedure TfrmEstimaciones.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP
end;

procedure TfrmEstimaciones.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salidaERP;
end;

procedure TfrmEstimaciones.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicio.SetFocus
end;

end.
