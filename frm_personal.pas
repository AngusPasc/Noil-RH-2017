unit frm_personal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, UnitExcepciones, UdbGrid,unitValidacion,
  CustomizeDlg, unittbotonespermisos, UnitValidaTexto, UnitExcel, ComObj,
  UnitTablasImpactadas, unitactivapop, UFunctionsGHH, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  FormAutoScaler;

type
  TfrmPersonal = class(TForm)
    frmBarra1: TfrmBarra;
    ds_equiposxpersonal: TDataSource;
    ds_buscaobjeto: TDataSource;
    DBPersonal: TfrxDBDataset;
    frxPersonal: TfrxReport;
    ds_personal: TDataSource;
    ds_DistribuciondePersonal: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    DBAnexoDT3: TfrxDBDataset;
    impAnexoDT3: TMenuItem;
    ActualizacindeCostos1: TMenuItem;
    ds_tiposdepersonal: TDataSource;
    TiposdePersonal: TZReadOnlyQuery;
    Personal: TZQuery;
    DistribuciondePersonal: TZQuery;
    DistribuciondePersonaldIdFecha: TDateField;
    DistribuciondePersonaldCantidad: TFloatField;
    DistribuciondePersonaliAnno: TIntegerField;
    DistribuciondePersonalsMes: TStringField;
    EquiposxPersonal: TZQuery;
    MaximoItem: TZReadOnlyQuery;
    BuscaObjeto: TZReadOnlyQuery;
    AnexoDT3: TZReadOnlyQuery;
    EquiposxPersonalsContrato: TStringField;
    EquiposxPersonalsIdPersonal: TStringField;
    EquiposxPersonalsIdEquipo: TStringField;
    EquiposxPersonaldCantidad: TFloatField;
    EquiposxPersonalsDescripcion: TStringField;
    EquiposxPersonalsMedida: TStringField;
    PersonalsContrato: TStringField;
    PersonalsIdPersonal: TStringField;
    PersonaliItemOrden: TIntegerField;
    PersonalsDescripcion: TStringField;
    PersonalsIdTipoPersonal: TStringField;
    PersonalsMedida: TStringField;
    PersonaldCantidad: TFloatField;
    PersonaldCostoMN: TFloatField;
    PersonaldCostoDLL: TFloatField;
    PersonaldVentaMN: TFloatField;
    PersonaldVentaDLL: TFloatField;
    PersonaldFechaInicio: TDateField;
    PersonaldFechaFinal: TDateField;
    PersonallProrrateo: TStringField;
    PersonaliJornada: TIntegerField;
    PersonallDistribuye: TStringField;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    PersonallCobro: TStringField;
    PersonallImprime: TStringField;
    PersonallAplicaTM: TStringField;
    PersonalsAgrupaPersonal: TStringField;
    dsAgrupacionpersonal: TDataSource;
    qryAgrupPers: TZQuery;
    qryAgrupPerssIdGrupo: TStringField;
    qryAgrupPerssDescripcion: TStringField;
    qryConsulta: TZReadOnlyQuery;
    ds_Consulta: TDataSource;
    frxConsulta: TfrxDBDataset;
    PersonallPernocta: TStringField;
    copiar1: TMenuItem;
    ExportaraExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    PersonallTotalizarPernocta: TStringField;
    PersonallAplicaGerencial: TStringField;
    PersonalsNumeroCuenta: TIntegerField;
    grid_personal: TcxGrid;
    grid_personalView: TcxGridDBTableView;
    grid_personalViewColumn1: TcxGridDBColumn;
    grid_personalViewColumn2: TcxGridDBColumn;
    grid_personalViewColumn3: TcxGridDBColumn;
    grid_personalViewColumn4: TcxGridDBColumn;
    grid_personalViewColumn5: TcxGridDBColumn;
    grid_personalLevel1: TcxGridLevel;
    grid_personalViewColumn6: TcxGridDBColumn;
    Panel1: TPanel;
    Pg_Personal: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    tsIdPersonal: TDBEdit;
    tsDescripcion: TDBEdit;
    tsMedida: TDBEdit;
    tdCostoMn: TDBEdit;
    tdCostoDll: TDBEdit;
    tsIdTipodePersonal: TDBLookupComboBox;
    tlProrrateo: TDBComboBox;
    tiJornada: TDBEdit;
    tlDistribuye: TDBComboBox;
    tdCantidad: TDBEdit;
    tdVentaMN: TDBEdit;
    tdVentaDLL: TDBEdit;
    tiItemOrden: TDBEdit;
    gbTarifaDiaria: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    rxDistribucion: TRxDBGrid;
    tsMes: TComboBox;
    tiAnno: TRxSpinEdit;
    btnDistribuir: TBitBtn;
    tdCantidadMensual: TCurrencyEdit;
    tlImprime: TDBComboBox;
    tlCobro: TDBComboBox;
    tlAplicaTM: TDBComboBox;
    tsAgrupacion: TDBLookupComboBox;
    tlPernocta: TDBComboBox;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    DBComboBox1: TDBComboBox;
    tGerencial: TDBComboBox;
    txtCuentasContables: TDBEdit;
    btnCuentas: TButton;
    TabSheet2: TTabSheet;
    Grid_Equipos: TDBGrid;
    Cantidades1: TMenuItem;
    Montos1: TMenuItem;
    AnexoDT3sIdPersonal: TStringField;
    AnexoDT3dCantidad: TFloatField;
    AnexoDT3sDescripcion: TStringField;
    AnexoDT3sMedida: TStringField;
    AnexoDT3dVentaMN: TFloatField;
    AnexoDT3dVentaDLL: TFloatField;
    AnexoDT3dMensual: TFloatField;
    AnexoDT3dMensualMonto: TFloatField;
    AnexoDT3dMes: TIntegerField;
    AnexoDT3dAnno: TIntegerField;
    Grid__personalViewColumn7: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    DistribuciondePersonalsIdPersonal: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsIdTipodePersonalExit(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_personalEnter(Sender: TObject);
    procedure tdCostoDllEnter(Sender: TObject);
    procedure tdCostoDllExit(Sender: TObject);
    procedure tdCostoMnEnter(Sender: TObject);
    procedure tdCostoMnExit(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure tsIdTipodePersonalEnter(Sender: TObject);
    procedure tsIdPersonalEnter(Sender: TObject);
    procedure tsIdPersonalExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tlProrrateoEnter(Sender: TObject);
    procedure tlProrrateoExit(Sender: TObject);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tlDistribuyeEnter(Sender: TObject);
    procedure tlDistribuyeExit(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaFinal1Exit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tiItemOrdenEnter(Sender: TObject);
    procedure tiItemOrdenExit(Sender: TObject);
    procedure PersonalAfterScroll(DataSet: TDataSet);
    procedure grid_personalTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ValidaDistribucin1Click(Sender: TObject);
    procedure tiAnnoEnter(Sender: TObject);
    procedure tiAnnoExit(Sender: TObject);
    procedure tsMesEnter(Sender: TObject);
    procedure tsMesExit(Sender: TObject);
    procedure tdCantidadMensualEnter(Sender: TObject);
    procedure tdCantidadMensualExit(Sender: TObject);
    procedure btnDistribuirClick(Sender: TObject);
    procedure DistribuciondePersonalCalcFields(DataSet: TDataSet);
    procedure ActualizacindeCostos1Click(Sender: TObject);
    procedure rxDistribucionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxDistribucionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EquiposxPersonalAfterInsert(DataSet: TDataSet);
    procedure EquiposxPersonalBeforePost(DataSet: TDataSet);
    procedure EquiposxPersonalsIdEquipoChange(Sender: TField);
    procedure EquiposxPersonalCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tlImprimeEnter(Sender: TObject);
    procedure tlImprimeExit(Sender: TObject);
    procedure tlCobroExit(Sender: TObject);
    procedure tlCobroEnter(Sender: TObject);
    procedure tlAplicaTMEnter(Sender: TObject);
    procedure tlAplicaTMExit(Sender: TObject);
    procedure tsAgrupacionEnter(Sender: TObject);
    procedure tsAgrupacionExit(Sender: TObject);
    procedure tsIdPersonalChange(Sender: TObject);
    //****************************BRITO 02/12/10****************************
    function posibleBorrar(idOrig: string): boolean;
    procedure tlPernoctaExit(Sender: TObject);
    procedure tlPernoctaEnter(Sender: TObject);
    procedure grid_personalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_personalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_personalTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    //****************************BRITO 02/12/10****************************
    procedure formatoEncabezado();
    function estaReportado(sIdPersonal: string): boolean;
    function estaDistribuido(sIdPersonal: string): boolean;
    function tieneEquipo(sIdPersonal: string): boolean;
    procedure EquiposxPersonalPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EquiposxPersonalDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure tdFechaFinal1Change(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdCantidadMensualChange(Sender: TObject);
    procedure PersonaldCantidadSetText(Sender: TField; const Text: string);
    procedure PersonaldCostoMNSetText(Sender: TField; const Text: string);
    procedure PersonaldCostoDLLSetText(Sender: TField; const Text: string);
    procedure PersonaldVentaMNSetText(Sender: TField; const Text: string);
    procedure PersonaldVentaDLLSetText(Sender: TField; const Text: string);
    procedure PersonaliJornadaSetText(Sender: TField; const Text: string);
    procedure EquiposxPersonaldCantidadSetText(Sender: TField;
      const Text: string);
    procedure tdCantidadChange(Sender: TObject);
    procedure tiJornadaChange(Sender: TObject);
    procedure tdCostoMnChange(Sender: TObject);
    procedure tdCostoDllChange(Sender: TObject);
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
    procedure tGerencialEnter(Sender: TObject);
    procedure tGerencialExit(Sender: TObject);
    procedure ActualizaAgrupaPersonal();
    procedure btnCuentasClick(Sender: TObject);
    procedure txtCuentasContablesEnter(Sender: TObject);
    procedure txtCuentasContablesExit(Sender: TObject);
    procedure Cantidades1Click(Sender: TObject);
    procedure Montos1Click(Sender: TObject);
    procedure copiar1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  procedure ImprimeDistribucion(sParamTipo :string);
  public
    { Public declarations }
  end;

var
  frmPersonal : TfrmPersonal;
  sTipoPersonal : String ;
  Months: array[1..12] of string;
  sOldPersonal : String ;
  //****************************BRITO 02/12/10****************************
  sOldDescripcion, sOldAgrupaPersonal: string;
  //****************************BRITO 02/12/10****************************
  Opcion: String;
  Bandera : Byte ;
  UtGrid:TicDbGrid;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;
  banderaagregar:boolean;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  iId : String;

implementation
uses
frmCatalogoCuentas;

{$R *.dfm}

function keyFiltroTdbedit (tdb:tdbedit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotdbedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotdbedit:=false;
end;

function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmPersonal.txtCuentasContablesEnter(Sender: TObject);
begin
    txtCuentasContables.Color := global_color_entradaERP
end;

procedure TfrmPersonal.txtCuentasContablesExit(Sender: TObject);
begin
    txtCuentasContables.Color := global_color_salidaERP;
end;

procedure TfrmPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Personal.Cancel ;
  action := cafree ;
  BotonPermiso.Free;
  BotonPermiso2.Free;
end;

procedure TfrmPersonal.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPersonal',PopupPrincipal);
  BotonPermiso2:= TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cPersonal', EquiposxPersonal);

  Bandera := 30 ;
  OpcButton := '' ;
  sTipoPersonal := '' ;
  frmbarra1.btnCancel.Click ;
  Personal.Active := False ;
  Personal.Params.ParamByName('Contrato').DataType := ftString ;
  Personal.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Personal.Params.ParamByName('Orden').DataType    := ftString ;
  Personal.Params.ParamByName('Orden').Value       := 'iItemOrden' ;
  Personal.Open ;

  txtCuentasContables.Text := Personal.FieldByName('sNumeroCuenta').AsString ;

  Months[1] := 'ENERO';
  Months[2] := 'FEBRERO';
  Months[3] := 'MARZO';
  Months[4] := 'ABRIL';
  Months[5] := 'MAYO';
  Months[6] := 'JUNIO';
  Months[7] := 'JULIO';
  Months[8] := 'AGOSTO';
  Months[9] := 'SEPTIEMBRE';
  Months[10] := 'OCTUBRE';
  Months[11] := 'NOVIEMBRE';
  Months[12] := 'DICIEMBRE';

  TiposdePersonal.Active := False ;
  TiposdePersonal.Open ;

  qryAgrupPers.Active := False ;
  qryAgrupPers.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

function TfrmPersonal.estaDistribuido(sIdPersonal: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdPersonal FROM distribuciondepersonal WHERE sContrato = :Contrato AND sIdPersonal = :sIdPersonal LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdPersonal').Value := sIdPersonal;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

function TfrmPersonal.estaReportado(sIdPersonal: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdPersonal FROM bitacoradepersonal WHERE sContrato = :Contrato AND sIdPersonal = :sIdPersonal LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdPersonal').Value := sIdPersonal;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

function TfrmPersonal.tieneEquipo(sIdPersonal: string): boolean;
begin
  result := false;
  with connection.QryBusca do
  begin
    Active := false;
    Filtered := false;
    SQL.Clear;
    SQL.Add('SELECT sIdPersonal FROM equiposxpersonal WHERE sContrato = :Contrato AND sIdPersonal = :sIdPersonal LIMIT 1');
    ParamByName('Contrato').Value := Global_Contrato;
    ParamByName('sIdPersonal').Value := sIdPersonal;
    Open;
    if RecordCount > 0 then
      result := true;
  end;
end;

procedure TfrmPersonal.frmBarra1btnAddClick(Sender: TObject);
begin
   banderaagregar:=true;
   frmBarra1.btnAddClick(Sender);
   Pg_Personal.ActivePageIndex := 0 ;
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Personal.Append ;
 //  activapop(frmPersonal, popupprincipal);
   MaximoItem.Active := False ;
   MaximoItem.SQL.Clear ;
   MaximoItem.SQL.Add('SELECT Max(iItemOrden) as Item FROM personal where sContrato = :contrato Group By sContrato' ) ;
   MaximoItem.Params.ParamByName('Contrato').DataType := ftString ;
   MaximoItem.Params.ParamByName('Contrato').Value := Global_Contrato ;
   MaximoItem.Open ;
   If MaximoItem.FieldByName('Item').IsNull then
       Personal.FieldValues [ 'iItemOrden' ] := 1
   else
       Personal.FieldValues [ 'iItemOrden' ]  := MaximoItem.FieldValues['Item'] + 1 ;

   Personal.FieldValues ['sContrato']   := Global_Contrato ;
   Personal.FieldValues ['sMedida']     := 'JOR' ;
   Personal.FieldValues ['iJornada']    := 12 ;
   Personal.FieldValues ['sIdTipoPersonal'] := sTipoPersonal ;
   Personal.FieldValues ['lProrrateo']  := 'Si' ;
   Personal.FieldValues ['lDistribuye'] := 'Si' ;
   Personal.FieldValues ['lCobro']      := 'Si' ;
   Personal.FieldValues ['lAplicaGerencial']   := 'Si';
   Personal.FieldValues ['lTotalizarPernocta'] := 'Si';
   Personal.FieldValues ['lImprime']    := 'Si' ;
   Personal.FieldValues ['lAplicaTM']   := 'Si' ;
   Personal.FieldValues ['lPernocta']   := 'Si' ;
   Personal.FieldValues ['dFechaInicio']:= Date ;
   Personal.FieldValues ['dFechaFinal'] := Date ;
   Personal.FieldValues ['dCantidad' ]  := 0 ;
   Personal.FieldValues ['dCostoMN' ]   := 0 ;
   Personal.FieldValues ['dCostoDLL' ]  := 0 ;
   Personal.FieldValues ['dVentaMN' ]   := 0 ;
   Personal.FieldValues ['dVentaDLL' ]  := 0 ;
   Personal.FieldValues ['sAgrupaPersonal'] := 'SIN CATEGORIA' ;
   txtCuentasContables.Text := '';
   Opcion := 'Nuevo';
   sOldPersonal := '' ;
   //****************************BRITO 02/12/10*********************************
   sOldDescripcion := '' ;
   sOldAgrupaPersonal := '' ;
   //****************************BRITO 02/12/10*********************************
   tsIdTipodePersonal.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_personal.Enabled:=false;
end;

procedure TfrmPersonal.frmBarra1btnEditClick(Sender: TObject);
begin

   banderaAgregar:=false;
   Bandera := 20 ;
   frmBarra1.btnEditClick(Sender);
   Pg_Personal.ActivePageIndex := 0 ;
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Opcion := 'Editar';
   try
       Personal.Edit ;
       activapop(frmPersonal, popupprincipal);
       sOldPersonal := Personal.FieldValues['sIdPersonal'] ;
       //**************************BRITO 02/12/10*******************************
       sOldDescripcion := Personal.FieldValues['sDescripcion'] ;
       sOldAgrupaPersonal := Personal.FieldValues['sAgrupaPersonal'] ;
       //**************************BRITO 02/12/10*******************************
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al editar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end ;
   tsIdPersonal.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_personal.Enabled:=false;
end;


function TfrmPersonal.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdPersonal');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('personal',ParamNamesWHERE,ParamValuesWHERE);
end;
//****************************BRITO 02/12/10************************************

procedure TfrmPersonal.frmBarra1btnPostClick(Sender: TObject);
var cadena :string;
var i, x, total :integer;
  lEdicion: boolean;
  sIdKardex, opcKardex: string;
  nombres, cadenas: TStringList;
begin
    //verificacion de campos vacios
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Item Orden');nombres.Add('T. Categoria');
    nombres.Add('Categoria');
    nombres.Add('Descripcion');nombres.Add('U Medida');
    nombres.Add('Cos/Salar MN');
    nombres.Add('Precio MN');nombres.Add('Jornada');
    nombres.Add('Cantidad');
    nombres.Add('Cost/Sal DLL');nombres.Add('Precio DLL');
    nombres.Add('Prorrateo?');nombres.Add('Distribuye?');
    nombres.Add('Se imprime?');nombres.Add('se cobra?');
    nombres.Add('Se considera para TM?');nombres.Add('Genera Pernocta?');

    cadenas.Add(tiItemOrden.Text);cadenas.Add(tsIdTipodePersonal.Text);
    cadenas.Add(tsAgrupacion.Text);
    cadenas.Add(tsDescripcion.Text);cadenas.Add(tsMedida.Text);
    cadenas.Add(tdCostoMn.Text);
    cadenas.Add(tdVentaMN.Text);cadenas.Add(tiJornada.Text);
    cadenas.Add(tdCantidad.Text);
    cadenas.Add(tdCostoDll.Text);cadenas.Add(tdVentaDLL.Text);
    cadenas.Add(tlProrrateo.Text);cadenas.Add(tlDistribuye.Text);
    cadenas.Add(tlImprime.Text);cadenas.Add(tlCobro.Text);
    cadenas.Add(tlAplicaTM.Text);cadenas.Add(tlPernocta.Text);

    if not validaTexto(nombres, cadenas, 'Categoria id', tsIdPersonal.text) then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;


    //Verifica que la fecha final no sea menor que la fecha inicio
    if tdFechaFinal.Date<tdFechaInicio.Date then
    begin
        showmessage('la fecha final es menor a la fecha inicial' );
        tdFechaFinal.SetFocus;
        exit;
    end;

    //Validacion de unidad de medida..
    try
       i := StrToInt(tsMedida.Text);
       messageDLg('No se aceptan numeros como Unidad de Medida.', mtInformation, [mbOk], 0);
       exit;
    Except
        //Continua...
    end;

    try
      //soad -> Validaciones antes de guardar datos!
      if (tsIdTipodePersonal.Text = '') or (tsIdPErsonal.Text = '') or (tsDescripcion.Text = '') or (tsMedida.Text = '') or (tdCantidad.Text = '') then
      begin
          MessageDlg('Existen Datos vacíos, Favor de LLenar.' , mtInformation, [mbOk], 0);
          exit;
      end;

      {DELETE CODIGO: Aqui existia codigo que determinadaban si la categoria pertenecia a un grupo de personal,
                       en caso contrario el registro no podia salvarse, 25 Ago 2011..}

      lEdicion := false;//**********************BRITO 02/12/10******************
      If OpcButton = 'Edit' Then
      Begin
          lEdicion := true;//********************BRITO 02/12/10****************
          If sOldPersonal <> Personal.FieldValues ['sIdPersonal']  Then
          Begin
               bandera  := 30 ;
          End
      End ;
      Personal.FieldValues [ 'sContrato' ]     := Global_Contrato ;
      Personal.FieldValues [ 'sNumeroCuenta' ] := 0 ;

      sTipoPersonal := Personal.FieldValues['sIdTipoPersonal'] ;

      //**************************BRITO 02/12/10********************************
      sIdKardex := Personal.FieldByName('sIdPersonal').AsString;

      If sOldPersonal <> Personal.FieldByName('sIdPersonal').AsString  Then Begin
              //Evitar duplicidad de sContrato y sIdPersonal
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('SELECT sIdPersonal From personal WHERE sContrato = :Contrato AND sIdPersonal = :Persoal');
              connection.QryBusca.ParamByName('Contrato').value := Global_Contrato ;
              Connection.QryBusca.ParamByName('Persoal').Value := Personal.FieldByName('sIdPersonal').AsString ;
              Connection.QryBusca.Open;
              if Connection.QryBusca.RecordCount > 0 then begin
                  MessageDlg('No es posible guardar los cambios porque ya existe ese ID de Personal.', mtWarning, [mbOk], 0);
                  exit;
              end;
      End;
      desactivapop(popupprincipal);
      personal.fieldvalues['dFechaInicio'] :=tdfechaInicio.date;
      personal.fieldvalues['dFechaFinal']  :=tdfechaFinal.date;
      Personal.Post ;

      //Actualiza los grupos de personal.. diavaz mayo 2012
      ActualizaAgrupaPersonal;
     If banderaagregar = False Then
       begin
        //Actualizar los id de las Distribuciones
         connection.zCommand.Active := False;
         connection.zCommand.SQL.Clear;
         connection.zCommand.SQL.Add('UPDATE distribuciondepersonal SET sIdPersonal = :PersonalN ' +
             'where sContrato = :contrato And sIdPersonal = :PersonalV');
         Connection.zCommand.Params.ParamByName('contrato').DataType   := ftString;
         Connection.zCommand.Params.ParamByName('contrato').value      := global_contrato;
         Connection.zCommand.Params.ParamByName('PersonalN').DataType  := ftString;
         Connection.zCommand.Params.ParamByName('PersonalN').value     := tsIdPersonal.Text ;
         Connection.zCommand.Params.ParamByName('PersonalV').DataType  := ftString;
         Connection.zCommand.Params.ParamByName('PersonalV').value     := DistribuciondePersonal.FieldByName('sIdPersonal').AsString ;
         connection.zCommand.ExecSQL ;
       end;
      //registrar la operacion en el kardex
      if lEdicion then
          opcKardex := 'Edita Personal'
      else
          opcKardex := 'Crea Personal';
      Kardex('Otros Movimientos', opcKardex, sIdKardex, 'ID Personal', '', '', '' );

      OpcButton := '';
      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      frmBarra1.btnPostClick(Sender) ;
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al salvar registro', 0);
           frmbarra1.btnCancel.Click ;
       end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_personal.Enabled:=true;
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
end;

procedure TfrmPersonal.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Personal.Cancel ;
   OpcButton := '';
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_personal.Enabled:=true;
end;

//soad -> Validacion si existe esta categoria de personal reportado o dado e alta en un oficio..
//**********************************************************************************************
procedure TfrmPersonal.frmBarra1btnDeleteClick(Sender: TObject);
var
  //*********************BRITO 02/12/10*************************
  lSigue: boolean;
  sIdKardex, opcKardex: string;
  //*********************BRITO 02/12/10*************************
begin
  If Personal.RecordCount  > 0 then
    If MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //**************************BRITO 02/12/10********************************
      if not posibleBorrar(Personal.FieldByName('sIdPersonal').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;
      //verificar si el personal se encuentra en alguna de las siguientes tablas antes de borrar
      lSigue := true;
      //tabla bitacoradepersonal
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('SELECT sIdPersonal FROM bitacoradepersonal ' +
                                  'WHERE sContrato = :Contrato AND sIdPersonal = :Personal');
      Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
      Connection.QryBusca.ParamByName('Personal').Value := Personal.FieldByName('sIdPersonal').AsString;
      Connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 Then Begin
          MessageDlg('El personal seleccionado ha sido utilizado en reportes diarios, no puede eliminarse.', mtInformation, [mbOk], 0);
          lSigue := false;
      End;
      If lSigue Then Begin
          //tabla distribuciondepersonal
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;          
          Connection.QryBusca.SQL.Add('SELECT sIdPersonal FROM distribuciondepersonal ' +
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal');
          Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
          Connection.QryBusca.ParamByName('Personal').Value := Personal.FieldByName('sIdPersonal').AsString;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then Begin
              MessageDlg('El personal seleccionado ha sido utilizado en distribución de personal, no puede eliminarse.', mtInformation, [mbOk], 0);
              lSigue := false;
          End;
      End;
      If lSigue Then Begin
          //tablas equiposxpersonal, paquetesdepersonal, recursospersonal y recursospersonalnuevos
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('SELECT sIdPersonal FROM equiposxpersonal ' +
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal '+
                                      'UNION SELECT sIdPersonal FROM paquetesdepersonal '+
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal '+
                                      'UNION SELECT sIdPersonal FROM recursospersonal '+
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal '+
                                      'UNION SELECT sIdPersonal FROM recursospersonalnuevos '+
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal');
          Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
          Connection.QryBusca.ParamByName('personal').Value := Personal.FieldByName('sIdPersonal').AsString;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then Begin
              MessageDlg('El personal seleccionado ha sido utilizado en recursos de personal, no puede eliminarse.', mtInformation, [mbOk], 0);
              lSigue := false;
          End;
      End;
      If lSigue Then Begin
          //tablas estimacionxpersonal
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('SELECT sIdPersonal FROM estimacionxpersonal ' +
                                      'WHERE sContrato = :Contrato AND sIdPersonal = :Personal');
          Connection.QryBusca.ParamByName('Contrato').Value := Global_Contrato ;
          Connection.QryBusca.ParamByName('personal').Value := Personal.FieldByName('sIdPersonal').AsString;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then Begin
              MessageDlg('El personal seleccionado ha sido utilizado en estimaciones de personal, no puede eliminarse.', mtInformation, [mbOk], 0);
              lSigue := false;
          End;
      End;
      If lSigue Then
      Begin
          try
               sIdKardex := Personal.FieldByName('sIdPersonal').AsString;

               Personal.Delete ;

               //registrar la operacion en el kardex
               opcKardex := 'Borra Personal';
               Kardex('Otros Movimientos', opcKardex, sIdKardex, 'ID Personal', '', '', '' );

          //**************************BRITO 02/12/10****************************
          except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al eliminar registro', 0);
              end;
          end ;
          grid_personal.SetFocus
      end
    End
end;

procedure TfrmPersonal.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
  Personal.refresh ;
  TiposdePersonal.refresh ;
 except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al Actualizar el Grid', 0);
   end;
 end;
end;

procedure TfrmPersonal.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;


procedure TfrmPersonal.tsIdTipodePersonalExit(Sender: TObject);
begin
  tsIdTipodePersonal.Color := global_color_salidaERP ;
    If (OpcButton = 'New') then
        Personal.FieldValues[ 'sIdPersonal' ] := TiposdePersonal.FieldValues[ 'sMascara' ] + trim(tiItemOrden.Text);
end;

procedure TfrmPersonal.tlImprimeEnter(Sender: TObject);
begin
    tlImprime.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tlImprimeExit(Sender: TObject);
begin
    tlImprime.Color := global_color_salidaERP
end;

procedure TfrmPersonal.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmPersonal.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmPersonal.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmPersonal.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmPersonal.Cantidades1Click(Sender: TObject);
begin
    ImprimeDistribucion('Cantidad');
end;

procedure TfrmPersonal.copiar1Click(Sender: TObject);
begin
  if tsMedida.Focused = true  Then
        tsMedida.CopyToClipboard ;

  if tsDescripcion.Focused = True Then
        tsDescripcion.CopyToClipboard ;
end;

procedure TfrmPersonal.Copy1Click(Sender: TObject);
begin
   UtGrid.CopyRowsToClip;
end;

procedure TfrmPersonal.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPersonal.Refresh1Click(Sender: TObject);
begin
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select iItemOrden, sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dFechaInicio From actividadesxanexo ' +
                                'Where sContrato = :contrato and sIdConvenio = :convenio Order By iItemOrden' ) ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
    Connection.qryBusca.Open ;
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPersonal.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmPersonal.grid_personalEnter(Sender: TObject);
begin
  If ( Personal.State = dsInsert ) or ( Personal.State = dsEdit ) then
      frmbarra1.btnCancel.Click ;

  EquiposxPersonal.Active := False ;
  EquiposxPersonal.Params.ParamByName('Contrato').DataType := ftString ;
  EquiposxPersonal.Params.ParamByName('Contrato').Value := global_contrato ;
  EquiposxPersonal.Params.ParamByName('personal').DataType := ftString ;
  If Personal.RecordCount > 0 Then
      EquiposxPersonal.Params.ParamByName('personal').Value := Personal.FieldValues['sIdPersonal']
  Else
      EquiposxPersonal.Params.ParamByName('personal').Value := '' ;
  EquiposxPersonal.Open ;
end;

procedure TfrmPersonal.grid_personalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPersonal.grid_personalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPersonal.tdCostoDllChange(Sender: TObject);
begin
  tdbeditchangef(tdCostoDll,'Cos/Salar DLL');
end;

procedure TfrmPersonal.tdCostoDllEnter(Sender: TObject);
begin
    tdCostoDLL.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdCostoDllExit(Sender: TObject);
begin
    tdCostoDLL.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tdCostoMnChange(Sender: TObject);
begin
  tdbeditchangef(tdCostoMn,'Cos/Salar MN');
end;

procedure TfrmPersonal.tdCostoMnEnter(Sender: TObject);
begin
    tdCostoMN.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdCostoMnExit(Sender: TObject);
begin
    tdCostoMN.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tdVentaMNChange(Sender: TObject);
begin
  tdbeditchangef(tdVentaMN,'Precio MN');
end;

procedure TfrmPersonal.tdVentaMNEnter(Sender: TObject);
begin
    tdVentaMN.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdVentaMNExit(Sender: TObject);
begin
    tdVentaMN.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tdVentaDLLChange(Sender: TObject);
begin
  tdbeditchangef(tdVentaDLL,'Precio DLL');
end;

procedure TfrmPersonal.tdVentaDLLEnter(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdVentaDLLExit(Sender: TObject);
begin
    tdVentaDLL.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tGerencialEnter(Sender: TObject);
begin
    tGerencial.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tGerencialExit(Sender: TObject);
begin
    tGerencial.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tsIdTipodePersonalEnter(Sender: TObject);
begin
    tsIdTipodePersonal.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsIdPersonalChange(Sender: TObject);
begin
 if Bandera = 20 then
  begin
    Personal.Edit ;
    Personal.FieldValues['sIdPersonal'] := tsIdPersonal.Text ;
  end;
end;

procedure TfrmPersonal.tsIdPersonalEnter(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsIdPersonalExit(Sender: TObject);
begin
    tsIdPersonal.Color := global_color_salidaERP;

end;

procedure TfrmPersonal.tsAgrupacionEnter(Sender: TObject);
begin
    tsAgrupacion.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsAgrupacionExit(Sender: TObject);
var
x,i : integer;
cadena : string;
begin
    if tsAgrupacion.Text <> '' then
    begin
        if Opcion = 'Nuevo' then
        begin
            if tsAgrupacion.Text <> 'SIN CATEGORIA' then
            begin
                x := pos('.',tsAgrupacion.Text);
                Personal.FieldValues[ 'sIdPersonal' ] := copy(tsAgrupacion.Text,1,x-1) + '-A';
                i := length(tsAgrupacion.Text);
                Personal.FieldValues[ 'sDescripcion'] := copy(tsAgrupacion.Text,x+3,i);

                //Se busca y coloca el precio del personal del c-14
                Connection.QryBusca.Active := False ;
                Connection.QryBusca.SQL.Clear ;
                Connection.QryBusca.SQL.Add('Select dVentaMN, dVentaDLL, iJornada From personal ' +
                                            'Where sContrato = :Contrato and sIdPersonal = :IdPersonal' ) ;
                Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                Connection.QryBusca.Params.ParamByName('IdPersonal').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('IdPersonal').Value := copy(tsAgrupacion.Text,1,x-1) ;
                Connection.QryBusca.Open ;
                If Connection.QryBusca.RecordCount > 0 Then
                begin
                    tdVentaMN.Text  := connection.QryBusca.FieldValues['dVentaMN'];
                    tdVentaDLL.Text := connection.QryBusca.FieldValues['dVentaDLL'];
                    tiJornada.Text  := connection.QryBusca.FieldValues['iJornada'];
                end;
            end;
        end;
    end
    else
       Personal.FieldValues[ 'sIdPersonal' ] := tsIdPersonal.Text;
    tsAgrupacion.Color := global_color_salidaERP ;
end;

procedure TfrmPersonal.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tsMedidaEnter(Sender: TObject);
begin
    tsMedida.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsMedidaExit(Sender: TObject);
begin
    tsMedida.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tlPernoctaEnter(Sender: TObject);
begin
  tlPernocta.Color := global_color_entrada
end;

procedure TfrmPersonal.tlPernoctaExit(Sender: TObject);
begin
tlPernocta.Color := global_color_salida
end;

procedure TfrmPersonal.tlProrrateoEnter(Sender: TObject);
begin
    tlProrrateo.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tlProrrateoExit(Sender: TObject);
begin
    tlProrrateo.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tiJornadaChange(Sender: TObject);
begin
  tdbeditchangei(tiJornada,'Jornada');
end;

procedure TfrmPersonal.tiJornadaEnter(Sender: TObject);
begin
    tiJornada.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tiJornadaExit(Sender: TObject);
begin
    tiJornada.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tlAplicaTMEnter(Sender: TObject);
begin
    tlAplicaTM.color := global_color_entradaERP
end;

procedure TfrmPersonal.tlAplicaTMExit(Sender: TObject);
begin
    tlAplicaTM.color := global_color_salidaERP
end;

procedure TfrmPersonal.tlDistribuyeEnter(Sender: TObject);
begin
    tlDistribuye.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tlDistribuyeExit(Sender: TObject);
begin
    tlDistribuye.Color := global_color_salidaERP
end;

procedure TfrmPersonal.ListaObjetoDblClick(Sender: TObject);
begin
    Grid_Equipos.SetFocus
end;

procedure TfrmPersonal.ListaObjetoExit(Sender: TObject);
begin
    If Panel.Visible = True Then
    Begin
        If BuscaObjeto.RecordCount > 0 Then
            EquiposxPersonal.FieldValues['sIdEquipo'] := BuscaObjeto.FieldValues['sIdEquipo'] ;
        Panel.Visible := False ;
    End
end;

procedure TfrmPersonal.Montos1Click(Sender: TObject);
begin
    ImprimeDistribucion('Monto');
end;

procedure TfrmPersonal.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP

end;



procedure TfrmPersonal.tdFechaInicioExit(Sender: TObject);
begin
  if tdFechaFinal.Date<tdFechaInicio.Date then
    tdFechaFinal.date:=tdFechainicio.Date;
  tdFechaInicio.Color := global_color_salidaERP

end;

procedure TfrmPersonal.tdFechaFinal1Change(Sender: TObject);
begin
  tdFechaFinal.Date:=tdFechainicio.Date;
end;

procedure TfrmPersonal.tdFechaFinal1Exit(Sender: TObject);
begin
if tdFechaFinal.Date<tdFechaInicio.Date then
tdFechaFinal.date:=tdFechainicio.Date;
    tdFechaFinal.Color := global_color_salida
end;

procedure TfrmPersonal.tdCantidadChange(Sender: TObject);
begin
tdbeditchangef(tdCantidad,'cantidad');
end;

procedure TfrmPersonal.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tiItemOrdenEnter(Sender: TObject);
begin
    tiItemOrden.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tiItemOrdenExit(Sender: TObject);
begin
    tiItemOrden.Color := global_color_salidaERP
end;

procedure TfrmPersonal.Paste1Click(Sender: TObject);
begin
    if tsMedida.Focused = true  Then
        tsMedida.PasteFromClipboard ;

  if tsDescripcion.Focused = True Then
        tsDescripcion.PasteFromClipboard ;
end;

procedure TfrmPersonal.PersonalAfterScroll(DataSet: TDataSet);
begin
    If frmBarra1.btnCancel.Enabled = False Then
        If Personal.RecordCount > 0 Then
        Begin
            txtCuentasContables.Text := Personal.FieldByName('sNumeroCuenta').AsString;

            EquiposxPersonal.Active := False ;
            EquiposxPersonal.Params.ParamByName('Contrato').DataType := ftString ;
            EquiposxPersonal.Params.ParamByName('Contrato').Value := global_contrato ;
            EquiposxPersonal.Params.ParamByName('personal').DataType := ftString ;
            If Personal.RecordCount > 0 Then
                EquiposxPersonal.Params.ParamByName('personal').Value := Personal.FieldValues['sIdPersonal']
            Else
                EquiposxPersonal.Params.ParamByName('personal').Value := '' ;
            EquiposxPersonal.Open ;

            tiAnno.Value := YearOf(Personal.FieldValues['dFechaInicio']) ;
            tsMes.ItemIndex := MonthOf(Personal.FieldValues['dFechaInicio'])  ;
            tdCantidadMensual.Value := 0 ;
            DistribuciondePersonal.Active := False ;
            DistribuciondePersonal.Params.ParamByName('Contrato').DataType := ftString ;
            DistribuciondePersonal.Params.ParamByName('Contrato').Value := global_contrato ;
            DistribuciondePersonal.Params.ParamByName('Personal').DataType := ftString ;
            DistribuciondePersonal.Params.ParamByName('Personal').Value := Personal.FieldValues['sIdPersonal'] ;
            DistribuciondePersonal.Open ;
        End
end;           

procedure TfrmPersonal.PersonaldCantidadSetText(Sender: TField;
  const Text: string);
begin
 sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPersonal.PersonaldCostoDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPersonal.PersonaldCostoMNSetText(Sender: TField;
  const Text: string);
begin
  //password:=text;
  sender.Value:=abs(StrToFloatDef(text,0));
  //sender
end;

procedure TfrmPersonal.PersonaldVentaDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPersonal.PersonaldVentaMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPersonal.PersonaliJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmPersonal.grid_personalTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var
  sCampo : String ;
begin
  sCampo := Field.FieldName ;
(*
    Personal.Active := False ;
    Personal.Params.ParamByName('Contrato').DataType := ftString ;
    Personal.Params.ParamByName('Contrato').Value := Global_Contrato ;
    Personal.Params.ParamByName('Orden').DataType := ftString ;
    Personal.Params.ParamByName('Orden').Value := sCampo ;
    Personal.Open ;  
*)
end;

procedure TfrmPersonal.grid_personalTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmPersonal.ValidaDistribucin1Click(Sender: TObject);
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select e.sIdPersonal, e.dCantidad, sum(d.dCantidad) as Distribuido From personal e ' +
                                     'INNER JOIN distribuciondepersonal d ON (e.sContrato = d.sContrato And e.sIdPersonal = d.sIdPersonal) ' +
                                     'Where e.sContrato = :Contrato Group By e.sIdPersonal' ) ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 Then
    Begin
        Connection.QryBusca.First ;
        While NOT Connection.QryBusca.Eof Do
        Begin
            If Connection.QryBusca.FieldValues['dCantidad'] <> Connection.QryBusca.FieldValues['Distribuido'] Then
                 MessageDlg('Existe una diferencia en la distribucion del Personal ' + Connection.QryBusca.FieldValues['sIdPersonal'] , mtInformation, [mbOk], 0);
            Connection.QryBusca.Next ;
        End
    End ;
    MessageDlg('Proceso Terminado con Exito.' , mtInformation, [mbOk], 0);
end;

procedure TfrmPersonal.tiAnnoEnter(Sender: TObject);
begin
    tiAnno.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tiAnnoExit(Sender: TObject);
begin
    tiAnno.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tsMesEnter(Sender: TObject);
begin
    tsMes.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tsMesExit(Sender: TObject);
begin
    tsMes.Color := global_color_salidaERP
end;

procedure TfrmPersonal.tdCantidadMensualChange(Sender: TObject);
begin
  tCurrenciEditChangef(tdCantidadMensual,'Cantidad Mensual');
end;

procedure TfrmPersonal.tdCantidadMensualEnter(Sender: TObject);
begin
    tdCantidadMensual.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tdCantidadMensualExit(Sender: TObject);
begin
    tdCantidadMensual.Color := global_color_salidaERP
end;

procedure TfrmPersonal.btnDistribuirClick(Sender: TObject);
Var
    sFecha : String ;
    iMes   : Integer ;
begin
    If tsMes.Text = 'ENERO' Then iMes := 1
    Else If tsMes.Text = 'FEBRERO' Then iMes := 2
    Else If tsMes.Text = 'MARZO' Then iMes := 3
    Else If tsMes.Text = 'ABRIL' Then iMes := 4
    Else If tsMes.Text = 'MAYO' Then iMes := 5
    Else If tsMes.Text = 'JUNIO' Then iMes := 6
    Else If tsMes.Text = 'JULIO' Then iMes := 7
    Else If tsMes.Text = 'AGOSTO' Then iMes := 8
    Else If tsMes.Text = 'SEPTIEMBRE' Then iMes := 9
    Else If tsMes.Text = 'OCTUBRE' Then iMes := 10
    Else If tsMes.Text = 'NOVIEMBRE' Then iMes := 11
    Else If tsMes.Text = 'DICIEMBRE' Then iMes := 12 ;
    If iMes < 9 Then
        sFecha := '01/0' + Trim(IntToStr(iMes + 1)) + '/' + tiAnno.Text
    Else
        If iMes < 12 Then
            sFecha := '01/' + Trim(IntTostr(iMes + 1)) + '/' + tiAnno.Text
        Else
        Begin
            tiAnno.Value := tiAnno.Value + 1 ;
            sFecha := '01/01/' + tiAnno.Text
        End ;
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sContrato From distribuciondepersonal ' +
                                'Where sContrato = :Contrato and sIdPersonal = :Personal and dIdFecha = :Fecha') ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca.Params.ParamByName('Personal').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Personal').Value := Personal.FieldValues['sIdPersonal'] ;
    Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.QryBusca.Params.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
    Connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 then
    Begin
        try
            //************************BRITO 16/05/2011**************************
            //averiguar la suma de todo menos el registro que se estara editando
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sum(dCantidad) as suma From distribuciondepersonal ' +
                                        'Where sContrato = :Contrato and sIdPersonal = :Personal and dIdFecha <> :Fecha') ;
            Connection.QryBusca.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.ParamByName('Personal').Value := Personal.FieldByName('sIdPersonal').AsString ;
            Connection.QryBusca.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
            Connection.QryBusca.Open ;
            if Connection.QryBusca.RecordCount > 0 then
            begin
              if (Connection.QryBusca.FieldByName('suma').AsFloat + tdCantidadMensual.Value)
                > (Personal.FieldByName('dCantidad').AsFloat) then
              begin
                //no es posible distribuir mas de la cantidad asignada a la categoria de personal
                showmessage('No se puede distribuir más de lo asignado a la categoría de personal');
                exit;
              end;
            end;
            //************************BRITO 16/05/2011**************************

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'update distribuciondepersonal SET dCantidad = :Cantidad ' +
                                          'Where sContrato = :Contrato And sIdPersonal = :Personal And dIdFecha = :Fecha') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Personal').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Personal').Value := Personal.FieldValues ['sIdPersonal'] ;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Cantidad').Value := tdCantidadMensual.Value ;
            connection.zCommand.ExecSQL () ;
        except
           on e : exception do begin
               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al editar distribucion de personal', 0);
           end;
        end
    End
    Else
    Begin
        try
            //************************BRITO 16/05/2011**************************
            //averiguar la suma de todo
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sum(dCantidad) as suma From distribuciondepersonal ' +
                                        'Where sContrato = :Contrato and sIdPersonal = :Personal') ;
            Connection.QryBusca.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.ParamByName('Personal').Value := Personal.FieldByName('sIdPersonal').AsString ;
            Connection.QryBusca.Open ;
            if Connection.QryBusca.RecordCount > 0 then
            begin
                //no es posible distribuir mas de la cantidad asignada a la categoria de personal            
              if (Connection.QryBusca.FieldByName('suma').AsFloat + tdCantidadMensual.Value)
                > (Personal.FieldByName('dCantidad').AsFloat) then
              begin
                showmessage('No se puede distribuir más de lo asignado a la categoría de personal');
                exit;
              end;
            end;
            //************************BRITO 16/05/2011**************************

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondepersonal (sContrato, sIdPersonal, dIdFecha, dCantidad) ' +
                                          'VALUES (:Contrato, :Personal, :Fecha, :Cantidad)') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Personal').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Personal').Value := Personal.FieldValues ['sIdPersonal'] ;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('Fecha').Value := StrToDate(sFecha) - 1 ;
            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Cantidad').Value := tdCantidadMensual.Value ;
            connection.zCommand.ExecSQL () ;
        except
           on e : exception do begin
               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al agregar en distribucion de personal', 0);
           end;
        end
    End ;
    DistribuciondePersonal.Refresh ;
    DistribuciondePersonal.Last ;
    If tsMes.Text <> 'DICIEMBRE' Then
        tsMes.ItemIndex := tsMes.ItemIndex + 1
    Else
    Begin
        //tiAnno.Value := tiAnno.Value + 1 ;
        tsMes.ItemIndex := 0 ;
    End ;
    tdCantidadMensual.SetFocus
end;

procedure TfrmPersonal.btnCuentasClick(Sender: TObject);
begin
    if personal.State IN [dsEdit, dsInsert] then
      begin
      Application.CreateForm(Tfrm_Catalogocuentasc, frm_CatalogoCuentasc);
      frm_CatalogoCuentasc.FormStyle := fsNormal;
      frm_CatalogoCuentasc.btnAceptar.Visible := True;
      frm_CatalogoCuentasc.show;
      end;
end;


procedure TfrmPersonal.DistribuciondePersonalCalcFields(DataSet: TDataSet);
begin
    Case MonthOf(DistribuciondePersonal.FieldValues['dIdFecha']) Of
        1 : DistribuciondePersonalsMes.Value := 'ENERO' ;
        2 : DistribuciondePersonalsMes.Value := 'FEBRERO' ;
        3 : DistribuciondePersonalsMes.Value := 'MARZO' ;
        4 : DistribuciondePersonalsMes.Value := 'ABRIL' ;
        5 : DistribuciondePersonalsMes.Value := 'MAYO' ;
        6 : DistribuciondePersonalsMes.Value := 'JUNIO' ;
        7 : DistribuciondePersonalsMes.Value := 'JULIO' ;
        8 : DistribuciondePersonalsMes.Value := 'AGOSTO' ;
        9 : DistribuciondePersonalsMes.Value := 'SEPTIEMBRE' ;
        10 : DistribuciondePersonalsMes.Value := 'OCTUBRE' ;
        11 : DistribuciondePersonalsMes.Value := 'NOVIEMBRE' ;
        12 : DistribuciondePersonalsMes.Value := 'DICIEMBRE' ;
    End ;
    DistribuciondePersonaliAnno.Value := YearOf (DistribuciondePersonal.FieldValues['dIdFecha'])
end;


procedure TfrmPersonal.ActualizacindeCostos1Click(Sender: TObject);
begin
    If MessageDlg('Desea actualizar el costo de todo el personal existente en reportes diarios?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'UPDATE bitacoradepersonal b, personal p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL Where b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sContrato = :Contrato') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
         connection.zCommand.ExecSQL () ;
         messageDLg('Proceso Finalizado con Exito!', mtInformation, [mbOk], 0);
    End ;
end;

procedure TfrmPersonal.rxDistribucionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    If DistribuciondePersonal.RecordCount > 0 Then
    Begin
        tsMes.ItemIndex := MonthOf(DistribuciondePersonal.FieldValues['dIdFecha']) - 1 ;
        tiAnno.Value := DistribuciondePersonaliAnno.Value ;
        tdCantidadMensual.Value := DistribuciondePersonal.FieldValues['dCantidad'] ;
    End
    Else
    Begin
        tsMes.ItemIndex := MonthOf(Personal.FieldValues['dFechaInicio'])  ;
        tiAnno.Value := YearOf(Personal.FieldValues['dFechaInicio']) ;
        tdCantidadMensual.Value := 0  ;
    End
end;

procedure TfrmPersonal.rxDistribucionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If DistribuciondePersonal.RecordCount > 0 Then
    Begin
        tsMes.ItemIndex := MonthOf(DistribuciondePersonal.FieldValues['dIdFecha']) - 1 ;
        tiAnno.Value := DistribuciondePersonaliAnno.Value ;
        tdCantidadMensual.Value := DistribuciondePersonal.FieldValues['dCantidad'] ;
    End
    Else
    Begin
        tsMes.ItemIndex := MonthOf(Personal.FieldValues['dFechaInicio'])  ;
        tiAnno.Value := YearOf(Personal.FieldValues['dFechaInicio']) ;
        tdCantidadMensual.Value := 0  ;
    End
end;

procedure TfrmPersonal.EquiposxPersonalAfterInsert(DataSet: TDataSet);
begin
    equiposxpersonal.FieldValues['sContrato'] := global_contrato ;
    equiposxpersonal.FieldValues['sIdPersonal'] := personal.FieldValues['sIdPersonal'] ;
end;

procedure TfrmPersonal.EquiposxPersonalBeforePost(DataSet: TDataSet);
begin
    If (EquiposxPersonal.FieldValues['sIdEquipo'] = Null) Then
            abort //EquiposxPersonal.Cancel
end;

procedure TfrmPersonal.EquiposxPersonalsIdEquipoChange(Sender: TField);
Var
    sDescripcion : String ;
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sDescripcion, sMedida from equipos where sContrato = :contrato And sIdEquipo = :equipo') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('equipo').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('equipo').Value := equiposxpersonal.FieldValues['sIdEquipo'] ;
    connection.QryBusca.Open ;
    If connection.QryBusca.RecordCount > 0 Then
    begin
        EquiposxPersonalsDescripcion.Text := connection.QryBusca.FieldValues['sDescripcion'] ;
        EquiposxPersonalsMedida.Text := connection.QryBusca.FieldValues['sMedida'] ;
    end
    Else
        If NOT EquiposxPersonal.FieldByName('sIdEquipo').IsNull Then
        If Trim(EquiposxPersonal.FieldValues['sIdEquipo'])  <> '' then
        Begin
                sDescripcion := '%' + Trim (UpperCase(EquiposxPersonal.FieldValues['sIdEquipo'])) + '%' ;
                BuscaObjeto.Active := False ;
                ListaObjeto.Columns.Clear ;
                ListaObjeto.Columns.Add ;
                ListaObjeto.Columns[0].FieldName := 'sDescripcion' ;
                BuscaObjeto.SQL.Clear ;
                BuscaObjeto.SQL.Add('Select sIdEquipo, sDescripcion from equipos Where ' +
                                    'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion') ;
                BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString ;
                BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato ;
                BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString ;
                BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion ;
                BuscaObjeto.Open ;
                Panel.Visible := True ;
                ListaObjeto.SetFocus
            End
end;

procedure TfrmPersonal.ExportaraExcel1Click(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena : String;
  fs: tStream;
  Alto : Extended;
  Ren, nivel : integer;
Begin
    Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
    Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 10;
      Excel.Columns['C:C'].ColumnWidth := 15;
      Excel.Columns['D:D'].ColumnWidth := 40;
      Excel.Columns['E:N'].ColumnWidth := 12;


      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Id_Personal';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Ordenamiento';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'Id_TipoPersonal';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Jornada';
      FormatoEncabezado;

      connection.QryBusca.Active := False ;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select * from personal where sContrato =:Contrato order by iItemOrden');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
      connection.QryBusca.Open ;

      if connection.QryBusca.RecordCount > 0 then
      begin
           while not connection.QryBusca.Eof do
           begin
                Hoja.Cells[Ren,1].Select;
                Excel.Selection.Value := global_contrato;
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;
                Excel.Selection.Font.Size := 11;
                Excel.Selection.Font.Bold := False;
                Excel.Selection.Font.Name := 'Calibri';

                Hoja.Cells[Ren,2].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sIdPersonal'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,3].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['iItemOrden'];

                Hoja.Cells[Ren,4].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];
                Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
                Hoja.Cells[Ren,4].Value := '';

                if Alto > 15 then
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
                Else
                   Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

                Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];

                Hoja.Cells[Ren,5].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
                Excel.Selection.HorizontalAlignment := xlCenter;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,6].Select;
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,7].Select;
                Excel.Selection.NumberFormat := '@';
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoMN'];
                Excel.Selection.HorizontalAlignment := xlRight;
                Excel.Selection.VerticalAlignment   := xlCenter;

                Hoja.Cells[Ren,8].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoDLL'];

                Hoja.Cells[Ren,9].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaMN'];

                Hoja.Cells[Ren,10].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaDLL'];

                Hoja.Cells[Ren,11].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

                Hoja.Cells[Ren,12].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                Hoja.Cells[Ren,13].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['sIdTipoPersonal'];

                Hoja.Cells[Ren,14].Select;
                Excel.Selection.Value := connection.QryBusca.FieldValues['iJornada'];

                connection.QryBusca.Next;
                Inc(Ren);
           end;
      end;
      Hoja.Cells[2,2].Select;


  Hoja.Range['A1:N1'].Select;
  // Formato general de encabezado de datos..
  Excel.Selection.HorizontalAlignment                   := xlCenter;
  Excel.Selection.VerticalAlignment                     := xlCenter;
  Excel.Selection.Interior.ColorIndex := 5;
  Excel.Selection.Font.color          := clWhite;
  Excel.Selection.Interior.Pattern    := xlSolid;

  Hoja.Range['A1:A1'].Select;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    try
       Hoja.Name := 'PERSONAL '+ global_contrato;
    Except
       Hoja.Name := 'PERSONAL '+ global_contrato;
    end;
    DatosPlantilla;
  Except
    on e:exception do
    Begin
      Resultado := False;
      CadError := 'Se ha producido el siguiente error al generar la Plantilla de Personal' + #10 + #10 + e.Message;
    End;
  End;

  Result := Resultado;
End;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  If Not SaveDialog1.Execute Then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!' , mtConfirmation, [mbOk], 0) ;

      Excel := '';

  if CadError <> '' then
    showmessage(CadError);


end;

procedure TfrmPersonal.EquiposxPersonalCalcFields(DataSet: TDataSet);
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sDescripcion, sMedida from equipos where sContrato = :contrato And sIdEquipo = :equipo') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('equipo').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('equipo').Value := equiposxpersonal.FieldValues['sIdEquipo'] ;
    connection.QryBusca.Open ;
    If connection.QryBusca.RecordCount > 0 Then
    begin
        EquiposxPersonalsDescripcion.Text := connection.QryBusca.FieldValues['sDescripcion'] ;
        EquiposxPersonalsMedida.Text := connection.QryBusca.FieldValues['sMedida'] ;
    end


end;

procedure TfrmPersonal.EquiposxPersonaldCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmPersonal.EquiposxPersonalDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al eliminar asignacion de equipos', 0);
  abort;
end;

procedure TfrmPersonal.EquiposxPersonalPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Especialidades de Personal', 'Al guardar asignacion de equipos', 0);
  abort;
end;

procedure TfrmPersonal.FormKeyPress(Sender: TObject; var Key: Char);
{ Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
      if (ActiveControl is TrxDBGrid) then   { si es un TrxDBGrid }
           Key := #0                           { nos comemos la tecla }
      Else
        if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
          with TDBGrid(ActiveControl) do
            if selectedindex < (fieldcount -1) then
              selectedindex := selectedindex +1
            else
              selectedindex := 0;
end;

procedure TfrmPersonal.ActualizaAgrupaPersonal;
var
    zAgrupa : tzReadOnlyQuery;
begin
    zAgrupa := tzReadOnlyQuery.Create(self);
    zAgrupa.Connection := connection.zConnection;
    zAgrupa.Active := False;
    zAgrupa.SQL.Clear;
    zAgrupa.SQL.Add('Update bitacoradepersonal set sAgrupaPersonal =:Agrupa where sContrato =:Contrato and sIdPersonal =:Personal ');
    zAgrupa.ParamByName('Contrato').AsString := global_contrato;
    zAgrupa.ParamByName('Agrupa').AsString   := personal.FieldValues['sAgrupaPersonal'];
    zAgrupa.ParamByName('Personal').AsString := personal.FieldValues['sIdPersonal'];
    zAgrupa.ExecSQL;
    zAgrupa.Destroy;
end;


procedure TfrmPersonal.tlCobroEnter(Sender: TObject);
begin
    tlCobro.Color := global_color_entradaERP
end;

procedure TfrmPersonal.tlCobroExit(Sender: TObject);
begin
    tlCobro.Color := global_color_salidaERP
end;

procedure TfrmPersonal.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

procedure TfrmPersonal.ImprimeDistribucion(sParamTipo: string);
begin
   If personal.RecordCount > 0 Then
   begin
        AnexoDT3.Active := False ;
        AnexoDT3.SQL.Clear ;
        AnexoDT3.SQL.Add('Select a.sIdPersonal, a.sDescripcion, a.dCantidad, a.sMedida, year(d.dIdFecha) as dAnno, a.dVentaMN, a.dVentaDLL, ' +
                         'month(d.dIdFecha) as dMes, Sum(d.dCantidad) as dMensual, Sum(d.dCantidad) * dVentaMN as dMensualMonto from personal a  ' +
                         'inner join distribuciondepersonal d ' +
                         'on (a.sContrato = d.sContrato And a.sIdPersonal = d.sIdPersonal) ' +
                         'Where a.sContrato = :contrato ' +
                         'Group By d.sContrato, d.sIdPersonal, Year(d.dIdFecha), month(d.dIdFecha) ' +
                         'Order By Year(d.dIdFecha), month(d.dIdFecha), a.iItemOrden, d.sIdPersonal') ;
        AnexoDT3.Params.ParamByName('Contrato').DataType := ftString ;
        AnexoDT3.Params.ParamByName('Contrato').Value    := global_Contrato ;
        AnexoDT3.Open ;

        if AnexoDT3.RecordCount > 0 then
        begin
          frxPersonal.PreviewOptions.MDIChild := False ;
          frxPersonal.PreviewOptions.Modal := True ;
          frxPersonal.PreviewOptions.ShowCaptions := False ;
          frxPersonal.Previewoptions.ZoomMode := zmPageWidth ;

          if sParamTipo = 'Cantidad' then
          begin
              frxPersonal.LoadFromFile(Global_Files+ global_miReporte + '_DmoPersonal.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoPersonal.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoPersonal.fr3 no existe, notifique al administrador del sistema')
              else
                 frxPersonal.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
          end;

          if sParamTipo = 'Monto' then
          begin
              frxPersonal.LoadFromFile(Global_Files+ global_miReporte + '_DmoPersonalMonto.fr3') ;
              if not FileExists(global_files + global_miReporte + '_DmoPersonalMonto.fr3') Then
                 showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_DmoPersonalMonto.fr3 no existe, notifique al administrador del sistema')
              else
                 frxPersonal.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
          end;
       end
       else
          messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
   end
   else
       ShowMessage('No existen registros para Generar la Distribucion Mensual de Personal');
end;

end.
