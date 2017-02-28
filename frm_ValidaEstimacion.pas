unit frm_ValidaEstimacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_Connection, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons,
  Mask,  global, db, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, Newpanel, frxClass, frxDBSet, utilerias, sTrUtils, DateUtils,
  DBCtrls, Menus, masUtilerias, ExtCtrls, math, RXCtrls, ComCtrls,
  frxRich, rxToolEdit, rxSpeedbar, udbgrid, UnitExcepciones,
  UFunctionsGHH,UnitTBotonesPermisos, DBDateTimePicker, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxTextEdit,
  cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGridLevel, cxGrid, NxCollection, cxContainer, cxMemo,
  cxRichEdit, cxDBRichEdit, cxButtons, ImgList, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfrmValidaEstimacion = class(TForm)
    dsEstimacionPeriodo: TDataSource;
    ActividadesxEstimacion: TZQuery;
    ds_ActividadesxEstimacion: TDataSource;
    ActividadesxEstimacionsContrato: TStringField;
    ActividadesxEstimacioniNumeroEstimacion: TStringField;
    ActividadesxEstimacioniNivel: TIntegerField;
    ActividadesxEstimacionsSimbolo: TStringField;
    ActividadesxEstimacionsWbs: TStringField;
    ActividadesxEstimacionsWbsAnterior: TStringField;
    ActividadesxEstimacionsNumeroActividad: TStringField;
    ActividadesxEstimacionsTipoActividad: TStringField;
    ActividadesxEstimacionsEspecificacion: TStringField;
    ActividadesxEstimacionmDescripcion: TMemoField;
    ActividadesxEstimaciondCostoMN: TFloatField;
    ActividadesxEstimaciondCostoDll: TFloatField;
    ActividadesxEstimaciondVentaMN: TFloatField;
    ActividadesxEstimaciondVentaDLL: TFloatField;
    ActividadesxEstimacionsMedida: TStringField;
    ActividadesxEstimaciondCantidadAnexo: TFloatField;
    ActividadesxEstimacioniColor: TIntegerField;
    ActividadesxEstimaciondAcumuladoAnterior: TFloatField;
    ActividadesxEstimaciondCantidad: TFloatField;
    ActividadesxEstimaciondAcumuladoActual: TFloatField;
    ActividadesxEstimacionsWbsSpace: TStringField;
    dsEstimacionCaratula: TfrxDBDataset;
    ActividadesxEstimaciondMontoMN: TFloatField;
    ActividadesxEstimaciondMontoDLL: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimacioniItemOrden: TStringField;
    dsActividadesxEstimacion: TfrxDBDataset;
    EstimacionPeriodo: TZQuery;
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
    EstimacionPeriododRetencionMN: TFloatField;
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
    EstimacionPeriodosIdUsuarioAutoriza: TStringField;
    EstimacionPeriodosDescripcion: TStringField;
    EstimacionPeriodosFirmas: TMemoField;
    EstimacionPeriododIdFecha: TDateField;
    frGenerador: TfrxReport;
    pnlPartidas: TNxHeaderPanel;
    cxGridPartidas: TcxGrid;
    lvl1: TcxGridLevel;
    cxGrid_Partidas: TcxGridDBTableView;
    cxGrid_PartidassSimbolo1: TcxGridDBColumn;
    cxGrid_PartidassWbsSpace1: TcxGridDBColumn;
    cxGrid_PartidassNumeroActividad1: TcxGridDBColumn;
    cxGrid_PartidasdCantidadAnexo1: TcxGridDBColumn;
    cxGrid_PartidassMedida1: TcxGridDBColumn;
    cxGrid_PartidasdVentaMN1: TcxGridDBColumn;
    cxGrid_PartidasdAcumuladoAnterior1: TcxGridDBColumn;
    cxGrid_PartidasdMontoAcumuladoAnteriorMN1: TcxGridDBColumn;
    cxGrid_PartidasdCantidad1: TcxGridDBColumn;
    cxGrid_PartidasdAcumuladoActual1: TcxGridDBColumn;
    cxGrid_PartidasdMontoMN1: TcxGridDBColumn;
    cxGrid_PartidasdMontoAcumuladoMN1: TcxGridDBColumn;
    cxGridEstimaciones: TcxGrid;
    estlvl: TcxGridLevel;
    cxGrid_Estimaciones: TcxGridDBTableView;
    cxGrid_EstimacionesiNumeroEstimacion1: TcxGridDBColumn;
    cxGrid_EstimacionessDescripcion1: TcxGridDBColumn;
    cxGrid_EstimacioneslEstimado1: TcxGridDBColumn;
    cxGrid_EstimacionesdFechaInicio1: TcxGridDBColumn;
    cxGrid_EstimacionesdFechaFinal1: TcxGridDBColumn;
    cxGrid_EstimacionesdMontoMN1: TcxGridDBColumn;
    cxGrid_EstimacionesdMontoDLL1: TcxGridDBColumn;
    cxGrid_EstimacionesdMontoAcumuladoMN1: TcxGridDBColumn;
    cxGrid_EstimacionesdMontoAcumuladoDLL1: TcxGridDBColumn;
    cxGrid_EstimacionesdRetencion1: TcxGridDBColumn;
    tsFirmas: TcxDBRichEdit;
    NxHeaderPanel1: TNxHeaderPanel;
    iconos: TcxImageList;
    mCabecera: TcxButton;
    sEstimacionVacia: TcxButton;
    sEstimacionGeneradores: TcxButton;
    sActualizaAcum: TcxButton;
    sElimina: TcxButton;
    sEliminaCeros: TcxButton;
    mEditar: TcxButton;
    mImprimir: TcxButton;
    piePagina1: TNxHeaderPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    tsElementoPEP1: TcxDBTextEdit;
    tsFondo1: TcxDBTextEdit;
    tsPosicionFinanciera1: TcxDBTextEdit;
    tsCuentaMayor1: TcxDBTextEdit;
    tsCentroGestor1: TcxDBTextEdit;
    tsCentroCosto1: TcxDBTextEdit;
    tsCentroBeneficio1: TcxDBTextEdit;
    tsProyecto1: TcxDBTextEdit;
    tmComentarios1: TcxDBMemo;
    NxHeaderPanel3: TNxHeaderPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    tdMontoContrato1: TcxDBTextEdit;
    tdFechaInicio1: TcxDBDateEdit;
    tdFechaFinal1: TcxDBDateEdit;
    tdAvProgramadoFisico1: TcxDBTextEdit;
    tdAvFisicoReal1: TcxDBTextEdit;
    tdAvFinancieroReal1: TcxDBTextEdit;
    tdAvFinancieroProgramado1: TcxDBTextEdit;
    tdMontoMensualMN1: TcxDBTextEdit;
    tdMontoAcumuladoMN1: TcxDBTextEdit;
    tdRetencionMN1: TcxDBTextEdit;
    btnInformacion1: TcxButton;
    iconos32x32: TcxImageList;
    procedure FormShow(Sender: TObject);
    procedure EstimacionPeriodoCalcFields(DataSet: TDataSet);
    procedure ActividadesxEstimacionCalcFields(DataSet: TDataSet);
    procedure Grid_EstimacionesDblClick(Sender: TObject);
    procedure ActividadesxEstimaciondCantidadChange(Sender: TField);
    procedure ActividadesxEstimacionBeforeInsert(DataSet: TDataSet);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure Grid_PartidasDblClick(Sender: TObject);
    procedure gpPartidasDblClick(Sender: TObject);
    procedure EstimacionPeriodoAfterScroll(DataSet: TDataSet);
    procedure btnInformacionClick(Sender: TObject);
    procedure EstimacionPeriodoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sEstimacionVaciaClick(Sender: TObject);
    procedure sEstimacionGeneradoresClick(Sender: TObject);
    procedure sActualizaAcumClick(Sender: TObject);
    procedure sEliminaClick(Sender: TObject);
    procedure sEliminaCerosClick(Sender: TObject);
    procedure mEditarClick(Sender: TObject);
    procedure mImprimirClick(Sender: TObject);
    procedure mCabeceraClick(Sender: TObject);
    procedure ActividadesxEstimacionBeforeDelete(DataSet: TDataSet);
    procedure ActividadesxEstimacionAfterScroll(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_PartidasTitleClick(Column: TColumn);
    procedure cxGrid_PartidasDblClick(Sender: TObject);
    procedure tsElementoPEP1Enter(Sender: TObject);
    procedure tsElementoPEP1Exit(Sender: TObject);
    procedure tsElementoPEP1KeyPress(Sender: TObject; var Key: Char);
    procedure tsFondo1KeyPress(Sender: TObject; var Key: Char);
    procedure tsPosicionFinanciera1KeyPress(Sender: TObject; var Key: Char);
    procedure tsCuentaMayor1KeyPress(Sender: TObject; var Key: Char);
    procedure tsCentroGestor1KeyPress(Sender: TObject; var Key: Char);
    procedure tsCentroCosto1KeyPress(Sender: TObject; var Key: Char);
    procedure tsCentroBeneficio1KeyPress(Sender: TObject; var Key: Char);
    procedure tsProyecto1KeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoContrato1KeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicio1KeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinal1KeyPress(Sender: TObject; var Key: Char);
    procedure tdAvProgramadoFisico1KeyPress(Sender: TObject; var Key: Char);
    procedure tdAvFisicoReal1KeyPress(Sender: TObject; var Key: Char);
    procedure tdAvFinancieroProgramado1KeyPress(Sender: TObject; var Key: Char);
    procedure tdAvFinancieroReal1KeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoMensualMN1KeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoAcumuladoMN1KeyPress(Sender: TObject; var Key: Char);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidaEstimacion: TfrmValidaEstimacion;
  sFiltro       : String ;
  SavePlace  : TBookmark;
  sProceso   : String ;
  //utGrid:TicDbGrid;
  //utGrid2:TicDbGrid;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

procedure TfrmValidaEstimacion.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opValidaEst');
  BotonPermiso.permisosBotones(nil);
  if not BotonPermiso.agregar then
  begin
    sEstimacionVacia.Enabled:=False;
    sEstimacionGeneradores.enabled:=False;
    sActualizaAcum.enabled:=False;
  end;
  if not BotonPermiso.editar then
  begin
    mEditar.enabled:=False;
    mCabecera.enabled:=False;
  end;
  if not BotonPermiso.borrar then
  begin
    sElimina.enabled:=False;
    sEliminaCeros.enabled:=False;
  end;
  if not BotonPermiso.imprimir then
    mImprimir.enabled:=False;

  sMenuP:=stMenu;
  EstimacionPeriodo.Active := False ;
  EstimacionPeriodo.Params.ParamByName('contrato').DataType := ftString ;
  EstimacionPeriodo.Params.ParamByName('contrato').Value := global_contrato ;
  EstimacionPeriodo.Open ;
end;

procedure TfrmValidaEstimacion.EstimacionPeriodoCalcFields(
  DataSet: TDataSet);
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

procedure TfrmValidaEstimacion.ActividadesxEstimacionCalcFields(
  DataSet: TDataSet);
begin
     If ActividadesxEstimacion.FieldValues['sWbs'] <> Null Then
        ActividadesxEstimacionsWbsSpace.Text := espaces (ActividadesxEstimacion.FieldValues['iNivel']) + ActividadesxEstimacion.FieldValues['sWbs'] ;
end;

procedure TfrmValidaEstimacion.Grid_EstimacionesDblClick(Sender: TObject);
begin
    mEditar.Click
end;

procedure TfrmValidaEstimacion.ActividadesxEstimaciondCantidadChange(
  Sender: TField);
begin
    If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Paquete' Then
        ActividadesxEstimacion.Cancel
    Else
    Begin
        ActividadesxEstimacion.FieldValues['dMontoMN'] := ActividadesxEstimacion.FieldValues['dCantidad'] * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
        ActividadesxEstimacion.FieldValues['dMontoDLL'] := ActividadesxEstimacion.FieldValues['dCantidad'] * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
        ActividadesxEstimacion.FieldValues['dAcumuladoActual'] := ActividadesxEstimacion.FieldValues['dCantidad'] + ActividadesxEstimacion.FieldValues['dAcumuladoAnterior'] ;
        ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN'] := ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN'] + ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
        ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL'] := ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL'] + ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaDLL']
    End
end;

procedure TfrmValidaEstimacion.ActividadesxEstimacionBeforeInsert(
  DataSet: TDataSet);
begin
    Abort
end;

procedure TfrmValidaEstimacion.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
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
          sCadena := sCadena + xIntToLletres(iValorNumerico) + ' CENTAVOS /100 M.N';
          Value := sCadena ;
      End
      Else
          Value := 'ESTIMACION PENDIENTE DE AUTORIZAR' ;
  If CompareText(VarName, 'DIAS') = 0 then
        Value := DaysBetween( EstimacionPeriodo.FieldValues['dFechaFinalContrato'] , EstimacionPeriodo.FieldValues['dFechaInicioContrato']) + 1 ;
  If CompareText(VarName, 'REPRESENTANTE_TECNICO') = 0 then
      Value := sRepresentanteTecnico ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;
  If CompareText(VarName, 'RESIDENTE') = 0 then
      Value := sResidente ;

  If CompareText(VarName, 'PUESTO_REPRESENTANTE_TECNICO') = 0 then
      Value := sPuestoRepresentanteTecnico ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
  If CompareText(VarName, 'PUESTO_RESIDENTE') = 0 then
      Value := sPuestoResidente ;


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




end;

procedure TfrmValidaEstimacion.Grid_PartidasDblClick(Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
begin
if ActividadesxEstimacion.IsEmpty=false  then
 begin
 if ActividadesxEstimacion.RecordCount>0 then
  begin
   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxEstimacion.FieldValues['sWbs']) + '.%"' ;
   SavePlace := ActividadesxEstimacion.GetBookmark ;
   If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxEstimacion.FieldValues['sSimbolo'] = '-' Then
      begin
          Connection.zCommand.Active := False ;
          Connection.zCommand.SQL.Clear ;
          Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "+" Where sContrato = :contrato and iNumeroEstimacion = :estimacion and sWbs = :wbs And sTipoActividad = "Paquete"') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxEstimacion.FieldValues['sContrato'] ;
          connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Estimacion').Value := ActividadesxEstimacion.FieldValues['iNumeroEstimacion'] ;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxEstimacion.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL ;
          If Pos(sCondicion , sFiltro) = 0 Then
              If sFiltro <> '' Then
                  sFiltro := sFiltro + sCondicion
              Else
                  sFiltro := sCondicion ;
      End
      Else
      begin
          Connection.zCommand.Active := False ;
          Connection.zCommand.SQL.Clear ;
          Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "-" Where sContrato = :contrato and iNumeroEstimacion = :Estimacion and sWbs = :wbs And sTipoActividad = "Paquete"') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxEstimacion.FieldValues['sContrato'] ;
          connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Estimacion').Value := ActividadesxEstimacion.FieldValues['iNumeroEstimacion'] ;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxEstimacion.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL ;
          If Pos(sCondicion , sFiltro) > 0 Then
              sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
      end ;
   sSelect := 'Select * from actividadesxestimacion Where sContrato = :contrato and iNumeroEstimacion = :Estimacion ' + sFiltro + ' order by iItemOrden' ;
   ActividadesxEstimacion.Filter := '' ;
   ActividadesxEstimacion.Filtered := False ;
   ActividadesxEstimacion.Active := False ;
   ActividadesxEstimacion.SQL.Clear ;
   ActividadesxEstimacion.SQL.Add(sSelect) ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
   ActividadesxEstimacion.Open ;
   Try
       ActividadesxEstimacion.GotoBookmark(SavePlace);
   Except
   Else
        ActividadesxEstimacion.FreeBookmark(SavePlace);
   End ;

  end;
 end;

end;

procedure TfrmValidaEstimacion.tsElementoPEP1Enter(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := $00F0F0F0;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := $00F0F0F0;
  if (Sender is TcxDBDateEdit) then
    (Sender as TcxDBDateEdit).Style.Color := $00F0F0F0;
end;

procedure TfrmValidaEstimacion.tsElementoPEP1Exit(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := clWhite;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := clWhite;
  if (Sender is TcxDBDateEdit) then
    (Sender as TcxDBDateEdit).Style.Color := clWhite;
end;

procedure TfrmValidaEstimacion.tsElementoPEP1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsFondo1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsFondo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPosicionFinanciera1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsPosicionFinanciera1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsCuentaMayor1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsCuentaMayor1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsCentroGestor1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsCentroGestor1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsCentroCosto1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsCentroCosto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsCentroBeneficio1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsCentroBeneficio1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsProyecto1.SetFocus;
end;

procedure TfrmValidaEstimacion.tsProyecto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentarios1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdMontoContrato1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechaInicio1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdFechaInicio1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdFechaFinal1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdFechaFinal1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdAvProgramadoFisico1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdAvProgramadoFisico1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdAvFisicoReal1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdAvFisicoReal1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdAvFinancieroProgramado1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdAvFinancieroProgramado1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdAvFinancieroReal1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdAvFinancieroReal1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdMontoMensualMN1.SetFocus;
end;

procedure TfrmValidaEstimacion.gpPartidasDblClick(Sender: TObject);
begin
    If ActividadesxEstimacion.Filter = '' Then
    Begin
        ActividadesxEstimacion.Filter := 'dCantidad <> 0' ;
        ActividadesxEstimacion.Filtered := True ;
    End
    Else
    Begin
        ActividadesxEstimacion.Filter := '' ;
        ActividadesxEstimacion.Filtered := False ;
    End
end;

procedure TfrmValidaEstimacion.tdMontoMensualMN1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdMontoAcumuladoMN1.SetFocus;
end;

procedure TfrmValidaEstimacion.tdMontoAcumuladoMN1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdRetencionMN1.SetFocus;
end;

procedure TfrmValidaEstimacion.EstimacionPeriodoAfterScroll(
  DataSet: TDataSet);
begin
    ActividadesxEstimacion.Active := False ; 
end;

procedure TfrmValidaEstimacion.btnInformacionClick(Sender: TObject);
begin
  try
    If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
    Begin
        EstimacionPeriodo.Edit ;

        procAvances (global_contrato, '', global_convenio, 'A', EstimacionPeriodo.FieldValues['dFechaFinal'], False, frmValidaEstimacion ) ;
        EstimacionPeriodo.FieldValues['dAvanceFisicoProgramado'] := dProgramadoGlobalAcumulado ;
        EstimacionPeriodo.FieldValues['dAvanceFisicoReal'] := dRealGlobalAcumulado ;

        // Acumulados Mensuales del Anexo DE
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('select sum(DEmn) as dMontoMN, sum(DEdll) as dMontoDLL from anexosmensuales ' +
                                    'Where sContrato = :Contrato And sIdConvenio = :convenio and dIdFecha = :Fecha group by sContrato') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
        connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
        connection.QryBusca.Params.ParamByName('fecha').Value :=  StrToDate( sfnFechaFinal (MonthOf(EstimacionPeriodo.FieldValues['dFechaFinal']), YearOf(EstimacionPeriodo.FieldValues['dFechaFinal']) ) ) ;
        connection.QryBusca.Open ;
        If connection.QryBusca.RecordCount > 0 Then
        Begin
            EstimacionPeriodo.FieldValues['dMontoProgramadoMensualMN'] := connection.QryBusca.FieldValues['dMontoMN'] ;
            EstimacionPeriodo.FieldValues['dMontoProgramadoMensualDLL'] := connection.QryBusca.FieldValues['dMontoDLL'] ;
        End ;
        // Acumulados Mensuales del Anexo DE
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('select sum(DEmn) as dMontoMN, sum(DEdll) as dMontoDLL from anexosmensuales ' +
                                    'Where sContrato = :Contrato And sIdConvenio = :convenio And dIdFecha <= :Fecha group by sContrato') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
        connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
        connection.QryBusca.Params.ParamByName('fecha').Value :=  StrToDate( sfnFechaFinal (MonthOf(EstimacionPeriodo.FieldValues['dFechaFinal']), YearOf(EstimacionPeriodo.FieldValues['dFechaFinal']))) ;
        connection.QryBusca.Open ;
        If connection.QryBusca.RecordCount > 0 Then
        Begin
            EstimacionPeriodo.FieldValues['dMontoProgramadoAcumuladoMN'] := connection.QryBusca.FieldValues['dMontoMN'] ;
            EstimacionPeriodo.FieldValues['dMontoProgramadoAcumuladoDLL'] := connection.QryBusca.FieldValues['dMontoDLL'] ;
        End ;


       connection.QryBusca.Active := False ;
       connection.QryBusca.SQL.Clear ;
       connection.QryBusca.SQL.Add('select sElementoPEP, sFondo, sPosicionFinanciera, sCuentaMayor, sCentroGestor, sCentroCosto, ' +
                                   'sCentroBeneficio, sProyecto from estimacionperiodo Where sContrato = :Contrato and ' +
                                   'iNumeroEstimacion < :Estimacion Order By iNumeroEstimacion DESC') ;
       connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
       connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
       connection.QryBusca.Params.ParamByName('estimacion').DataType := ftString ;
       connection.QryBusca.Params.ParamByName('estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
       connection.QryBusca.Open ;
       If connection.QryBusca.RecordCount > 0 Then
       Begin
           EstimacionPeriodo.FieldValues['sElementoPEP'] := connection.QryBusca.FieldValues['sElementoPEP'] ;
           EstimacionPeriodo.FieldValues['sFondo'] := connection.QryBusca.FieldValues['sFondo'] ;
           EstimacionPeriodo.FieldValues['sPosicionFinanciera'] := connection.QryBusca.FieldValues['sPosicionFinanciera'] ;
           EstimacionPeriodo.FieldValues['sCuentaMayor'] := connection.QryBusca.FieldValues['sCuentaMayor'] ;
           EstimacionPeriodo.FieldValues['sCentroGestor'] := connection.QryBusca.FieldValues['sCentroGestor'] ;
           EstimacionPeriodo.FieldValues['sCentroCosto'] := connection.QryBusca.FieldValues['sCentroCosto'] ;
           EstimacionPeriodo.FieldValues['sCentroBeneficio'] := connection.QryBusca.FieldValues['sCentroBeneficio'] ;
           EstimacionPeriodo.FieldValues['sProyecto'] := connection.QryBusca.FieldValues['sProyecto'] ;
       End ;

       Connection.qryBusca.Active := False ;
       Connection.qryBusca.SQL.Clear ;
       Connection.qryBusca.SQL.Add('Select Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                                   'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Actividad" Group By sContrato') ;
       Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
       Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
       Connection.qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
       Connection.qryBusca.Open ;
       If Connection.qryBusca.RecordCount > 0 then
       Begin
           EstimacionPeriodo.FieldValues['dMontoMN'] := Connection.qryBusca.FieldValues['dMontoMN'] ;
           EstimacionPeriodo.FieldValues['dMontoDLL'] := Connection.qryBusca.FieldValues['dMontoDLL']
       End
       Else
       Begin
           EstimacionPeriodo.FieldValues['dMontoMN'] := 0 ;
           EstimacionPeriodo.FieldValues['dMontoDLL'] := 0
       End ;

       // Obtener el monto acumulado de todas las estimaciones aplicadas ...
       Connection.qryBusca2.Active := False ;
       Connection.qryBusca2.SQL.Clear ;
       Connection.qryBusca2.SQL.Add('Select Sum(a.dMontoMN) as dMontoMN, Sum(a.dMontoDLL) as dMontoDLL From actividadesxestimacion a ' +
                                    'inner join estimacionperiodo e on (a.sContrato = e.sContrato and a.iNumeroEstimacion = e.iNumeroEstimacion) ' +
                                    'Where a.sContrato = :Contrato And a.iNumeroEstimacion <= :Estimacion and a.sTipoActividad = "Actividad" ' +
                                    'Group By a.sContrato') ;
       Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
       Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
       Connection.QryBusca2.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
       Connection.qryBusca2.Open ;
       If Connection.qryBusca2.RecordCount > 0 then
       begin
           EstimacionPeriodo.FieldValues['dMontoAcumuladoMN']:= Connection.qryBusca2.FieldValues['dMontoMN'] ;
           EstimacionPeriodo.FieldValues['dMontoAcumuladoDLL'] := Connection.qryBusca2.FieldValues['dMontoDLL'] ;
       End
       Else
       begin
           EstimacionPeriodo.FieldValues['dMontoAcumuladoMN']:= 0 ;
           EstimacionPeriodo.FieldValues['dMontoAcumuladoDLL'] := 0 ;
       end ;

       connection.QryBusca2.Active := False ;
       connection.QryBusca2.SQL.Clear ;
       connection.QryBusca2.SQL.Add('select dFechaInicio, dFechaFinal, dMontoMN, dMontoDLL from convenios ' +
                                    'Where sContrato = :contrato and sIdConvenio = :convenio') ;
       connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString ;
       connection.QryBusca2.Params.ParamByName('contrato').Value := global_contrato ;
       connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
       connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio ;
       connection.QryBusca2.Open ;
       If connection.QryBusca2.RecordCount > 0 Then
       Begin
           EstimacionPeriodo.FieldValues['dFechaInicioContrato']:= Connection.qryBusca2.FieldValues['dFechaInicio'] ;
           EstimacionPeriodo.FieldValues['dFechaFinalContrato']:= Connection.qryBusca2.FieldValues['dFechaFinal'] ;
           EstimacionPeriodo.FieldValues['dMontoContratoMN']:= Connection.qryBusca2.FieldValues['dMontoMN'] ;
           EstimacionPeriodo.FieldValues['dMontoContratoDLL']:= Connection.qryBusca2.FieldValues['dMontoDLL'] ;
       End
       Else
       Begin
           EstimacionPeriodo.FieldValues['dFechaInicioContrato']:= Date ;
           EstimacionPeriodo.FieldValues['dFechaFinalContrato']:= Date ;
           EstimacionPeriodo.FieldValues['dMontoContratoMN']:= 0 ;
           EstimacionPeriodo.FieldValues['dMontoContratoDLL']:= 0 ;
       End ;
       EstimacionPeriodo.Post ;
    End ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al actualizar informacion del contrato', 0);
    end;
  end;
end;

procedure TfrmValidaEstimacion.cxGrid_PartidasDblClick(Sender: TObject);
var
   sCondicion : String ;
   sSelect    : String ;
begin
  if ActividadesxEstimacion.IsEmpty=false  then
  begin
    if ActividadesxEstimacion.RecordCount>0 then
    begin
      sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxEstimacion.FieldValues['sWbs']) + '.%"' ;
      SavePlace := ActividadesxEstimacion.GetBookmark ;
      If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Paquete' Then
        If ActividadesxEstimacion.FieldValues['sSimbolo'] = '-' Then
        begin
            Connection.zCommand.Active := False ;
            Connection.zCommand.SQL.Clear ;
            Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "+" Where sContrato = :contrato and iNumeroEstimacion = :estimacion and sWbs = :wbs And sTipoActividad = "Paquete"') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxEstimacion.FieldValues['sContrato'] ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').Value := ActividadesxEstimacion.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
            connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxEstimacion.FieldValues['sWbs'] ;
            connection.zCommand.ExecSQL ;
            If Pos(sCondicion , sFiltro) = 0 Then
                If sFiltro <> '' Then
                    sFiltro := sFiltro + sCondicion
                Else
                    sFiltro := sCondicion ;
        End
        Else
        begin
            Connection.zCommand.Active := False ;
            Connection.zCommand.SQL.Clear ;
            Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "-" Where sContrato = :contrato and iNumeroEstimacion = :Estimacion and sWbs = :wbs And sTipoActividad = "Paquete"') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxEstimacion.FieldValues['sContrato'] ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').Value := ActividadesxEstimacion.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
            connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxEstimacion.FieldValues['sWbs'] ;
            connection.zCommand.ExecSQL ;
            If Pos(sCondicion , sFiltro) > 0 Then
                sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
        end ;
      sSelect := 'Select * from actividadesxestimacion Where sContrato = :contrato and iNumeroEstimacion = :Estimacion ' + sFiltro + ' order by iItemOrden' ;
      ActividadesxEstimacion.Filter := '' ;
      ActividadesxEstimacion.Filtered := False ;
      ActividadesxEstimacion.Active := False ;
      ActividadesxEstimacion.SQL.Clear ;
      ActividadesxEstimacion.SQL.Add(sSelect) ;
      ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
      ActividadesxEstimacion.Params.ParamByName('Contrato').Value := global_contrato ;
      ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
      ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
      ActividadesxEstimacion.Open ;
      Try
         ActividadesxEstimacion.GotoBookmark(SavePlace);
      Except
      Else
          ActividadesxEstimacion.FreeBookmark(SavePlace);
      End ;

    end;
  end;

end;

procedure TfrmValidaEstimacion.EstimacionPeriodoBeforePost(
  DataSet: TDataSet);
begin
    If DataSet.FieldValues['lEstimado'] = 'Si' Then
        DataSet.Cancel
end;

procedure TfrmValidaEstimacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
end;

procedure TfrmValidaEstimacion.FormActivate(Sender: TObject);
begin
  EstimacionPeriodo.Active := False ;
  EstimacionPeriodo.Params.ParamByName('contrato').DataType := ftString ;
  EstimacionPeriodo.Params.ParamByName('contrato').Value := global_contrato ;
  EstimacionPeriodo.Open ;
end;

procedure TfrmValidaEstimacion.sEstimacionVaciaClick(Sender: TObject);
Var
    dAcumulado : Double ;
    lPoder : Boolean ;
begin
  try
    If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
       lPoder := True
    Else
    Begin
        MessageDlg('Estimacion AUTORIZADA, no se pueden realizar cambios.', mtWarning, [mbOk], 0) ;
        lPoder := False
    End ;

    If lPoder Then
    Begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from actividadesxestimacion where sContrato = :contrato And iNumeroEstimacion = :Estimacion ') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        connection.zCommand.ExecSQL ;

        // Inserccion de todos los paquetes en 0 a la fecha seleccionada ....
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'insert into actividadesxestimacion (sContrato, iNumeroEstimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, ' +
                                      'sTipoActividad, sEspecificacion, iItemOrden, mDescripcion, dCostoMN, ' +
                                      'dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, ' +
                                      'dAcumuladoAnterior, dMontoAcumuladoAnteriorMN, dMontoAcumuladoAnteriorDLL, dCantidad, dMontoMN, dMontoDLL, dAcumuladoActual, dMontoAcumuladoMN, dMontoAcumuladoDLL) ' +
                                      'select sContrato, :Estimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, sTipoActividad, sEspecificacion, ' +
                                      'iItemOrden, mDescripcion, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, 0, 0, 0, 0, 0, 0 , 0 , 0 , 0 ' +
                                      'from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :convenio') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
        connection.zCommand.Params.ParamByName('convenio').Value := global_convenio ;
        connection.zCommand.ExecSQL () ;

        ActividadesxEstimacion.Filter := '' ;
        ActividadesxEstimacion.Filtered := False ;
        ActividadesxEstimacion.Active := False ;
        ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxEstimacion.Params.ParamByName('Contrato').Value := Global_Contrato ;
        ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        ActividadesxEstimacion.Open ;
        While NOt ActividadesxEstimacion.Eof Do
        Begin
            If ActividadesxEstimacion.FieldValues ['sTipoActividad'] = 'Actividad' Then
            Begin
                 Connection.qryBusca2.Active := False ;
                 Connection.qryBusca2.SQL.Clear ;
                 Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as Generado From actividadesxestimacion a ' +
                                              'inner join estimacionperiodo e on (a.sContrato = e.sContrato and a.iNumeroEstimacion = e.iNumeroEstimacion) ' +
                                              'Where a.sContrato = :Contrato And a.iNumeroEstimacion < :Estimacion And a.sNumeroActividad = :Actividad ' +
                                              'Group By a.sNumeroActividad') ;
                 Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                 Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
                 Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
                 Connection.QryBusca2.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
                 Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
                 Connection.QryBusca2.Params.ParamByName('Actividad').Value := ActividadesxEstimacion.FieldValues['sNumeroActividad'] ;
                 Connection.qryBusca2.Open ;
                 If Connection.qryBusca2.RecordCount > 0 then
                      dAcumulado := Connection.qryBusca2.FieldValues['Generado']
                 Else
                      dAcumulado := 0 ;

                 If (dAcumulado > 0) Then
                 Begin
                      ActividadesxEstimacion.Edit ;
                      ActividadesxEstimacion.FieldValues['dAcumuladoAnterior'] := dAcumulado ;
                      ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorMN'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
                      ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorDLL'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
                      ActividadesxEstimacion.FieldValues['dCantidad'] := 0 ;
                      ActividadesxEstimacion.FieldValues['dMontoMN'] := 0 ;
                      ActividadesxEstimacion.FieldValues['dMontoDLL'] := 0 ;
                      ActividadesxEstimacion.FieldValues['dAcumuladoActual'] := dAcumulado ;
                      ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
                      ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
                      ActividadesxEstimacion.Post ;
                 End
            end ;
            ActividadesxEstimacion.Next
        end ;
        ActividadesxEstimacion.First
    end    ;
            MessageDlg('Proceso Terminado Con Exito.', mtWarning, [mbOk], 0) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al generar estimacion vacia', 0);
    end;
  end;
End;

procedure TfrmValidaEstimacion.sEstimacionGeneradoresClick(
  Sender: TObject);
Var
    dEstimado,
    dAcumulado : Double ;
    lPoder : Boolean ;
    Encontrado : String ;
begin
  try
    If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
        lPoder := True
    Else
    Begin
        MessageDlg('Estimacion AUTORIZADA, no se pueden realizar cambios.', mtWarning, [mbOk], 0) ;
        lPoder := False
    End ;

    If lPoder Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sContrato From estimaciones Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And lStatus <> "Autorizado" ') ;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        Connection.qryBusca.Open ;

        If Connection.qryBusca.RecordCount > 0 Then
             MessageDlg('Existen Generadores pertenecientes a la estimación en status [PENDIENTE DE APLICAR], favor de aplicar dichos generadores.', mtWarning, [mbOk], 0)
        Else
        Begin
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from actividadesxestimacion where sContrato = :contrato And iNumeroEstimacion = :Estimacion ') ;
             connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
             connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
             connection.zCommand.ExecSQL ;

             // Inserccion de todos los paquetes en 0 a la fecha seleccionada ....
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;

            connection.zCommand.SQL.Add ( 'insert into actividadesxestimacion (sContrato, iNumeroEstimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, ' +
                                           'sTipoActividad, sEspecificacion, iItemOrden, mDescripcion, dCostoMN, ' +
                                           'dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, ' +
                                           'dAcumuladoAnterior, dMontoAcumuladoAnteriorMN, dMontoAcumuladoAnteriorDLL, dCantidad, dMontoMN, dMontoDLL, dAcumuladoActual, dMontoAcumuladoMN, dMontoAcumuladoDLL) ' +
                                           'select sContrato, :Estimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, sTipoActividad, sEspecificacion, ' +
                                           'iItemOrden, mDescripcion, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, 0, 0, 0, 0, 0, 0, 0, 0, 0 ' +
                                           'from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :convenio') ;
             connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value       := Global_Contrato ;
             connection.zCommand.Params.ParamByName('Estimacion').DataType  := ftString ;
             connection.zCommand.Params.ParamByName('Estimacion').Value     := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
             connection.zCommand.Params.ParamByName('convenio').DataType    := ftString ;
             connection.zCommand.Params.ParamByName('convenio').Value       := global_convenio ;
             connection.zCommand.ExecSQL () ;

             ActividadesxEstimacion.Filter := '' ;
             ActividadesxEstimacion.Filtered := False ;
             ActividadesxEstimacion.Active := False ;
             ActividadesxEstimacion.Params.ParamByName('Contrato').DataType    := ftString ;
             ActividadesxEstimacion.Params.ParamByName('Contrato').Value       := Global_Contrato ;
             ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType  := ftString ;
             ActividadesxEstimacion.Params.ParamByName('Estimacion').Value     := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
             ActividadesxEstimacion.Open ;
             While NOt ActividadesxEstimacion.Eof Do
             Begin
                If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Actividad' Then
                Begin
                    Connection.qryBusca2.Active := False ;
                    Connection.qryBusca2.SQL.Clear ;
                    Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as Generado From estimacionxpartida e ' +
                                                 'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden and e.sNumeroGenerador = e2.sNumeroGenerador ' +
                                                 'And e2.iNumeroEstimacion = :Estimacion) ' +
                                                 'Inner join actividadesxanexo a On(e.sContrato=a.sContrato And e.sNumeroActividad=a.sNumeroActividad ' +
                                                 'And a.sWbs=e.sWbsContrato And e2.iNumeroEstimacion =:Estimacion And a.sIdConvenio =:Convenio) ' +
                                                 'Where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad And e.sWbsContrato = :WbsContrato And e.lEstima = "Si" ' +
                                                 'Group By e.sNumeroActividad ') ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').DataType     := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').Value        := global_Contrato ;
                    Connection.QryBusca2.Params.ParamByName('Estimacion').DataType   := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Estimacion').Value      := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').DataType    := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').Value       := ActividadesxEstimacion.FieldValues['sNumeroActividad'] ;
                    Connection.QryBusca2.Params.ParamByName('WbsContrato').DataType  := ftString ;
                    Connection.QryBusca2.Params.ParamByName('WbsContrato').Value     := ActividadesxEstimacion.FieldValues['sWbs'] ;
                    connection.QryBusca2.Params.ParamByName('convenio').DataType     := ftString ;
                    connection.QryBusca2.Params.ParamByName('convenio').Value        := global_convenio ;
                    Connection.qryBusca2.Open ;
                    If Connection.qryBusca2.RecordCount > 0 then
                        dEstimado := Connection.qryBusca2.FieldValues['Generado']
                    Else
                         dEstimado := 0 ;

                    Connection.qryBusca2.Active := False ;
                    Connection.qryBusca2.SQL.Clear ;
                    Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as Generado From actividadesxestimacion a ' +
                                                 'inner join estimacionperiodo e on (a.sContrato = e.sContrato and a.iNumeroEstimacion = e.iNumeroEstimacion) ' +
                                                 'Where a.sContrato = :Contrato And a.iNumeroEstimacion <= :Estimacion And a.sNumeroActividad = :Actividad ' +
                                                 'And stipoActividad ="Actividad" Group By a.sWbs, a.sNumeroActividad') ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').DataType   := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Contrato').Value      := global_Contrato ;
                    Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').DataType  := ftString ;
                    Connection.QryBusca2.Params.ParamByName('Actividad').Value     := ActividadesxEstimacion.FieldValues['sNumeroActividad'] ;
                    Connection.qryBusca2.Open ;
                    If Connection.qryBusca2.RecordCount > 0 then
                         dAcumulado := Connection.qryBusca2.FieldValues['Generado']
                    Else
                         dAcumulado := 0 ;

                    If (dAcumulado > 0) OR (dEstimado > 0) Then
                    Begin

            //        Connection.qryBusca2.SQL.Add('Select e.sContrato, e.sNumeroActividad, e2.sNumeroOrden, ' +
            //                                     'Sum(e.dCantidad) as Generado From estimacionxpartida e ' +
            //                                     'inner join estimaciones e2 ' +
            //                                     'on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden ' +
            //                                     'and e.sNumeroGenerador = e2.sNumeroGenerador And e2.iNumeroEstimacion =:Estimacion) ' +
            //                                     'Where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad ' +
           //                                      'And e.lEstima = "Si" Group By e2.sNumeroOrden') ;
           //         Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
           //         Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
           //         Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
           //         Connection.QryBusca2.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
           //         Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
           //         Connection.QryBusca2.Params.ParamByName('Actividad').Value := ActividadesxEstimacion.FieldValues['sNumeroActividad'] ;
           //         Connection.qryBusca2.Open ;
           //           If Connection.QryBusca2.RecordCount > 0 Then
           //              Begin
           //                   Connection.QryBusca2.FieldValues['sContrato'] ;
           //                   Connection.QryBusca2.FieldValues['snumeroActividad'] ;
           //                   Connection.QryBusca2.FieldValues['sNumeroOrden'] ;
           //                   Connection.QryBusca2.FieldValues['Generado'] ;
           //              end ;

                    ActividadesxEstimacion.Edit ;
              //   If dAcumulado <= ActividadesxEstimacion.FieldValues['dCantidadAnexo']    Then

                             ActividadesxEstimacion.FieldValues['dAcumuladoAnterior'] := dAcumulado ;
                             ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorMN'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
                             ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorDLL'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
                             ActividadesxEstimacion.FieldValues['dCantidad'] := dEstimado ;
                             ActividadesxEstimacion.FieldValues['dMontoMN'] := dEstimado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
                             ActividadesxEstimacion.FieldValues['dMontoDLL'] := dEstimado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
                             ActividadesxEstimacion.FieldValues['dAcumuladoActual'] := (dAcumulado  + dEstimado) ;
                             ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN'] := (dAcumulado  + dEstimado) * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
                             ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL'] := (dAcumulado  + dEstimado) * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
                             ActividadesxEstimacion.Post ;


                    End
                End ;
                ActividadesxEstimacion.Next
             End ;

             ActividadesxEstimacion.First
        End  ;
  MessageDlg('Proceso Terminado Con Exito.', mtWarning, [mbOk], 0) ;
    End
    Else
        MessageDlg('Estimacion AUTORIZADA, no se puede generar una nueva estimacion', mtWarning, [mbOk], 0)
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al generar estimacion segun generadores de obra', 0);
    end;
  end;
end;



procedure TfrmValidaEstimacion.sActualizaAcumClick(Sender: TObject);
Var
    dAcumulado : Double ;
    dMontoGeneradoMN, dMontoGeneradoDLL,
    dMontoEstimacionMN, dMontoEstimacionDLL : currency ;
    dMontoEstimacionAcumMN, dMontoEstimacionAcumDLL : currency ;
    sSelect : String ;
begin
  try
    If EstimacionPeriodo.FieldValues ['lEstimado'] = 'No' Then
    Begin
//por si el Ordenamiento es por numero de estimacion
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.sContrato, a.iNivel, a.sSimbolo, a.sWbs, a.sWbsAnterior, a.sNumeroActividad, ' +
                                    'a.sTipoActividad, a.sEspecificacion, a.iItemOrden, a.mDescripcion, a.dCostoMN, ' +
                                    'a.dCostoDLL, a.dVentaMN, a.dVentaDLL, a.sMedida, a.dCantidadAnexo, a.iColor from actividadesxanexo a ' +
                                    'where not exists (select b.sContrato, b.iNivel, b.sSimbolo, b.sWbs, b.sWbsAnterior, b.sNumeroActividad, ' +
                                    'b.sTipoActividad, b.sEspecificacion, b.iItemOrden, b.mDescripcion, b.dCostoMN, ' +
                                    'b.dCostoDLL, b.dVentaMN, b.dVentaDLL, b.sMedida, b.dCantidadAnexo, b.iColor from actividadesxestimacion b Where ' +
                                    'a.sContrato = b.sContrato and a.sWbs = b.sWbs and a.sNumeroActividad = b.sNumeroActividad and a.sTipoActividad = b.sTipoActividad and b.iNumeroEstimacion = :estimacion) ' +
                                    ' and a.sContrato = :contrato and a.sTipoActividad = "Actividad" And sIdConvenio = :convenio') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType   := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value      := global_contrato ;
        connection.QryBusca.Params.ParamByName('convenio').DataType   := ftString ;
        connection.QryBusca.Params.ParamByName('convenio').Value      := global_convenio ;
        connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof do
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'insert into actividadesxestimacion (sContrato, iNumeroEstimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, ' +
                                          'sTipoActividad, sEspecificacion, iItemOrden, mDescripcion, dCostoMN, ' +
                                          'dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, ' +
                                          'dAcumuladoAnterior, dMontoAcumuladoAnteriorMN, dMontoAcumuladoAnteriorDLL, dCantidad, dMontoMN, dMontoDLL, dAcumuladoActual, dMontoAcumuladoMN, dMontoAcumuladoDLL) ' +
                                          'VALUES (:Contrato, :Estimacion, :Nivel, :Simbolo, :Wbs, :WbsAnterior, :NumeroActividad, :TipoActividad, :Especificacion, ' +
                                          ':ItemOrden, :Descripcion, :CostoMN, :CostoDLL, :VentaMN, :VentaDLL, :Medida, :CantidadAnexo, :Color, 0, 0, 0, 0, 0, 0 , 0 , 0 , 0 ) ') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType        := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value           := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType      := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').Value         := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.Params.ParamByName('contrato').DataType        := ftString ;
            connection.zCommand.Params.ParamByName('contrato').Value           := connection.QryBusca.FieldValues['sContrato'] ;
            connection.zCommand.Params.ParamByName('nivel').DataType           := ftInteger ;
            connection.zCommand.Params.ParamByName('nivel').Value              := connection.QryBusca.FieldValues['iNivel'] ;
            connection.zCommand.Params.ParamByName('Simbolo').DataType         := ftString ;
            connection.zCommand.Params.ParamByName('Simbolo').Value            := connection.QryBusca.FieldValues['sSimbolo'] ;
            connection.zCommand.Params.ParamByName('wbs').DataType             := ftString ;
            connection.zCommand.Params.ParamByName('wbs').Value                := connection.QryBusca.FieldValues['sWbs'] ;
            connection.zCommand.Params.ParamByName('wbsAnterior').DataType     := ftString ;
            connection.zCommand.Params.ParamByName('wbsAnterior').Value        := connection.QryBusca.FieldValues['sWbsAnterior'] ;
            connection.zCommand.Params.ParamByName('NumeroActividad').DataType := ftString ;
            connection.zCommand.Params.ParamByName('NumeroActividad').Value    :=  connection.QryBusca.FieldValues['sNumeroActividad'] ;
            connection.zCommand.Params.ParamByName('TipoActividad').DataType   := ftString ;
            connection.zCommand.Params.ParamByName('TipoActividad').Value      :=  connection.QryBusca.FieldValues['sTipoActividad'] ;
            connection.zCommand.Params.ParamByName('Especificacion').DataType  := ftString ;
            connection.zCommand.Params.ParamByName('Especificacion').Value     := connection.QryBusca.FieldValues['sEspecificacion'] ;
            connection.zCommand.Params.ParamByName('ItemOrden').DataType       := ftString ;
            connection.zCommand.Params.ParamByName('ItemOrden').Value          := connection.QryBusca.FieldValues['iItemOrden'] ;
            connection.zCommand.Params.ParamByName('Descripcion').DataType     := ftString ;
            connection.zCommand.Params.ParamByName('Descripcion').Value        := connection.QryBusca.FieldValues['mDescripcion'] ;
            connection.zCommand.Params.ParamByName('CostoMN').DataType         :=  ftfloat ;
            connection.zCommand.Params.ParamByName('CostoMN').Value            := connection.QryBusca.FieldValues['dCostoMN'] ;
            connection.zCommand.Params.ParamByName('CostoDLL').DataType        := ftfloat ;
            connection.zCommand.Params.ParamByName('CostoDLL').Value           := connection.QryBusca.FieldValues['dCostoDLL'] ;
            connection.zCommand.Params.ParamByName('VentaMN').DataType         :=  ftfloat ;
            connection.zCommand.Params.ParamByName('VentaMN').Value            := connection.QryBusca.FieldValues['dVentaMN'] ;
            connection.zCommand.Params.ParamByName('VentaDLL').DataType        := ftfloat ;
            connection.zCommand.Params.ParamByName('VentaDLL').Value           := connection.QryBusca.FieldValues['dVentaDLL'] ;
            connection.zCommand.Params.ParamByName('Medida').DataType          := ftString ;
            connection.zCommand.Params.ParamByName('Medida').Value             := connection.QryBusca.FieldValues['sMedida'] ;
            connection.zCommand.Params.ParamByName('CantidadAnexo').DataType   := ftfloat ;
            connection.zCommand.Params.ParamByName('CantidadAnexo').Value      := connection.QryBusca.FieldValues['dCantidadAnexo'] ;
            connection.zCommand.Params.ParamByName('Color').DataType           := ftInteger ;
            connection.zCommand.Params.ParamByName('Color').Value              :=  connection.QryBusca.FieldValues['iColor'] ;
            connection.zCommand.ExecSQL () ;

            connection.QryBusca.Next ;
        end
    End ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'Delete from actividadesxestimacion where sContrato = :contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete"') ;
    connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
    connection.zCommand.Params.ParamByName('Contrato').Value      := Global_Contrato ;
    connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    connection.zCommand.ExecSQL ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'insert into actividadesxestimacion (sContrato, iNumeroEstimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, ' +
                                  'sTipoActividad, sEspecificacion, iItemOrden, mDescripcion, dCostoMN, ' +
                                  'dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, ' +
                                  'dAcumuladoAnterior, dMontoAcumuladoAnteriorMN, dMontoAcumuladoAnteriorDLL, dCantidad, dMontoMN, dMontoDLL, dAcumuladoActual, dMontoAcumuladoMN, dMontoAcumuladoDLL) ' +
                                  'select sContrato, :Estimacion, iNivel, sSimbolo, sWbs, sWbsAnterior, sNumeroActividad, sTipoActividad, sEspecificacion, ' +
                                  'iItemOrden, mDescripcion, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, iColor, 0, 0, 0, 0, 0, 0 , 0 , 0 , 0 ' +
                                  'from actividadesxanexo Where sContrato = :contrato And sIdConvenio = :convenio And sTipoActividad = "Paquete"') ;
    connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
    connection.zCommand.Params.ParamByName('Contrato').Value      := Global_Contrato ;
    connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    connection.zCommand.Params.ParamByName('convenio').DataType   := ftString ;
    connection.zCommand.Params.ParamByName('convenio').Value      := global_convenio ;
    connection.zCommand.ExecSQL () ;

    ActividadesxEstimacion.Filter := '' ;
    ActividadesxEstimacion.Filtered := False ;
    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType   := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value      := Global_Contrato ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    ActividadesxEstimacion.Open ;
    While NOt ActividadesxEstimacion.Eof Do
    Begin
        If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Actividad' Then
        Begin
             Connection.qryBusca2.Active := False ;
             Connection.qryBusca2.SQL.Clear ;
             Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as Generado From actividadesxestimacion a ' +
                                          'inner join estimacionperiodo e on (a.sContrato = e.sContrato and a.iNumeroEstimacion = e.iNumeroEstimacion) ' +
                                         'Where a.sContrato = :Contrato And a.iNumeroEstimacion < :Estimacion And a.sNumeroActividad = :Actividad ' +
                                          'Group By a.sNumeroActividad') ;

        //    Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as Generado From actividadesxestimacion a ' +
        //                                  'inner join estimacionperiodo e on (a.sContrato = e.sContrato and a.iNumeroEstimacion = e.iNumeroEstimacion) ' +
        //                                  'Where a.sContrato = :Contrato And e.dFechaFinal < :Final And a.sNumeroActividad = :Actividad ' +
        //                                  'Group By a.sNumeroActividad') ;

             Connection.QryBusca2.Params.ParamByName('Contrato').DataType   := ftString ;
             Connection.QryBusca2.Params.ParamByName('Contrato').Value      := global_Contrato ;
             Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
             Connection.QryBusca2.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
          //   Connection.QryBusca2.Params.ParamByName('Final').DataType := ftDate ;
          //   Connection.QryBusca2.Params.ParamByName('Final').Value    := EstimacionPeriodo.FieldValues['dFechaFinal'] ;

             Connection.QryBusca2.Params.ParamByName('Actividad').DataType  := ftString ;
             Connection.QryBusca2.Params.ParamByName('Actividad').Value     := ActividadesxEstimacion.FieldValues['sNumeroActividad'] ;
             Connection.qryBusca2.Open ;
             If Connection.qryBusca2.RecordCount > 0 then
                 dAcumulado := Connection.qryBusca2.FieldValues['Generado']
             Else
                 dAcumulado := 0 ;

             ActividadesxEstimacion.Edit ;
             ActividadesxEstimacion.FieldValues['dAcumuladoAnterior']         := dAcumulado ;
             ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorMN']  := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
             ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorDLL'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
             ActividadesxEstimacion.FieldValues['dAcumuladoActual']           := dAcumulado + ActividadesxEstimacion.FieldValues['dCantidad'] ;
             ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN']          := ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
             ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL']         := ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;
             ActividadesxEstimacion.Post ;
        End ;
        ActividadesxEstimacion.Next
    End ;

    // Ahora vienen los acumulados de paquetes ....
    Connection.QryBusca2.Active := False ;
    Connection.QryBusca2.SQL.Clear ;
    Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxestimacion ' +
                                 'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sTipoActividad = "Paquete" Order By iNivel DESC') ;
    Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
    Connection.QryBusca2.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.QryBusca2.Open ;
    While NOT Connection.QryBusca2.Eof Do
    Begin
         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN,  sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                                     'sum(dMontoMN) as dMontoMN, sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                                     'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBSAnterior = :Paquete Group By sWbsAnterior') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
         Connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
         Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'] ;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Update actividadesxestimacion SET dMontoAcumuladoAnteriorMN = :MontoAnteriorMN, dMontoAcumuladoAnteriorDLL= :MontoAnteriorDLL, ' +
                                            'dMontoMN = :MontoMN, dMontoAcumuladoMN = :AcumuladoMN, dMontoDLL = :MontoDLL, dMontoAcumuladoDLL = :AcumuladoDLL ' +
                                            'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBS = :Paquete') ;
              connection.zcommand.params.ParamByName('Contrato').DataType         := ftString ;
              connection.zcommand.params.ParamByName('Contrato').Value            := global_contrato ;
              connection.zcommand.params.ParamByName('Estimacion').DataType       := ftString ;
              connection.zcommand.params.ParamByName('Estimacion').Value          := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
              connection.zcommand.params.ParamByName('Paquete').DataType          := ftString ;
              connection.zcommand.params.ParamByName('Paquete').Value             := Connection.QryBusca2.FieldValues['sWBS'] ;
              connection.zcommand.params.ParamByName('MontoAnteriorMN').DataType  := ftFloat ;
              connection.zcommand.params.ParamByName('MontoAnteriorMN').Value     := Connection.QryBusca.FieldValues['dMontoAnteriorMN'] ;
              connection.zcommand.params.ParamByName('MontoMN').DataType          := ftFloat ;
              connection.zcommand.params.ParamByName('MontoMN').Value             := Connection.QryBusca.FieldValues['dMontoMN'] ;
              connection.zcommand.params.ParamByName('AcumuladoMN').DataType      := ftFloat ;
              connection.zcommand.params.ParamByName('AcumuladoMN').Value         := roundto(Connection.QryBusca.FieldValues['dMontoAnteriorMN'], -2) + roundto(Connection.QryBusca.FieldValues['dMontoMN'],-2) ;
              connection.zcommand.params.ParamByName('MontoAnteriorDLL').DataType := ftFloat ;
              connection.zcommand.params.ParamByName('MontoAnteriorDLL').Value    := Connection.QryBusca.FieldValues['dMontoAnteriorDLL'] ;
              connection.zcommand.params.ParamByName('MontoDLL').DataType         := ftFloat ;
              connection.zcommand.params.ParamByName('MontoDLL').Value            := Connection.QryBusca.FieldValues['dMontoDLL'] ;
              connection.zcommand.params.ParamByName('AcumuladoDLL').DataType     := ftFloat ;
              connection.zcommand.params.ParamByName('AcumuladoDLL').Value        := Connection.QryBusca.FieldValues['dMontoAnteriorDLL'] + Connection.QryBusca.FieldValues['dMontoDLL'] ;
              Connection.zCommand.ExecSQL;
         End ;
         Connection.QryBusca2.Next
    End ;

    Connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN, sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                                'Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                                'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete" And iNivel = 0 Group By sContrato') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 then
    Begin
         dMontoEstimacionMN      := Connection.qryBusca.FieldValues['dMontoMN'] ;
         dMontoEstimacionDLL     := Connection.qryBusca.FieldValues['dMontoDLL'] ;
         dMontoEstimacionAcumMN  := Connection.qryBusca.FieldValues['dMontoAnteriorMN'] + dMontoEstimacionMN ;
         dMontoEstimacionAcumDLL := Connection.qryBusca.FieldValues['dMontoAnteriorDLL'] + dMontoEstimacionDLL ;
    End
    Else
    Begin
         dMontoEstimacionMN      := 0 ;
         dMontoEstimacionDLL     := 0 ;
         dMontoEstimacionAcumMN  := 0 ;
         dMontoEstimacionAcumDLL := 0 ;
    End ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From estimaciones ' +
                                'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and lStatus = "Autorizado" Group By sContrato') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType   := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value      := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 then
    Begin
         dMontoGeneradoMN  := Connection.qryBusca.FieldValues['dMontoMN'] ;
         dMontoGeneradoMN  := Connection.qryBusca.FieldValues['dMontoDLL'] ;
    End
    Else
    Begin
         dMontoGeneradoMN  := 0 ;
         dMontoGeneradoDLL := 0 ;
    End ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'UPDATE estimacionperiodo SET dMontoMNGeneradores = :GeneradorMN, dMontoDLLGeneradores = :GeneradorDLL, ' +
                                  'dMontoMN = :EstimacionMN , dMontoDLL = :EstimacionDLL, dMontoAcumuladoMN = :dMontoAcumMN, dMontoAcumuladoDLL = :dMontoAcumDLL ' +
                                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion') ;
    Connection.zCommand.Params.ParamByName('Contrato').DataType      := ftString ;
    Connection.zCommand.Params.ParamByName('Contrato').Value         := global_contrato ;
    Connection.zCommand.Params.ParamByName('Estimacion').DataType    := ftString ;
    Connection.zCommand.Params.ParamByName('Estimacion').Value       := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.zCommand.Params.ParamByName('GeneradorMN').DataType   := ftFloat ;
    Connection.zCommand.Params.ParamByName('GeneradorMN').Value      := dMontoGeneradoMN ;
    Connection.zCommand.Params.ParamByName('GeneradorDLL').DataType  := ftFloat ;
    Connection.zCommand.Params.ParamByName('GeneradorDLL').Value     := dMontoGeneradoDLL ;
    Connection.zCommand.Params.ParamByName('EstimacionMN').DataType  := ftFloat ;
    Connection.zCommand.Params.ParamByName('EstimacionMN').Value     := dMontoEstimacionMN ;
    Connection.zCommand.Params.ParamByName('EstimacionDLL').DataType := ftFloat ;
    Connection.zCommand.Params.ParamByName('EstimacionDLL').Value    := dMontoEstimacionDLL ;
    Connection.zCommand.Params.ParamByName('dMontoAcumMN').DataType  := ftFloat ;
    Connection.zCommand.Params.ParamByName('dMontoAcumMN').Value     := dMontoEstimacionAcumMN ;
    Connection.zCommand.Params.ParamByName('dMontoAcumDLL').DataType := ftFloat ;
    Connection.zCommand.Params.ParamByName('dMontoAcumDLL').Value    := dMontoEstimacionAcumDLL ;
    Connection.zCommand.ExecSQL ;

    ActividadesxEstimacion.First ;
    EstimacionPeriodo.Refresh ;
    MessageDlg('Proceso Terminado Con Exito.', mtWarning, [mbOk], 0) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al actualizar acumulados anteriores', 0);
    end;
  end;
end;

procedure TfrmValidaEstimacion.sEliminaClick(Sender: TObject);
var
    lPoder : Boolean ;
begin
  try
    // Pregunto si desea que se eliminen las partidas con valor estimado acumulado = 0
    If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
       lPoder := True
    Else
    Begin
        MessageDlg('Estimacion AUTORIZADA, no se pueden realizar cambios.', mtWarning, [mbOk], 0) ;
        lPoder := False
    End ;

    If lPoder Then
    Begin
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'Delete from actividadesxestimacion where sContrato = :contrato And iNumeroEstimacion = :Estimacion ') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
        connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        connection.zCommand.ExecSQL ;
        ActividadesxEstimacion.Filter := '' ;
        ActividadesxEstimacion.Filtered := False ;
        ActividadesxEstimacion.Active := False ;
        ActividadesxEstimacion.Open ;
    End;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al eliminar estimacion', 0);
    end;
  end;
end;

procedure TfrmValidaEstimacion.sEliminaCerosClick(Sender: TObject);
begin
  try
    // Pregunto si desea que se eliminen las partidas con valor estimado acumulado = 0
    If EstimacionPeriodo.FieldValues['lEstimado'] = 'No' Then
        If MessageDlg('Desea eliminar todas aquellas partidas que no se han estimado de la estimacion seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
             // Todas las partidas decencientes
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ( 'Delete from actividadesxestimacion where sContrato = :contrato And iNumeroEstimacion = :Estimacion And ' +
                                          'dMontoAcumuladoMN = 0 And dMontoAcumuladoDLL = 0 ') ;
             connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
             connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
             connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
             connection.zCommand.ExecSQL ;

             ActividadesxEstimacion.Filter := '' ;
             ActividadesxEstimacion.Filtered := False ;
             ActividadesxEstimacion.Active := False ;
             ActividadesxEstimacion.Open ;
             ActividadesxEstimacion.First ;
             MessageDlg('Proceso Terminado Con Exito.', mtWarning, [mbOk], 0) ;
          end
    Else
    Else
        MessageDlg('Estimacion AUTORIZADA, no se puede generar una nueva estimacion', mtWarning, [mbOk], 0)
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al eliminar conceptos en Cero', 0);
    end;
  end;
end;

procedure TfrmValidaEstimacion.mEditarClick(Sender: TObject);
Var
    sSelect : String ;
begin
  try
        If EstimacionPeriodo.FieldValues['lEstimado'] = 'Si' Then
            ActividadesxEstimacion.ReadOnly := True
        Else
            ActividadesxEstimacion.ReadOnly := False ;

        // Incluuir que si viene de la Autorizacion o Desautorizacion no entre al siclo, siguen siendo las mismas partidas ...
        Connection.zCommand.Active := False ;
        Connection.zCommand.SQL.Clear ;
        Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "-" Where sContrato = :contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete"') ;
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
        connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        connection.zCommand.ExecSQL ;

        ActividadesxEstimacion.Filter := '' ;
        ActividadesxEstimacion.Filtered := False ;
        sSelect := 'Select * from actividadesxestimacion Where sContrato = :contrato and iNumeroEstimacion = :Estimacion order by iItemOrden' ;
        ActividadesxEstimacion.Active := False ;
        ActividadesxEstimacion.SQL.Clear ;
        ActividadesxEstimacion.SQL.Add(sSelect) ;
        ActividadesxEstimacion.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxEstimacion.Params.ParamByName('Contrato').Value := Global_Contrato ;
        ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
        ActividadesxEstimacion.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
        ActividadesxEstimacion.Open ;

        Crear_Formulario(pnlPartidas, frmValidaEstimacion, 'Conceptos Estimados', 100,100, 1000, 420, [biSystemMenu]);
        pnlPartidas.Visible := False;
        pnlPartidas.Parent := frmValidaEstimacion;

  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al abrir tabla de edicion de estimacion', 0);
    end;
  end;
end;
//*****************************************************************************
procedure TfrmValidaEstimacion.Grid_PartidasTitleClick(Column: TColumn);
begin
  
end;
//****************************************************************************
procedure TfrmValidaEstimacion.mImprimirClick(Sender: TObject);
Var
    sSelect, TipoEstimacion : String ;
    dMontoEstimacionMN, dMontoEstimacionDLL : currency ;
    dMontoEstimacionAcumMN, dMontoEstimacionAcumDLL : currency ;
begin
  try
    // Ahora vienen los acumulados de paquetes ....
    Connection.QryBusca2.Active := False ;
    Connection.QryBusca2.SQL.Clear ;
    Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxestimacion ' +
                                 'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion ' +
                                 'And sTipoActividad = "Paquete" Order By iNivel DESC') ;
    Connection.QryBusca2.Params.ParamByName('Contrato').DataType   := ftString ;
    Connection.QryBusca2.Params.ParamByName('Contrato').Value      := global_contrato ;
    Connection.QryBusca2.Params.ParamByName('Estimacion').DataType := ftString ;
    Connection.QryBusca2.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.QryBusca2.Open ;

   If estimacionperiodo.FieldValues['sIdUsuarioAutoriza']=''  Then
    Begin

    While NOT Connection.QryBusca2.Eof Do
    Begin
         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN,  sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                                     'sum(dMontoMN) as dMontoMN, sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                                     'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBSAnterior = :Paquete Group By sWbsAnterior') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType   := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value      := global_contrato ;
         Connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
         Connection.QryBusca.Params.ParamByName('Paquete').DataType    := ftString ;
         Connection.QryBusca.Params.ParamByName('Paquete').Value       := Connection.QryBusca2.FieldValues['sWBS'] ;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Update actividadesxestimacion SET dMontoAcumuladoAnteriorMN = :MontoAnteriorMN, dMontoAcumuladoAnteriorDLL= :MontoAnteriorDLL, ' +
                                            'dMontoMN = :MontoMN, dMontoAcumuladoMN = :AcumuladoMN, dMontoDLL = :MontoDLL, dMontoAcumuladoDLL = :AcumuladoDLL ' +
                                            'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBS = :Paquete') ;
              connection.zcommand.params.ParamByName('Contrato').DataType         := ftString ;
              connection.zcommand.params.ParamByName('Contrato').Value            := global_contrato ;
              connection.zcommand.params.ParamByName('Estimacion').DataType       := ftString ;
              connection.zcommand.params.ParamByName('Estimacion').Value          := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
              connection.zcommand.params.ParamByName('Paquete').DataType          := ftString ;
              connection.zcommand.params.ParamByName('Paquete').Value             := Connection.QryBusca2.FieldValues['sWBS'] ;
              connection.zcommand.params.ParamByName('MontoAnteriorMN').DataType  := ftFloat ;
              connection.zcommand.params.ParamByName('MontoAnteriorMN').Value     := Connection.QryBusca.FieldValues['dMontoAnteriorMN'] ;
              connection.zcommand.params.ParamByName('MontoMN').DataType          := ftFloat ;
              connection.zcommand.params.ParamByName('MontoMN').Value             := Connection.QryBusca.FieldValues['dMontoMN'] ;
              connection.zcommand.params.ParamByName('AcumuladoMN').DataType      := ftFloat ;
              connection.zcommand.params.ParamByName('AcumuladoMN').Value         := roundto(Connection.QryBusca.FieldValues['dMontoAnteriorMN'], -2) + roundto(Connection.QryBusca.FieldValues['dMontoMN'],-2) ;
              connection.zcommand.params.ParamByName('MontoAnteriorDLL').DataType := ftFloat ;
              connection.zcommand.params.ParamByName('MontoAnteriorDLL').Value    := Connection.QryBusca.FieldValues['dMontoAnteriorDLL'] ;
              connection.zcommand.params.ParamByName('MontoDLL').DataType         := ftFloat ;
              connection.zcommand.params.ParamByName('MontoDLL').Value            := Connection.QryBusca.FieldValues['dMontoDLL'] ;
              connection.zcommand.params.ParamByName('AcumuladoDLL').DataType     := ftFloat ;
              connection.zcommand.params.ParamByName('AcumuladoDLL').Value        := Connection.QryBusca.FieldValues['dMontoAnteriorDLL'] + Connection.QryBusca.FieldValues['dMontoDLL'] ;
              Connection.zCommand.ExecSQL;
         End ;
         Connection.QryBusca2.Next
    End ;

    Connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN, sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                                'Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                                'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete" And iNivel = 0 Group By sContrato') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType   := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value      := global_Contrato ;
    Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 then
    Begin
         dMontoEstimacionMN      := Connection.qryBusca.FieldValues['dMontoMN'] ;
         dMontoEstimacionDLL     := Connection.qryBusca.FieldValues['dMontoDLL'] ;
         dMontoEstimacionAcumMN  := Connection.qryBusca.FieldValues['dMontoAnteriorMN'] + dMontoEstimacionMN ;
         dMontoEstimacionAcumDLL := Connection.qryBusca.FieldValues['dMontoAnteriorDLL'] + dMontoEstimacionDLL ;
    End
    Else
    Begin
         dMontoEstimacionMN      := 0 ;
         dMontoEstimacionDLL     := 0 ;
         dMontoEstimacionAcumMN  := 0 ;
         dMontoEstimacionAcumDLL := 0 ;
    End ;

    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add ( 'UPDATE estimacionperiodo SET dMontoMN = :EstimacionMN , dMontoDLL = :EstimacionDLL, ' +
                                  'dMontoAcumuladoMN = :dMontoAcumMN, dMontoAcumuladoDLL = :dMontoAcumDLL ' +
                                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion') ;
    Connection.zCommand.Params.ParamByName('Contrato').DataType      := ftString ;
    Connection.zCommand.Params.ParamByName('Contrato').Value         := global_contrato ;
    Connection.zCommand.Params.ParamByName('Estimacion').DataType    := ftString ;
    Connection.zCommand.Params.ParamByName('Estimacion').Value       := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    Connection.zCommand.Params.ParamByName('EstimacionMN').DataType  := ftFloat ;
    Connection.zCommand.Params.ParamByName('EstimacionMN').Value     := dMontoEstimacionMN ;
    Connection.zCommand.Params.ParamByName('EstimacionDLL').DataType := ftFloat ;
    Connection.zCommand.Params.ParamByName('EstimacionDLL').Value    := dMontoEstimacionDLL ;
    Connection.zCommand.Params.ParamByName('dMontoAcumMN').DataType  := ftFloat ;
    Connection.zCommand.Params.ParamByName('dMontoAcumMN').Value     := dMontoEstimacionAcumMN ;
    Connection.zCommand.Params.ParamByName('dMontoAcumDLL').DataType := ftFloat ;
    Connection.zCommand.Params.ParamByName('dMontoAcumDLL').Value    := dMontoEstimacionAcumDLL ;
    Connection.zCommand.ExecSQL ;


    Connection.zCommand.Active := False ;
    Connection.zCommand.SQL.Clear ;
    Connection.zCommand.SQL.Add( 'update actividadesxestimacion SET sSimbolo = "-" Where sContrato = :contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete"') ;
    connection.zCommand.Params.ParamByName('Contrato').DataType   := ftString ;
    connection.zCommand.Params.ParamByName('Contrato').Value      := global_contrato ;
    connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.zCommand.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    connection.zCommand.ExecSQL ;

    SavePlace := EstimacionPeriodo.GetBookmark ;
    EstimacionPeriodo.Active := False ;
    EstimacionPeriodo.Open ;
    Try
        EstimacionPeriodo.GotoBookmark(SavePlace);
    Except
    Else
        EstimacionPeriodo.FreeBookmark(SavePlace);
    End ;                       
   end ;

//    ActividadesxEstimacion.Filter := '' ;
//    ActividadesxEstimacion.Filtered := False ;
    rDiarioFirmas (global_contrato, '', 'A',EstimacionPeriodo.FieldValues['dFechaFinal'] , frmValidaEstimacion ) ;
    sSelect := 'Select * from actividadesxestimacion Where sContrato = :contrato and ' +
               'iNumeroEstimacion = :Estimacion  order by iItemOrden' ;
    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.SQL.Clear ;
    ActividadesxEstimacion.SQL.Add(sSelect) ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType   := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value      := Global_Contrato ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value    := EstimacionPeriodo.FieldValues['iNumeroEstimacion'] ;
    ActividadesxEstimacion.Open ;

    if ActividadesxEstimacion.RecordCount > 0 then
    begin
      frGenerador.PreviewOptions.MDIChild := False ;
      frGenerador.PreviewOptions.Modal := True ;
      frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
      frGenerador.PreviewOptions.ShowCaptions := False ;
      frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
      frGenerador.LoadFromFile (global_files + global_miReporte + '_Estimacion.fr3') ;
      //<ROJAQS>
      frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
      //
      if not FileExists(global_files + global_miReporte + '_Estimacion.fr3') then
        showmessage('El archivo de reporte' + global_files + global_miReporte + '_Estimacion.fr3 no existe, notifique al administrador del sistema');
    end
    else begin
      showmessage('No hay datos para imprimir');
    end;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Autorizacion de Estimaciones', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmValidaEstimacion.mCabeceraClick(Sender: TObject);
begin;
   Crear_Formulario(piePagina1, frmValidaEstimacion, 'Datos generales de la estimacion', 10, 10, 700, 530, [biSystemMenu]);
   piePagina1.Visible := False;
   piePagina1.Parent := frmValidaEstimacion;
end;


procedure TfrmValidaEstimacion.ActividadesxEstimacionBeforeDelete(
  DataSet: TDataSet);
begin
    abort
end;


procedure TfrmValidaEstimacion.ActividadesxEstimacionAfterScroll(
  DataSet: TDataSet);
begin
    If ActividadesxEstimacion.RecordCount > 0 Then
        cxGridPartidas.Hint := ActividadesxEstimacion.FieldValues['mDescripcion'] 
end;

procedure TfrmValidaEstimacion.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
      if (ActiveControl is TrxDBGrid) then   { si es un TDBGrid }
        with TrxDBGrid(ActiveControl) do
          if selectedindex < (fieldcount -1) then
            selectedindex := selectedindex +1
          else
            selectedindex := 0;
end;

end.
