unit frm_bitacoraxalcance;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, Math,
  frxClass, frxDBSet, ImgList, RXDBCtrl, RxMemDS, CheckLst, RxLookup, jpeg,
  Newpanel, PanelDown, ZAbstractRODataset, ZDataset, rxCurrEdit, rxToolEdit,
  ZConnection, frm_DetalleCaptura, UnitTBotonesPermisos, udbgrid,
  UnitExcepciones, UnitValidaTexto, UFunctionsGHH, UnitValidacion, Editb,
  EditCalc, NxEdit, sMaskEdit, sCustomComboEdit, sCurrEdit;

type
  TfrmBitacoraxAlcance = class(TForm)
    Label1: TLabel;
    tdIdFecha: TDateTimePicker;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    ds_BitacoradeAlcances: TDataSource;
    ds_ResumenAlcances: TDataSource;
    ds_Alcances: TDataSource;
    frmBarra1: TfrmBarra;
    grid_bitacora: TRxDBGrid;
    PopRegenera: TPopupMenu;
    Regenera1: TMenuItem;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N4: TMenuItem;
    Cut2: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Undo1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    HistorialdelaPartida1: TMenuItem;
    N5: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    ds_Historico: TDataSource;
    KardexInventario: TMenuItem;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    imgNotas: TImage;
    tsReferencia: TEdit;
    tmDescripcion: TMemo;
    tdPonderado: TCurrencyEdit;
    tdCantidadInstalar: TCurrencyEdit;
    tiFase: TRxDBLookupCombo;
    tsNumeroActividad: TRxDBLookupCombo;
    PanelAlcances: tNewGroupBox;
    Grid_Resumen: TDBGrid;
    tNewGroupBox1: tNewGroupBox;
    tdAvanceGlobal: TCurrencyEdit;
    pbAvance: TProgressBar;
    mnFichaTecnica: TMenuItem;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    QryResumendeAlcances: TZReadOnlyQuery;
    QryResumendeAlcancesiFase: TIntegerField;
    QryResumendeAlcancesdPonderado: TFloatField;
    QryResumendeAlcancessDescripcion: TStringField;
    QryResumendeAlcancesdCantidad: TFloatField;
    QryHistorico: TZReadOnlyQuery;
    Paquete: TZReadOnlyQuery;
    MaximoDiario: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    ds_actividadesiguales: TDataSource;
    ActividadesIguales: TZReadOnlyQuery;
    ActividadesIgualessWbsAnterior: TStringField;
    ActividadesIgualessWbs: TStringField;
    ActividadesIgualessNumeroActividad: TStringField;
    ActividadesIgualesmDescripcion: TMemoField;
    ActividadesIgualesdCantidad: TFloatField;
    ActividadesIgualesdInstalado: TFloatField;
    ActividadesIgualesdExcedente: TFloatField;
    ActividadesIgualesdPonderado: TFloatField;
    ActividadesIgualessMedida: TStringField;
    ActividadesIgualesdRestante: TFloatField;
    pdPaquete: TPanelDown;
    grid_iguales: TRxDBGrid;
    AvanceMaximo: TZReadOnlyQuery;
    BitacoradeAlcances: TZReadOnlyQuery;
    BitacoradeAlcancessIdTurno: TStringField;
    BitacoradeAlcancessWbs: TStringField;
    BitacoradeAlcancessNumeroActividad: TStringField;
    BitacoradeAlcancesdCantidad: TFloatField;
    BitacoradeAlcancesdAvance: TFloatField;
    BitacoradeAlcancessReferencia: TStringField;
    BitacoradeAlcancesiIdDiario: TIntegerField;
    BitacoradeAlcancesiFase: TIntegerField;
    BitacoradeAlcancesmDescripcion: TMemoField;
    BitacoradeAlcancessDescripcion: TStringField;
    BitacoradeAlcancesdVentaMN: TFloatField;
    BitacoradeAlcancesdVentaDLL: TFloatField;
    BitacoradeAlcancessMedida: TStringField;
    BitacoradeAlcancesdMontoMN: TCurrencyField;
    ds_ParidasEfectivas: TDataSource;
    QryPartidasEfectivas: TZReadOnlyQuery;
    Alcances: TZReadOnlyQuery;
    AlcancesiFase: TIntegerField;
    AlcancessDescripcion: TStringField;
    AlcancesdAvance: TFloatField;
    rDiario: TfrxReport;
    BitacoradeAlcancessTurno: TStringField;
    tmNotas: TMemo;
    BitacoradeAlcancesmNotas: TMemoField;
    Button1: TButton;
    mdDetalle: TRxMemoryData;
    tdCantidad: TsCalcEdit;
    BitacoradeAlcancessNumeroOrden: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure tiFaseEnter(Sender: TObject);
    procedure tiFaseExit(Sender: TObject);
    procedure tiFaseKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tsReferenciaEnter(Sender: TObject);
    procedure tsReferenciaExit(Sender: TObject);
    procedure tsReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure rxActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitacoradeAlcancesAfterScroll(DataSet: TDataSet);
    procedure grid_bitacoraEnter(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure grid_igualesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ActividadesIgualesAfterScroll(DataSet: TDataSet);
    procedure DetalledelaPartida1Click(Sender: TObject);
    procedure grid_bitacoraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure tmDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Regenera1Click(Sender: TObject);
    procedure grid_bitacoraGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure QryHistoricoAfterScroll(DataSet: TDataSet);
    procedure KardexInventarioClick(Sender: TObject);
    procedure Grid_HistoricoDblClick(Sender: TObject);
    procedure Grid_ResumenDblClick(Sender: TObject);
    procedure QryHistoricoCalcFields(DataSet: TDataSet);
    procedure Grid_HistoricoKeyPress(Sender: TObject; var Key: Char);
    procedure PanelHistoricoExit(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Grid_HistoricoEnter(Sender: TObject);
    procedure mnFichaTecnicaClick(Sender: TObject);
    function fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnActualizaAcumuladosOrdenTrx(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnActualizaAcumuladosContratoTrx(sParamOpcion, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnValidaPartidaAnexo(sParamsWbsContrato,sParamNumeroActividad: string): boolean;
    function fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
    function fdValidaciondeAlcance(sParamWbs, sParamNumeroActividad: string; iParamFase: Byte): double;
    function fdValidaciondeAlcancexSuministro(sParamWbs, sParamNumeroActividad: string; iParamFase: Byte): Boolean;
    function fdAjustaAlcance(sParamWbs, sParamNumeroActividad, sParamFecha: string; iParamFase: Byte; dParamCantidadInstalar, dParamCantidad, dParamMaximo: Double): Currency;

    procedure BitacoradeAlcancesCalcFields(DataSet: TDataSet);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tiFaseChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure mdDetalleBeforePost(DataSet: TDataSet);
    procedure mdDetalleBeforeInsert(DataSet: TDataSet);
    procedure mdDetalleBeforeDelete(DataSet: TDataSet);
    procedure tdCantidadChange(Sender: TObject);
    procedure tdCantidadClick(Sender: TObject);

  private
    sMenuP: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraxAlcance: TfrmBitacoraxAlcance;
  sReferencia: string;
  dAcumulado: Currency;
  sWbsFormulario: string;
  SavePlace: TBookmark;
  dExcedenteOrden: Double;
  dExcedenteAnexo: Double;
  dInstaladoOrden: Double;
  dInstaladoAnexo: Double;
  dCantidadAnexo: Double;
  dCantidadOrden: Double;
  dError: Currency;
  txtMensaje: string;
  Cancelado: Boolean;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  {Variables Kardex del sistema..}
  lKardex: boolean;
  sWbsKardex, opcKardex, fechaKardex: string;
  myYear, myMonth, myDay: Word;
  BotonPermiso: TBotonesPermisos;

implementation

uses frm_comentariosxanexo;

{$R *.dfm}

 {14.marzo.2012: adal, agregar la condicion de Wbs Contrato a la busqueda}
function TfrmBitacoraxAlcance.fnValidaPartidaAnexo(sParamsWbsContrato, sParamNumeroActividad: string): boolean;
begin
  dExcedenteAnexo := 0;
  dInstaladoAnexo := 0;
  dCantidadAnexo := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado, dCantidadAnexo from actividadesxanexo where ' +
    'sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbs=:WbsContrato And sTipoActividad = "Actividad"');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value := sParamNumeroActividad;
  Connection.qryBusca.Params.ParamByName('WbsContrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('WbsContrato').Value := sParamsWbsContrato;  
  connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
  begin
    dInstaladoAnexo := Connection.qryBusca.FieldValues['dInstalado'];
    dCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];
    dError := (dInstaladoAnexo + tdCantidad.Value);
    dError := dError - dCantidadAnexo;
    if (dError > 0) then
    begin
      txtMensaje := 'No se puede asignar mas cantidad de la cantidad estipulada en el contrato vigente, ' +
        'Cantidad a instalar segun contrato = ' + floattostr(dCantidadAnexo) +
        ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoAnexo) +
        ', si continua se creara un volumen de adicional a lo estipulado en el contrato vigente. Desea Continuar?';
      if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dExcedenteAnexo := (dInstaladoAnexo + tdCantidad.Value) - dCantidadAnexo;
        fnValidaPartidaAnexo := True;
      end
      else
        fnValidaPartidaAnexo := False;
    end
    else
      fnValidaPartidaAnexo := True
  end
  else
    fnValidaPartidaAnexo := False;
end;

function TfrmBitacoraxAlcance.fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
begin
  dExcedenteOrden := 0;
  dInstaladoOrden := 0;
  dCantidadOrden := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado , dCantidad from actividadesxorden where ' +
    'sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden And sWbs = :Wbs And ' +
    'sNumeroActividad = :Actividad And sTipoActividad = :Tipo');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value := sParamNumeroActividad;
  Connection.qryBusca.Params.ParamByName('tipo').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('tipo').Value := 'Actividad';
  connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
  begin
    dInstaladoOrden := connection.qryBusca.FieldValues['dInstalado'];
    dCantidadOrden := connection.qryBusca.FieldValues['dCantidad'];
    dError := (dInstaladoOrden + tdCantidad.Value);
    dError := dError - dCantidadOrden;
    if (dError > 0) then
    begin
      txtMensaje := 'No se puede instalar mas de lo propuesto en la concepto en el paquete del la orden de trabajo seleccionada. ' +
        'cantidad a instalar para la el concepto en el paquete y orden de trabajo Seleccionada = ' + floattostr(dCantidadOrden) +
        ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoOrden) +
        ', Si continua disminuira lo disponible en otros paquetes y ordenes de trabajo, desea continuar?';
      if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dExcedenteOrden := (dInstaladoOrden + tdCantidad.Value) - dCantidadOrden;
        fnValidaPartidaOrden := True
      end
      else
        fnValidaPartidaOrden := False
    end
    else
      fnValidaPartidaOrden := True
  end
  else
    fnValidaPartidaOrden := False
end;



function TfrmBitacoraxAlcance.fdValidaciondeAlcancexsuministro(sParamWbs, sParamNumeroActividad: string;
  iParamFase: Byte): Boolean;
var
  adelante: Boolean;
  dSuministrado: Currency;

begin
  with Connection do
  begin
    qryBusca.Active := False;
    qryBusca.SQL.Clear;
    //qryBusca.SQL.Add('Select * from alcancesxactividad Where sContrato = :Contrato And sNumeroActividad = :Actividad and sWbs=:wbs ');

    Connection.qryBusca.SQL.Add(' select a.* from alcancesxactividad a  INNER JOIN actividadesxorden ao ON ' +
      ' a.sContrato=ao.sContrato and a.sNumeroActividad=ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  ' +
      ' where a.sContrato=:contrato and a.sNumeroActividad=:actividad and ao.sWbs=:wbs and ao.sIdConvenio=:convenio and ao.sNumeroOrden=:orden Order By a.iFase Desc');


    qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
    qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
    qryBusca.Params.ParamByName('wbs').DataType := ftString;
    qryBusca.Params.ParamByName('wbs').Value := sParamWbs;
    qryBusca.Params.ParamByName('wbs').DataType := ftString;
    qryBusca.Params.ParamByName('wbs').Value := sParamWbs;
    qryBusca.Params.ParamByName('Orden').DataType := ftString;
    qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
    else
      connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.qryBusca.Open;

    qryBusca.Open;
    if qryBusca.RecordCount > 0 then
      while not qryBusca.Eof do
      begin
        if qryBusca.FieldValues['sDescripcion'] = 'SUMINISTRO' then
        begin
          Adelante := True;
          Result := False;
          qryBusca.Last;
        end
        else
        begin
          Adelante := False;
          Result := True;
        end;
        qryBusca.Next;
      end;

    if Adelante then
    begin
      qryBusca.Active := False;
      qryBusca.SQL.Clear;

      Connection.qryBusca.SQL.Add(' select  Sum(a.dCantidad) as Suministrado  from anexo_psuministro a  INNER JOIN actividadesxorden ao ON ' +
        ' a.sContrato=ao.sContrato and a.sNumeroActividad=ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  ' +
        ' where a.sContrato=:contrato and a.sNumeroActividad=:actividad and ao.sWbs=:wbs and ao.sIdConvenio=:convenio and ao.sNumeroOrden=:orden Group By a.sContrato ');

//      qryBusca.SQL.Add('Select Sum(dCantidad) as Suministrado From anexo_psuministro Where sContrato = :Contrato And ' +
//        'sNumeroActividad = :Actividad and sWbs=:wbs Group By sContrato');

      qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      qryBusca.Params.ParamByName('Orden').DataType := ftString;
      qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
      qryBusca.Params.ParamByName('wbs').DataType := ftString;
      qryBusca.Params.ParamByName('wbs').Value := sParamWbs;
      qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      if convenio_reporte = '' then
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
      else
        connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
      qryBusca.Open;
      if qryBusca.RecordCount = 0 then
        MessageDlg('NO Tiene Avisos de Embarques Dados de Altas para Suministrar esta Partida', mtWarning, [mbOk], 0)
      else
        Result := True;

    end;

  end;

end;



function TfrmBitacoraxAlcance.fdValidaciondeAlcance(sParamWbs, sParamNumeroActividad: string;
  iParamFase: Byte): Double;
var
  dAcumuladoPartida: Currency;
begin
//    Connection.qryBusca.Active := False ;
//    Connection.qryBusca.SQL.Clear ;
//   Connection.qryBusca.SQL.Add('Select sContrato From bitacoradealcances Where sContrato = :Contrato And dIdFecha = :Fecha And sIdTurno = :Turno And sNumeroOrden = :Orden And ' +
//                                'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase') ;
//    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
//    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
//    connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
//    connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
//    connection.qryBusca.Params.ParamByName('Turno').DataType := ftString ;
//    connection.qryBusca.Params.ParamByName('Turno').Value := global_turno_reporte ;
//    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
//    connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue ;
//    connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
//    connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs ;
//    connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
//    connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad ;
//    connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger ;
//    connection.qryBusca.Params.ParamByName('Fase').Value := iParamFase ;
//    Connection.qryBusca.Open ;
//    If Connection.qryBusca.RecordCount = 0 Then
//    Begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dInstalado From bitacoradealcances Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
    'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sContrato');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs;
  connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
  connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
  connection.qryBusca.Params.ParamByName('Fase').Value := iParamFase;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    dAcumuladoPartida := Connection.qryBusca.FieldValues['dInstalado']
  else
    dAcumuladoPartida := 0;
//    End
//    Else
//        dAcumuladoPartida := -1
  Result := dAcumuladoPartida
end;

function TfrmBitacoraxAlcance.fdAjustaAlcance(sParamWbs, sParamNumeroActividad, sParamFecha: string;
  iParamFase: Byte; dParamCantidadInstalar, dParamCantidad, dParamMaximo: Double): Currency;
var
  dCantidadAlcance: Currency;
  dCantidadOk: Currency;
  iIdDiario: Integer;
  dCantidadDescuento: Currency;
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dInstalado From bitacoradealcances Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
    'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase   Group By sContrato');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs;
  connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
  connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
  connection.qryBusca.Params.ParamByName('Fase').Value := iParamFase;
   { connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    connection.qryBusca.Params.ParamByName('Fecha').Value := sParamFecha ;  }
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    dCantidadAlcance := Connection.qryBusca.FieldValues['dInstalado']
  else
    dCantidadAlcance := 0;

    // Comprobamos, si existe ya un movimiento registrado en el dia en la misma fase
    // Si con lo registrado en la Fase es superior a lo que solicita el paramMaximo
  if dCantidadAlcance >= dParamMaximo then
    dCantidadOk := -1
  else
  begin
        // Checo si existe en el dia reportada la cantidad
    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
    Connection.qryBusca2.SQL.Add('Select iIdDiario, dCantidad From bitacoradealcances Where sContrato = :Contrato And dIdFecha = :Fecha And sIdTurno = :Turno And sNumeroOrden = :Orden And ' +
      'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase');
    connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
    connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    connection.qryBusca2.Params.ParamByName('Turno').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Turno').Value := global_turno_reporte;
    connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Wbs').Value := sParamWbs;
    connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
    connection.qryBusca2.Params.ParamByName('Fase').DataType := ftInteger;
    connection.qryBusca2.Params.ParamByName('Fase').Value := iParamFase;
    connection.qryBusca2.Open;
    if Connection.QryBusca2.RecordCount > 0 then
    begin
      dCantidadDescuento := connection.qryBusca2.FieldValues['dCantidad'];
      dCantidadOk := dParamMaximo - (dCantidadAlcance - connection.qryBusca2.FieldValues['dCantidad']);


             // Checamos si es fase Terminal ....
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add(' select a.iFase from alcancesxactividad a  INNER JOIN actividadesxorden ao ON ' +
        ' a.sContrato=ao.sContrato and a.sNumeroActividad=ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  ' +
        ' where a.sContrato=:contrato and a.sNumeroActividad=:actividad and ao.sWbs=:wbs and ao.sIdConvenio=:convenio ' +
        ' and ao.sNumeroOrden=:orden Order By a.iFase Desc');

//             Connection.qryBusca.SQL.Add('Select iFase From alcancesxactividad Where sContrato = :Contrato And ' +
//                                         'sNumeroActividad = :Actividad Order By iFase Desc') ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
      connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
      connection.qryBusca.Params.ParamByName('wbs').Value := sParamWbs;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      if convenio_reporte = '' then
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
      else
        connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
      Connection.qryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
        if Connection.QryBusca.FieldValues['iFase'] = iParamFase then
        begin
          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('select dCantidad, dInstalado, dExcedente from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio and ' +
            'sNumeroOrden = :Orden and sWbs = :Wbs And sNumeroActividad = :Actividad');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          if convenio_reporte = '' then
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
          else
            Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
          Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs;
          Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
          begin
            if not fnActualizaAcumuladosOrden('Eliminar', sParamWbs, sParamNumeroActividad,
              Connection.qryBusca.FieldValues['dCantidad'], Connection.qryBusca.FieldValues['dInstalado'],
              Connection.qryBusca.FieldValues['dExcedente'], dCantidadDescuento) then
              MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + BitacoradeAlcances.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
          end
          else
            MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sParamWbs + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);


          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('select a.dCantidadAnexo, a.dInstalado, a.dExcedente from ' +
            ' actividadesxanexo a inner join actividadesxorden ao on ( a.sContrato=ao.sContrato and a.sNumeroActividad=ao.sNumeroActividad ' +
            ' and a.sWbs=ao.sWbsContrato and ao.sIdConvenio=a.sIdConvenio ) where ao.sContrato = :Contrato and ' +
            ' ao.sIdConvenio = :Convenio And ao.sNumeroActividad = :Actividad and ao.sWbs=:wbs');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          if convenio_reporte = '' then
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
          else
            Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
          Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
          Connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('wbs').Value := sParamWbs;
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
          begin
            if not fnActualizaAcumuladosContrato('Eliminar', sParamNumeroActividad,
              Connection.qryBusca.FieldValues['dCantidadAnexo'], Connection.qryBusca.FieldValues['dInstalado'],
              Connection.qryBusca.FieldValues['dExcedente'], dCantidadDescuento) then
              MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sParamWbs + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
          end
          else
            MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sParamWbs + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);


          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradeactividades where sContrato = :contrato and ' +
            'dIdFecha = :fecha and sNumeroOrden = :Orden And sWbs = :Wbs And ' +
            'sNumeroActividad = :Actividad And dCantidad > 0 And dAvance = 0');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').Value := sParamWbs;
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
          connection.zCommand.ExecSQL;
        end;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Delete From bitacoradealcances Where sContrato = :Contrato And dIdFecha = :Fecha And sIdTurno = :Turno And sNumeroOrden = :Orden And ' +
        'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').Value := global_turno_reporte;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
      connection.zCommand.Params.ParamByName('Wbs').Value := sParamWbs;
      connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
      connection.zCommand.Params.ParamByName('Actividad').Value := sParamNumeroActividad;
      connection.zCommand.Params.ParamByName('Fase').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Fase').Value := iParamFase;
      connection.zCommand.ExecSQL;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Delete from bitacoradeactividades  where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :Diario');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := connection.qryBusca2.FieldValues['iIdDiario'];
      connection.zCommand.ExecSQL;
    end
    else
      dCantidadOk := dParamMaximo - dCantidadAlcance;
  end;

  Result := dCantidadOk
end;

function TfrmBitacoraxAlcance.fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
var
  sWbsContrato: string;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sWbsContrato from actividadesxorden ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbs=:wbs And sTipoActividad = "Actividad"');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    Connection.zCommand.Params.ParamByName('wbs').value := sParamNumeroActividad;
    Connection.zCommand.Open;
    if Connection.zCommand.RecordCount > 0 then
      sWbsContrato := Connection.zCommand.FieldByName('sWbsContrato').AsString;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sWbs=:wbs and sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    Connection.zCommand.Params.ParamByName('wbs').value := sWbsContrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else
      if (dParamExcedente > 0) then
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
      end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosContrato := True
  except
    fnActualizaAcumuladosContrato := False
  end
end;

function TfrmBitacoraxAlcance.fnActualizaAcumuladosContratoTrx(sParamOpcion, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
var
  sWbsContrato: string;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sWbsContrato from actividadesxorden ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbs=:wbs And sTipoActividad = "Actividad"');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    Connection.zCommand.Params.ParamByName('wbs').value := sParamNumeroActividad;
    Connection.zCommand.Open;
    if Connection.zCommand.RecordCount > 0 then
      sWbsContrato := Connection.zCommand.FieldByName('sWbsContrato').AsString;

    connection.CommandTrx.Active := False;
    connection.CommandTrx.SQL.Clear;
    connection.CommandTrx.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sWbs=:wbs and sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    Connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
    Connection.CommandTrx.Params.ParamByName('contrato').value := global_contrato;
    Connection.CommandTrx.Params.ParamByName('wbs').DataType := ftString;
    Connection.CommandTrx.Params.ParamByName('wbs').value := sWbsContrato;
    Connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.CommandTrx.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.CommandTrx.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.CommandTrx.Params.ParamByName('Actividad').DataType := ftString;
    Connection.CommandTrx.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
      end
    else
      if (dParamExcedente > 0) then
      begin
        Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
        Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Excedente').value := dParamExcedente;
      end
      else
      begin
        Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
        Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
      end;
    connection.CommandTrx.ExecSQL;
    fnActualizaAcumuladosContratoTrx := True
  except
    fnActualizaAcumuladosContratoTrx := False
  end
end;

function TfrmBitacoraxAlcance.fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.KeyValue;
    connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    connection.zCommand.Params.ParamByName('wbs').value := sParamWbs;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else
      if (dParamExcedente > 0) then
      begin
        connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
        connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
      end
      else
      begin
        connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
        connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosOrden := True
  except
    fnActualizaAcumuladosOrden := False
  end;

end;

function TfrmBitacoraxAlcance.fnActualizaAcumuladosOrdenTrx(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.CommandTrx.Active := False;
    connection.CommandTrx.SQL.Clear;
    connection.CommandTrx.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
    connection.CommandTrx.Params.ParamByName('contrato').value := global_contrato;
    connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      connection.CommandTrx.Params.ParamByName('Convenio').Value := global_convenio
    else
      connection.CommandTrx.Params.ParamByName('Convenio').Value := convenio_reporte;
    connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
    connection.CommandTrx.Params.ParamByName('Orden').value := tsNumeroOrden.KeyValue;
    connection.CommandTrx.Params.ParamByName('wbs').DataType := ftString;
    connection.CommandTrx.Params.ParamByName('wbs').value := sParamWbs;
    Connection.CommandTrx.Params.ParamByName('Actividad').DataType := ftString;
    connection.CommandTrx.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
      end
    else
      if (dParamExcedente > 0) then
      begin
        connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        connection.CommandTrx.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
        connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        connection.CommandTrx.Params.ParamByName('Excedente').value := dParamExcedente;
      end
      else
      begin
        connection.CommandTrx.Params.ParamByName('Instalado').DataType := ftFloat;
        connection.CommandTrx.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
        connection.CommandTrx.Params.ParamByName('Excedente').DataType := ftFloat;
        connection.CommandTrx.Params.ParamByName('Excedente').value := 0;
      end;
    connection.CommandTrx.ExecSQL;
    fnActualizaAcumuladosOrdenTrx := True
  except
    fnActualizaAcumuladosOrdenTrx := False
  end;

end;

procedure TfrmBitacoraxAlcance.FormShow(Sender: TObject);
begin
  sMenuP := stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario');
  UtGrid := TicdbGrid.create(grid_bitacora);
  UtGrid2 := TicdbGrid.create(grid_resumen);
  UtGrid3 := TicdbGrid.create(grid_iguales);
  Cancelado := False;
  tsReferencia.ReadOnly := True;
  frmBarra1.btnCancel.Click;
  OpcButton := '';
  pdPaquete.Caption := '< < Seleccione un Paquete > >';
  pdPaquete.Hint := '< < Seleccione un Paquete > >';

    // Limpia valores
  tdPonderado.Value := 0;
  tdCantidadInstalar.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';
  tmNotas.Text := '';
  sReferencia := '';
    // Termina Limpia

    // Inicializo el Query Bitacora y actualizo los querys necesarios en este modulo
  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString;
  ordenesdetrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
  OrdenesdeTrabajo.Open;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio
  else
    connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  if global_orden <> '' then
    Connection.qryBusca.Params.ParamByName('Fecha').Value := global_fecha
  else
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;


  if global_orden <> '' then
  begin
    tsNumeroOrden.KeyValue := global_orden;
    tdIdFecha.Date := global_fecha;
    BitacoradeAlcances.Active := False;
    BitacoradeAlcances.Params.ParamByName('contrato').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('contrato').Value := global_contrato;
    BitacoradeAlcances.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      BitacoradeAlcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      BitacoradeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    BitacoradeAlcances.Params.ParamByName('Orden').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    BitacoradeAlcances.Params.ParamByName('fecha').DataType := ftDate;
    BitacoradeAlcances.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    BitacoradeAlcances.Params.ParamByName('Ordenado').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    BitacoradeAlcances.Params.ParamByName('Turno').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('Turno').Value := global_Turno_reporte;
    BitacoradeAlcances.Open;

    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
    else
      QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := global_orden;
    QryPartidasEfectivas.Open;

    tdIdFecha.Enabled := False;
    tsNumeroOrden.Enabled := False;
    grid_bitacora.SetFocus
  end
  else
  begin
    tdIdFecha.Enabled := True;
    tsNumeroOrden.Enabled := True;
    if OrdenesdeTrabajo.RecordCount > 0 then
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];

    tdIdFecha.Date := Date;
    BitacoradeAlcances.Active := False;
    BitacoradeAlcances.Params.ParamByName('contrato').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('contrato').Value := global_contrato;
    BitacoradeAlcances.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      BitacoradeAlcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      BitacoradeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    BitacoradeAlcances.Params.ParamByName('Orden').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    BitacoradeAlcances.Params.ParamByName('fecha').DataType := ftDate;
    BitacoradeAlcances.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    BitacoradeAlcances.Params.ParamByName('Ordenado').DataType := ftString;
    BitacoradeAlcances.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    BitacoradeAlcances.Open;

    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
    else
      QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    QryPartidasEfectivas.Open;

    tdIdFecha.SetFocus
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraxAlcance.tdIdFechaExit(Sender: TObject);
begin
  if tsNumeroOrden.KeyValue <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;

    // Limpia valores
  tdPonderado.Value := 0;
  tdCantidadInstalar.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';
  tmNotas.Text := '';
  sReferencia := '';
    // Termina Limpia


  BitacoradeAlcances.Active := False;
  BitacoradeAlcances.Params.ParamByName('contrato').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('contrato').Value := global_contrato;
  BitacoradeAlcances.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    BitacoradeAlcances.Params.ParamByName('convenio').Value := global_convenio
  else
    BitacoradeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
  BitacoradeAlcances.Params.ParamByName('Orden').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  BitacoradeAlcances.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradeAlcances.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradeAlcances.Params.ParamByName('Ordenado').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  BitacoradeAlcances.Open;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio
  else
    connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;

  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;

  tdIdFecha.Color := global_color_salida;
end;

procedure TfrmBitacoraxAlcance.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;

procedure TfrmBitacoraxAlcance.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    grid_bitacora.SetFocus
end;

procedure TfrmBitacoraxAlcance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    utgrid.Destroy;
    utgrid2.Destroy;
    utgrid3.Destroy;
    if OrdenesdeTrabajo.RecordCount > 1 then
      tdAvanceGlobal.Value := cfnCalculaAvances(global_contrato, tsNumeroOrden.Text, 'NIL', global_turno_reporte, True, tdIdFecha.Date, 'Avanzada', frmBitacoraxAlcance)
    else
      tdAvanceGlobal.Value := cfnCalculaAvances(global_contrato, tsNumeroOrden.Text, 'NIL', global_turno_reporte, False, tdIdFecha.Date, 'Avanzada', frmBitacoraxAlcance);
    BotonPermiso.Free;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al cerrar ventana', 0);
    end;
  end;
end;

procedure TfrmBitacoraxAlcance.tsNumeroOrdenExit(Sender: TObject);
begin
  if tsNumeroOrden.KeyValue <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;

    // Limpia valores
  tdPonderado.Value := 0;
  tdCantidadInstalar.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';
  tmNotas.Text := '';
  sReferencia := '';
    // Termina Limpia

  BitacoradeAlcances.Active := False;
  BitacoradeAlcances.Params.ParamByName('contrato').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('contrato').Value := global_contrato;
  BitacoradeAlcances.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    BitacoradeAlcances.Params.ParamByName('convenio').Value := global_convenio
  else
    BitacoradeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
  BitacoradeAlcances.Params.ParamByName('Orden').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  BitacoradeAlcances.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradeAlcances.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradeAlcances.Params.ParamByName('Ordenado').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  BitacoradeAlcances.Open;

  QryPartidasEfectivas.Active := False;
  QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
  QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
  QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
  else
    QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
  QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  QryPartidasEfectivas.Open;

  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmBitacoraxAlcance.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
//if not keyFiltroTRxCalcEdit(tdCantidad,key) then
//   key:=#0;
  if Key = #13 then
    tsReferencia.SetFocus
end;

procedure TfrmBitacoraxAlcance.tdIdFechaEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tdIdFecha.Color := global_color_entrada;
end;

procedure TfrmBitacoraxAlcance.tsNumeroOrdenEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tsNumeroOrden.Color := global_color_entrada;
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnPostClick(Sender: TObject);
var
  dAvancePartidaDia,
    dAvanceAnterior: Double;
  dAvanceAlcance: Double;
  dCantAcumFase,
    dAvAcumFase: Currency;
  sTiempoEfectivo: string;
  iDiario: Integer;
  iFaseAjuste: Byte;
  dCantidadAjuste,
    dCantidadMaximo: Currency;
  txtMensaje: string;
  lFiltro, Suministrada: Boolean;
  iPosicion: Integer;
  ListaRef, ListaCant, ListaFolio: string;
  nombres, cadenas: TStringList;
begin
   {Validacion de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('No. Partida'); nombres.Add('Fase'); nombres.Add('Referencia');
  cadenas.Add(tsNumeroActividad.Text); cadenas.Add(tiFase.Text); cadenas.Add(tsReferencia.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
   {Continua insercion de datos}
  lKardex := false;

  lFiltro := True;
  if tiFase.Text = '' then
//     If (MidStr(tiFase.Text,1,6) <> 'SUMINI') And (Trim(tsReferencia.Text) = '') Then
    lFiltro := False;
  if lFiltro then
  begin
    if OpcButton = 'New' then
      if tdCantidad.Value > 0 then
      begin
{              // Validar la cantidad contra el disponible por instalar
              if Copy(tiFase.Text,1,6) = 'SUMINI' then
              begin
                qryHistorico.Active := False ;
                qryHistorico.Params.ParamByName('Contrato').DataType := ftString ;
                qryHistorico.Params.ParamByName('Contrato').Value := global_contrato ;
                qryHistorico.Params.ParamByName('Actividad').DataType := ftString ;
                qryHistorico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                qryHistorico.Params.ParamByName('Referencia').AsString := tsReferencia.Text;
                qryHistorico.Open ;

                if not((qryHistorico.RecordCount > 0) and (qryHistorico.FieldByName('dCantidad').AsFloat - qryHistorico.FieldByName('dCantidaReportada').AsFloat >= tdCantidad.Value)) then
                begin
                  messageDlg('La cantidad reportada supera a la cantidad recibida, verifique este e intente de nuevo.', mtError, [mbOk], 0);
                  Abort;
                end;
              end;}

        dAvancePartidaDia := 0;
        dAvanceAnterior := 0;
        sTiempoEfectivo := connection.configuracion.fieldvalues['sTipoAlcance'];
        sWbsFormulario := ActividadesIguales.FieldValues['sWbs'];

        //Antes poner una funcion que detecte que si no tiene un aviso de embarque  no siga adelante.....
       (* Suministrada := fdValidaciondeAlcancexsuministro(sWbsFormulario, tsNumeroActividad.Text, tiFase.KeyValue);
        if Suministrada = False then
        begin
          MessageDlg('Las Partidas Con Alcance de Suministro se deben Reportar Alcance x Alcance ', mtWarning, [mbOk], 0);
          frmBarra1.btnCancel.Click;
          exit;
        end;  *)


              // Esta funcion realiza las siguientes validaciones
              // 1.- Que no exista un mismo movimiento en el dia
              // 2.- Que lo que se desea reporta si es la primera fase no sea superior a la cantidad en el paquete
              // 3.- Que en acumulado en la fase no sea superior a lo acumulado en la fase anterior ...
        dCantidadMaximo := fdValidaciondeAlcance(sWbsFormulario, tsNumeroActividad.Text, tiFase.KeyValue);
        if dCantidadMaximo >= 0 then
        begin
          iFaseAjuste := 1;
          dCantidadMaximo := dCantidadMaximo + tdCantidad.Value;
          while iFaseAjuste <= tiFase.KeyValue do
          begin
            if (iFaseAjuste = 1) and (tsReferencia.text = '') and (MidStr(tiFase.Text, 1, 6) = 'SUMINI') then
              sReferencia := 'INTRODUZCA REFERENCIA DEL MOVIMIENTO'
            else
              sReferencia := tsReferencia.Text;

            dCantidadAjuste := fdAjustaAlcance(sWbsFormulario, tsNumeroActividad.Text, DateToStr(tdIdFecha.Date),
              iFaseAjuste, ActividadesIguales.FieldValues['dCantidad'],
              tdCantidad.Value, dCantidadMaximo);
            if (dCantidadAjuste > 0) then
            begin
                          // Obtengo el item Diario a asignar
              if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
                global_inicio := global_inicio + 8000;
              MaximoDiario.Active := False;
              MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
              MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
              MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
              MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
              MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
              MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
              MaximoDiario.Params.ParamByName('Final').Value := global_final;
              MaximoDiario.Open;
              if MaximoDiario.FieldByName('TotalDiario').IsNull then
                iDiario := global_inicio + 1
              else
                iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

              dAvancePartidaDia := 0;

              if ActividadesIguales.FieldValues['dCantidad'] > 0 then
              begin
                              // Checo el avance de la Fase seleccionada
                dAvanceAnterior := 0;
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('SELECT dAvance FROM alcancesxactividad a inner join actividadesxorden o on (' +
                  ' a.sContrato=o.sContrato and a.sWbs=o.sWbsContrato and a.sNumeroActividad=o.sNumeroActividad  ) where ' +
                  ' o.sContrato = :contrato And o.sNumeroActividad = :Actividad and o.sWbs=:wbs And a.iFase = :Fase and o.sIdConvenio=:convenio');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                Connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('wbs').Value := QryPartidasEfectivas.FieldValues['WbsOrden'];
                Connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
                Connection.qryBusca.Params.ParamByName('Fase').Value := iFaseAjuste;
                Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
                if convenio_reporte = '' then
                  connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
                else
                  connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount > 0 then
                  dAvanceAlcance := Connection.qryBusca.FieldValues['dAvance'];


                dAvanceAnterior := 0;
                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                  'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And ' +
                  'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('Turno').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Turno').Value := Global_turno_reporte;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                dAvancePartidaDia := (dAvanceAlcance / 100) * ((100 * dCantidadAjuste) / ActividadesIguales.FieldValues['dCantidad']);

                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad, Sum(dAvance) as dAvance From bitacoradealcances ' +
                  'Where sContrato = :Contrato And sNumeroOrden = :Orden and ' +
                  'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sContrato');
                connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
                connection.qryBusca.params.ParamByName('orden').DataType := ftString;
                connection.qryBusca.params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Wbs').Value := sWbsFormulario;
                connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
                connection.qryBusca.Params.ParamByName('Fase').Value := iFaseAjuste;
                Connection.qryBusca.Open;
                dCantAcumFase := 0;
                dAvAcumFase := 0;
                if Connection.qryBusca.RecordCount > 0 then
                begin
                  dCantAcumFase := Connection.qryBusca.FieldValues['dCantidad'];
                  dAvAcumFase := Connection.qryBusca.FieldValues['dAvance'];
                end;

                dError := (dCantAcumFase + dCantidadAjuste) - ActividadesIguales.FieldValues['dCantidad'];
                if (dError >= 0) then
                  if dAvAcumFase > dAvanceAlcance then
                    dAvancePartidaDia := dAvAcumFase - dAvAnceAlcance
                  else
                    dAvancePartidaDia := dAvanceAlcance - dAvAcumFase;

                if (dAvanceAnterior + dAvancePartidaDia) >= 100 then
                  dAvancePartidaDia := 100 - dAvanceAnterior;
              end;

              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, ' +
                  ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dAvance ,mDescripcion, mNotas ) ' +
                  ' VALUES (:contrato, :fecha, :diario, :turno, :orden, :wbs, :actividad, :tipo, :Avance, :descripcion, :Notas)');
                connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
                connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
                connection.zCommand.Params.ParamByName('fecha').DataType       := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value          := tdIdFecha.Date;
                connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value         := iDiario;
                connection.zCommand.Params.ParamByName('turno').DataType       := ftString;
                connection.zCommand.Params.ParamByName('turno').value          := global_turno_reporte;
                connection.zCommand.Params.ParamByName('orden').DataType       := ftString;
                connection.zCommand.Params.ParamByName('orden').value          := tsNumeroOrden.KeyValue;
                connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;
                connection.zCommand.Params.ParamByName('wbs').value            := sWbsFormulario;
                connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
                connection.zCommand.Params.ParamByName('actividad').value      := tsNumeroActividad.Text;
                connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;
                connection.zCommand.Params.ParamByName('tipo').value           := sTiempoEfectivo;
                connection.zCommand.Params.ParamByName('Avance').DataType      := ftFloat;
                connection.zCommand.Params.ParamByName('Avance').value         := dAvancePartidaDia;
                connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                connection.zCommand.Params.ParamByName('descripcion').value    := tmDescripcion.Text;
                connection.zCommand.Params.ParamByName('notas').DataType       := ftMemo;
                connection.zCommand.Params.ParamByName('notas').value          := tmNotas.Text;
                connection.zCommand.ExecSQL;

                              {Asigna valores Kardex del sistema..}
                lKardex := true;
                opcKardex := 'Crea ';
                sWbsKardex := sWbsFormulario;
                DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
                fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);

                              // Termino de meter el avance en la bitacora normal ....

                try
                                  // Generar la lista de referencias
                  mdDetalle.First;
                  ListaRef := '';
                  ListaCant := '';
                  ListaFolio := '';
                  while not mdDetalle.Eof do
                  begin
                    if mdDetalle.FieldByName('dCantidad').AsFloat > 0 then
                    begin
                      if ListaRef <> '' then
                      begin
                        ListaRef := ListaRef + #254;
                        ListaCant := ListaCant + #254;
                        ListaFolio := ListaFolio + #254;
                      end;
                      ListaRef := ListaRef + mdDetalle.FieldByName('sReferencia').AsString;
                      ListaCant := ListaCant + mdDetalle.FieldByName('dCaptura').AsString;
                      ListaFolio := ListaFolio + mdDetalle.FieldByName('iFolio').AsString;
                    end;
                    mdDetalle.Next;
                  end;

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO bitacoradealcances ( sContrato , dIdFecha , sIdTurno, sNumeroOrden, sWbs, sNumeroActividad, iFase, dCantidad, dAvance, sReferencia, mDescripcion, iIdDiario, mNotas, sReferenciaDetalle, sCantidadDetalle, sFolioDetalle ) ' +
                    ' VALUES (:contrato, :fecha, :Turno, :Orden, :Wbs, :Actividad, :Fase, :Cantidad, :Avance, :Referencia, :Descripcion, :Diario, :Notas, :refdetalle, :cantdetalle, :foliodetalle)');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Turno').value := global_turno_reporte;
                  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.KeyValue;
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').value := sWbsFormulario;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Actividad').value := tsNumeroActividad.Text;
                  connection.zCommand.Params.ParamByName('Fase').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Fase').value := iFaseAjuste;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').value := dCantidadAjuste;
                  connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Avance').value := dAvancePartidaDia;
                  connection.zCommand.Params.ParamByName('Referencia').DataType := ftString;
                  if sReferencia = '' then
                    sReferencia := 'SIN REFERENCIA';
                  connection.zCommand.Params.ParamByName('Referencia').value := sReferencia;
                  connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                  connection.zCommand.Params.ParamByName('Descripcion').value := tmDescripcion.Text;
                  connection.zCommand.Params.ParamByName('Notas').DataType := ftMemo;
                  connection.zCommand.Params.ParamByName('Notas').value := tmNotas.Text;
                  connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('Diario').value := iDiario;
                  Connection.zCommand.ParamByName('refdetalle').AsString := ListaRef;
                  Connection.zCommand.ParamByName('foliodetalle').AsString := ListaFolio;
                  Connection.zCommand.ParamByName('cantdetalle').AsString := ListaCant;
                  connection.zCommand.ExecSQL;
                  sReferencia := '';
                except
                  on e: exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al actualizar el avance de la partida en la bitacora de alcances', 0);
                  end;
                end;
              except
                on e: exception do begin
                  lKardex := false;
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al actualizar el avance de la partida en la bitacora de actividades', 0);
                end;
              end
            end;
            iFaseAjuste := iFaseAjuste + 1
          end
        end;

        tdCantidad.Value := dCantidadAjuste;
        Connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select sContrato From alcancesxactividad Where sWbs=:wbs and sContrato = :Contrato And sNumeroActividad = :Actividad And iFase > :Fase');
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := QryPartidasEfectivas.FieldByName('WbsContrato').AsString;
        connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Fase').Value := tiFase.KeyValue;
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount = 0 then
        begin
          lFiltro := fnValidaPartidaAnexo(QryPartidasEfectivas.FieldByName('WbsContrato').AsString,tsNumeroActividad.Text);
          if lFiltro then
            lFiltro := fnValidaPartidaOrden(sWbsFormulario, tsNumeroActividad.Text);

          if lFiltro then
          begin
            tdCantidad.Value := dCantidadAjuste;
            if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
              global_inicio := global_inicio + 8000;

            MaximoDiario.Active := False;
            MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
            MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
            MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
            MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
            MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
            MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
            MaximoDiario.Params.ParamByName('Final').Value := global_final;
            MaximoDiario.Open;
            if MaximoDiario.FieldByName('TotalDiario').IsNull then
              iDiario := global_inicio + 1
            else
              iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

            try
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, ' +
                ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dCantidad , mDescripcion , lAlcance, mNotas) ' +
                ' VALUES (:contrato, :fecha, :diario, :turno, :orden, :Wbs, :actividad, :tipo, :cantidad, :descripcion, "Si", :Notas )');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
              connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('diario').value := iDiario;
              connection.zCommand.Params.ParamByName('turno').DataType := ftString;
              connection.zCommand.Params.ParamByName('turno').value := global_turno_reporte;
              connection.zCommand.Params.ParamByName('orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue;
              connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('wbs').value := sWbsFormulario;
              connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
              connection.zCommand.Params.ParamByName('actividad').value := tsNumeroActividad.Text;
              connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
              connection.zCommand.Params.ParamByName('tipo').value := connection.configuracion.fieldvalues['sTipoOperacion'];
              connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('cantidad').value := tdCantidad.Value;
              connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
              connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text;
              connection.zCommand.Params.ParamByName('notas').DataType := ftMemo;
              connection.zCommand.Params.ParamByName('notas').value := tmNotas.Text;
              connection.zCommand.ExecSQL;

                           {Asigna valores Kerdex del sistema}
              lKardex := true;
              opcKardex := 'Crea ';
              sWbsKardex := sWbsFormulario;
              DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
              fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);

              if fnActualizaAcumuladosOrden('', sWbsFormulario, tsNumeroActividad.Text,
                dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                if fnActualizaAcumuladosContrato('', tsNumeroActividad.Text,
                  dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                else
                  MessageDlg('ERROR: Ocurrio un error al actualizar el concepto. ' + tsNumeroActividad.Text + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
              else
                MessageDlg('ERROR: Ocurrio un error al actualizar el concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
            except
              on e: exception do begin
                lKardex := false;
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al actualizar la bitacora de actividades', 0);
              end;
            end
          end
          else
          begin
            try
            {14.marzo.2012: adal, cambie de posicion estas dos sentencias, ya que el orden de borrado
            proboca error en integridad referencial segun reglas de integridad de las tablas}
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Delete from bitacoradealcances where sContrato = :contrato and dIdFecha = :fecha and sNumeroOrden = :Orden And iIdDiario = :Diario');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
              connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
              connection.zCommand.ExecSQL;
                          
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Delete from bitacoradeactividades  where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :Diario');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
              connection.zCommand.ExecSQL;


            except
              on e: exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al actualizar el registro en la bitacora de actividades', 0);
              end;
            end;
          end
        end
      end
      else
        MessageDlg('La cantidad perteneciente al alcance debe ser mayor que 0', mtWarning, [mbOk], 0)
    else
    begin
      try
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET sReferencia = :Referencia, mDescripcion = :Descripcion, mNotas = :Notas ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := BitacoradeAlcances.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text;
        connection.zCommand.Params.ParamByName('notas').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('notas').value := tmNotas.Text;
        connection.zCommand.Params.ParamByName('Referencia').DataType := ftString;
        connection.zCommand.Params.ParamByName('Referencia').value := tsReferencia.Text;
        connection.zCommand.ExecSQL;
//            Except
//                  MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de alcances', mtWarning, [mbOk], 0);
//            End ;

//            try
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET mDescripcion = :Descripcion, dAvance = :Avance, mNotas = :Notas ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := BitacoradeAlcances.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').value := BitacoradeAlcances.FieldValues['dAvance'];
        connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text;
        connection.zCommand.Params.ParamByName('notas').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('notas').value := tmNotas.Text;
        connection.zCommand.ExecSQL;

                  {Asigna valores Kardex del sistema..}
        lKardex := true;
        opcKardex := 'Edita ';
        sWbsKardex := BitacoradeAlcances.FieldByName('sWbs').AsString;
        DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
        fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
      except
        on e: exception do begin
          lKardex := false;
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al actualizar el registro en la bitacora de actividades', 0);
        end;
      end
    end;

      {Se registra movimeinto en el kardex del sistema..}
    try
      if lKardex then begin
        opcKardex := opcKardex + ' Partida ' + sWbsKardex;
        Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '');
      end;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al registrar en kardex actualizacion de registro', 0);
      end;
    end;

    SavePlace := Grid_Bitacora.DataSource.DataSet.GetBookmark;
    BitacoradeAlcances.Active := False;
    BitacoradeAlcances.Open;
    try
      Grid_Bitacora.DataSource.DataSet.GotoBookmark(SavePlace);
    except
    else
      Grid_Bitacora.DataSource.DataSet.FreeBookmark(SavePlace);
    end;
    qryResumendeAlcances.Active := False;
    qryResumendeAlcances.Open;

    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;

    tsNumeroActividad.ReadOnly := True;
    tiFase.ReadOnly := True;
    Button1.Enabled := False;
    tdCantidad.ReadOnly := True;
    tsReferencia.ReadOnly := True;
    tmDescripcion.ReadOnly := True;
    tmNotas.ReadOnly := True;
    tdCantidadInstalar.Value := 0;
    tdPonderado.Value := 0;
    frmBarra1.btnPostClick(Sender);
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnAddClick(Sender: TObject);
var
  lValido: Boolean;
begin
  lValido := True;

  if tsNumeroOrden.KeyValue <> '' then
  begin
    if global_grupo <> 'INTEL-CODE' then
    begin
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        begin
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
          lValido := False;
        end
    end
  end;

  if lValido then
  begin
    frmBarra1.btnAddClick(Sender);
    Grid_Iguales.Enabled := True;
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;

    ActividadesIguales.Active := False;
    pdPaquete.Caption := '< < Seleccione un Paquete > >';
    pdPaquete.Hint := '< < Seleccione un Paquete > >';

    tsNumeroActividad.ReadOnly := False;
    tdCantidad.ReadOnly := False;
    tsReferencia.ReadOnly := True;
    tiFase.ReadOnly := False;
    tmDescripcion.ReadOnly := False;
    tmNotas.ReadOnly := False;
    tmDescripcion.Text := '';
    tmNotas.Text := '';
    tdCantidad.Value := 0;
    tdCantidadInstalar.Value := 0;
    tdPonderado.Value := 0;
    tsNumeroActividad.KeyValue := '';
    tsReferencia.Text := sReferencia;
    Alcances.Active := False;
    tsNumeroActividad.SetFocus;
    tiFase.ReadOnly := False;
    tiFase.OnChange(Sender);
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnRefreshClick(Sender: TObject);
begin
  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  Bitacoradealcances.Active := False;
  BitacoradeAlcances.Open;

  qryResumendeAlcances.Active := False;
  qryResumendeAlcances.Open;
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnDeleteClick(Sender: TObject);
var
  lBorra: Boolean;
  iFaseTerminal: byte;
  QryPartidas: tZReadOnlyQuery;
  IdDiario_integridad: integer;
begin
  lBorra := True;

  if tsNumeroOrden.KeyValue <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lBorra := False;
      end
  end;

   // Ahora si elimino
  if lBorra then
  begin
    if MessageDlg('Desea Eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      QryPartidas := tZReadOnlyQuery.Create(frmBitacoraxAlcance);
      QryPartidas.Connection := connection.zConnection;
      QryPartidas.Active := False;
      QryPartidas.SQL.Clear;
      QryPartidas.SQL.Add('Select iIdDiario, iFase, dCantidad ' +
        'From bitacoradealcances Where sContrato = :Contrato And dIdFecha = :Fecha And ' +
        'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And ' +
        'iFase >= :Fase Order By iFase DESC');
      QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
      QryPartidas.Params.ParamByName('Contrato').Value := Global_Contrato;
      QryPartidas.Params.ParamByName('Fecha').DataType := ftDate;
      QryPartidas.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      QryPartidas.Params.ParamByName('Orden').DataType := ftString;
      QryPartidas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      QryPartidas.Params.ParamByName('Wbs').DataType := ftString;
      QryPartidas.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
      QryPartidas.Params.ParamByName('Actividad').DataType := ftString;
      QryPartidas.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
      QryPartidas.Params.ParamByName('Fase').DataType := ftInteger;
      QryPartidas.Params.ParamByName('Fase').Value := BitacoradeAlcances.FieldValues['iFase'];
      QryPartidas.Open;

           // Primeramente hay que encontrar la fase terminal, si existe, se da de baja de los actumulados por orde y por contrato
      iFaseTerminal := 0;

      {}
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('SELECT iFase FROM alcancesxactividad a inner join actividadesxorden o on (' +
        ' a.sContrato=o.sContrato and a.sWbs=o.sWbsContrato and a.sNumeroActividad=o.sNumeroActividad  ) where ' +
        ' o.sContrato = :contrato And o.sNumeroActividad = :Actividad and o.sWbs=:wbs and o.sIdConvenio=:convenio ' +
        ' Order By a.iFase Desc ');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
      Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('wbs').Value := QryPartidasEfectivas.FieldValues['WbsOrden'];
      Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
      if convenio_reporte = '' then
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
      else
        connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
      Connection.qryBusca.Open;
      {}
//      Connection.qryBusca.Active := False;
//      Connection.qryBusca.SQL.Clear;
//      Connection.qryBusca.SQL.Add('Select iFase From alcancesxactividad Where sContrato = :Contrato And ' +
//        'sNumeroActividad = :Actividad Order By iFase Desc');
//      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
//      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
//      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
//      connection.qryBusca.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
//      Connection.qryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
        iFaseTerminal := Connection.QryBusca.FieldValues['iFase'];

      try
           //comenzar el try y la transaccion
        Connection.CommandTrx.Active := False;
        Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
        Connection.CommandTrx.ExecSQL;

        while not QryPartidas.Eof do
        begin
          if iFaseTerminal = QryPartidas.FieldValues['iFase'] then
          begin
            connection.qryBuscaTrx.Active := False;
            connection.qryBuscaTrx.SQL.Clear;
            connection.qryBuscaTrx.SQL.Add('select dCantidad, dInstalado, dExcedente from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio and ' +
              'sNumeroOrden = :Orden and sWbs = :Wbs And sNumeroActividad = :Actividad');
            Connection.qryBuscaTrx.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBuscaTrx.Params.ParamByName('Convenio').DataType := ftString;
            if convenio_reporte = '' then
              Connection.qryBuscaTrx.Params.ParamByName('Convenio').Value := global_convenio
            else
              Connection.qryBuscaTrx.Params.ParamByName('Convenio').Value := convenio_reporte;
            Connection.qryBuscaTrx.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
            Connection.qryBuscaTrx.Params.ParamByName('Wbs').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
            Connection.qryBuscaTrx.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
            connection.qryBuscaTrx.Open;
            if connection.qryBuscaTrx.RecordCount > 0 then
            begin
              if not fnActualizaAcumuladosOrdenTrx('Eliminar', BitacoradeAlcances.FieldValues['sWbs'], BitacoradeAlcances.FieldValues['sNumeroActividad'],
                Connection.qryBuscaTrx.FieldValues['dCantidad'], Connection.qryBuscaTrx.FieldValues['dInstalado'],
                Connection.qryBuscaTrx.FieldValues['dExcedente'], QryPartidas.FieldValues['dCantidad']) then
                raise Exception.Create('-ERROR: Ocurrio un error al actualizar en concepto. ' + BitacoradeAlcances.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema');
            end
            else
              raise Exception.Create('-ERROR: Ocurrio un error al actualizar en concepto. ' + BitacoradeAlcances.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema');


            connection.qryBuscaTrx.Active := False;
            connection.qryBuscaTrx.SQL.Clear;
            connection.qryBuscaTrx.SQL.Add('select dCantidadAnexo, dInstalado, dExcedente from actividadesxanexo where sContrato = :Contrato and ' +
              'sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
            Connection.qryBuscaTrx.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBuscaTrx.Params.ParamByName('Convenio').DataType := ftString;
            if convenio_reporte = '' then
              Connection.qryBuscaTrx.Params.ParamByName('Convenio').Value := global_convenio
            else
              Connection.qryBuscaTrx.Params.ParamByName('Convenio').Value := convenio_reporte;
            Connection.qryBuscaTrx.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBuscaTrx.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
            connection.qryBuscaTrx.Open;
            if connection.qryBuscaTrx.RecordCount > 0 then
            begin
              if not fnActualizaAcumuladosContratoTrx('Eliminar', BitacoradeAlcances.FieldValues['sNumeroActividad'],
                Connection.qryBuscaTrx.FieldValues['dCantidadAnexo'], Connection.qryBuscaTrx.FieldValues['dInstalado'],
                Connection.qryBuscaTrx.FieldValues['dExcedente'], QryPartidas.FieldValues['dCantidad']) then
                raise Exception.Create('-ERROR: Ocurrio un error al actualizar en concepto. ' + BitacoradeAlcances.FieldValues['sWbs'] + ', notificar al administrador del sistema');
            end
            else
              raise Exception.Create('-ERROR: Ocurrio un error al actualizar en concepto. ' + BitacoradeAlcances.FieldValues['sWbs'] + ', notificar al administrador del sistema');

                     {Detalle de integridad entre bitacoradeactividades_bitacoradepersonal, bitacoradeequipos, bitacorademateriales}
                     {Iniciamos consultando el IdDiario correcto.. 13 Junio 2011}
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Select iIdDiario from bitacoradeactividades where sContrato = :contrato and ' +
              'dIdFecha = :fecha and sNumeroOrden = :Orden And sWbs = :Wbs And ' +
              'sNumeroActividad = :Actividad And dCantidad > 0 And dAvance = 0');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
            connection.zCommand.Open;

            if connection.zCommand.RecordCount > 0 then
            begin
              idDiario_integridad := connection.zCommand.FieldValues['iIdDiario'];
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
              connection.CommandTrx.Params.ParamByName('diario').Value := idDiario_integridad;
              connection.CommandTrx.ExecSQL;

              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
              connection.CommandTrx.Params.ParamByName('diario').Value := idDiario_integridad;
              connection.CommandTrx.ExecSQL;

              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Delete from bitacorademateriales where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
              connection.CommandTrx.Params.ParamByName('diario').Value := idDiario_integridad;
              connection.CommandTrx.ExecSQL;
            end;
                     {Termina detalle de integridad de datos..}

            connection.CommandTrx.Active := False;
            connection.CommandTrx.SQL.Clear;
            connection.CommandTrx.SQL.Add('Delete from bitacoradeactividades where sContrato = :contrato and ' +
              'dIdFecha = :fecha and sNumeroOrden = :Orden And sWbs = :Wbs And ' +
              'sNumeroActividad = :Actividad And dCantidad > 0 And dAvance = 0');
            connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
            connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
            connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
            connection.CommandTrx.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
            connection.CommandTrx.Params.ParamByName('Wbs').DataType := ftString;
            connection.CommandTrx.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
            connection.CommandTrx.Params.ParamByName('Actividad').DataType := ftString;
            connection.CommandTrx.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
            connection.CommandTrx.ExecSQL;

            connection.ConnTrx.Commit;
          end;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('diario').Value := QryPartidas.FieldValues['iIdDiario'];
          connection.CommandTrx.ExecSQL;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('diario').Value := QryPartidas.FieldValues['iIdDiario'];
          connection.CommandTrx.ExecSQL;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Delete from bitacorademateriales where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.CommandTrx.Params.ParamByName('diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('diario').Value := QryPartidas.FieldValues['iIdDiario'];
          connection.CommandTrx.ExecSQL;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Delete from bitacoradealcances where sContrato = :contrato and dIdFecha = :fecha and sNumeroOrden = :Orden And ' +
            'sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase');
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
          connection.CommandTrx.Params.ParamByName('Wbs').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
          connection.CommandTrx.Params.ParamByName('Actividad').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
          connection.CommandTrx.Params.ParamByName('Fase').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Fase').Value := QryPartidas.FieldValues['iFase'];
          connection.CommandTrx.ExecSQL;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Delete from bitacoradeactividades  where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :Diario');
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.CommandTrx.Params.ParamByName('Diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('Diario').Value := QryPartidas.FieldValues['iIdDiario'];
          connection.CommandTrx.ExecSQL;

          QryPartidas.Next
        end;

        connection.ConnTrx.Commit;
      except
        on e: Exception do
        begin
          Connection.ConnTrx.Rollback;
          if e.Message[1] = '-' then
            MessageDlg(e.Message, mtWarning, [mbOk], 0)
          else
            MessageDlg('Ha ocurrido un error al tratar de eliminar el registro.' + #10 + #10 +
              'Informe del siguiente error al administrador del sistema:' + #10 +
              e.Message, mtWarning, [mbOk], 0);
        end;
      end;

           {Se registra movimiento en Kardex del sistema..}
      sWbsKardex := BitacoradeAlcances.FieldValues['sWbs'];
      DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
      fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
      opcKardex := 'Borra Partida ' + sWbsKardex;
      try
        Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '');
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al registrar en kardex eliminacion de registro', 0);
        end;
      end;
           {----------------------------------------------}

      qryResumendeAlcances.Active := False;
      qryResumendeAlcances.Open;

      SavePlace := Grid_Bitacora.DataSource.DataSet.GetBookmark;
      BitacoradeAlcances.Active := False;
      BitacoradeAlcances.Open;
      try
        Grid_Bitacora.DataSource.DataSet.GotoBookmark(SavePlace);
      except
      else
        Grid_Bitacora.DataSource.DataSet.FreeBookmark(SavePlace);
      end
    end
  end
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnEditClick(Sender: TObject);
var
  lValido: Boolean;
begin
  lValido := True;
  if tsNumeroOrden.KeyValue <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lValido := False;
      end
  end;

  if lValido then
  begin
    frmBarra1.btnEditClick(Sender);
    Grid_Iguales.Enabled := True;
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;

  //   If (MidStr(tiFase.Text,1,6) <> 'SUMINI') Then
  //      begin
  //         tsReferencia.Enabled  := True ;

  //         tsReferencia.Text     := sReferencia ;
  //      end;

    tsNumeroActividad.OnExit(Sender);
    tmDescripcion.ReadOnly := False;
    tmNotas.ReadOnly := False;
    tsReferencia.SetFocus;
    tsReferencia.ReadOnly := False;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraxAlcance.tiFaseChange(Sender: TObject);
begin
  if frmBarra1.btnPost.Enabled then
  begin
    tsReferencia.ReadOnly := Copy(tiFase.Text, 1, 6) = 'SUMINI';
    tdCantidad.ReadOnly := tsReferencia.ReadOnly;
    Button1.Enabled := Copy(tiFase.DisplayValue, 1, 6) = 'SUMINI';

    if OpcButton = 'New' then
      tdCantidad.Value := 0;
  end;
end;

procedure TfrmBitacoraxAlcance.tiFaseEnter(Sender: TObject);
begin
  tiFase.Color := global_color_entrada
end;

procedure TfrmBitacoraxAlcance.tiFaseExit(Sender: TObject);
begin
  tiFase.Color := global_color_salida;
  if frmBarra1.btnCancel.Enabled = True then
  begin
    if (MidStr(tiFase.Text, 1, 6) = 'SUMINI') and (Trim(tsReferencia.Text) = '') then
      tsReferencia.Text := ''
    else
    begin
      tsReferencia.Text := '';
           // PanelHistorico.Visible := False
    end;

    if (MidStr(tiFase.Text, 1, 6) = 'SUMINI') then
      tsReferencia.ReadOnly := True
    else
      tsReferencia.ReadOnly := False;
  end;
end;

procedure TfrmBitacoraxAlcance.tiFaseKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmBitacoraxAlcance.tdCantidadChange(Sender: TObject);
begin
//TRxCalcEditChangef(tdCantidad,'Cantidad');
end;

procedure TfrmBitacoraxAlcance.tdCantidadClick(Sender: TObject);
begin
//if tdCantidad.ReadOnly then
//  showmessage( ' Read only ' )
//else
//  showmessage( 'not Read only ' );

end;

procedure TfrmBitacoraxAlcance.tdCantidadEnter(Sender: TObject);
begin
  tdCantidad.Color := global_color_Entrada
end;

procedure TfrmBitacoraxAlcance.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salida
end;

procedure TfrmBitacoraxAlcance.tsReferenciaEnter(Sender: TObject);
begin
  tsReferencia.Color := global_color_entrada
end;

procedure TfrmBitacoraxAlcance.tsReferenciaExit(Sender: TObject);
begin
  tsReferencia.Color := global_color_salida;
  if (MidStr(tiFase.Text, 1, 6) = 'SUMINI') and (Trim(tsReferencia.Text) = '') then
    tsReferencia.Text := ''
  else
    if tsReferencia.Text = '' then
      KardexInventario.Click
end;

procedure TfrmBitacoraxAlcance.tsReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmDescripcion.SetFocus
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnCancelClick(Sender: TObject);
begin
  dAcumulado := 0;
  {qryHistorico.Active := False ;
  qryHistorico.Params.ParamByName('Contrato').DataType := ftString ;
  qryHistorico.Params.ParamByName('Contrato').Value := global_contrato ;
  qryHistorico.Params.ParamByName('Actividad').DataType := ftString ;
  qryHistorico.Params.ParamByName('Actividad').Value := '' ;
  qryHistorico.Params.ParamByName('Referencia').AsString := '';
  qryHistorico.Open ;}

  Alcances.Active := False;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;

  tsNumeroActividad.ReadOnly := True;
  tiFase.ReadOnly := True;
  Button1.Enabled := False;
  tdCantidad.ReadOnly := True;
  tsReferencia.ReadOnly := True;
  tmDescripcion.ReadOnly := True;
  tmNotas.ReadOnly := True;

  tmDescripcion.Text := '';
  tmNotas.Text := '';
  tdCantidad.Value := 0;
  tsNumeroActividad.KeyValue := '';
  tdCantidadInstalar.Value := 0;
  tdPonderado.Value := 0;
  if Bitacoradealcances.Active then
    Bitacoradealcances.RecNo := Bitacoradealcances.RecNo;
  grid_bitacora.SetFocus;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraxAlcance.rxActividadesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
var
  dInstalado, dCantidad: Real;
begin
  dCantidad := (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat;
  dInstalado := (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstaladoPaquete').AsFloat;

  if (dInstalado >= dCantidad) then
    Background := clGradientInactiveCaption

end;

procedure TfrmBitacoraxAlcance.BitacoradeAlcancesAfterScroll(
  DataSet: TDataSet);
begin
  ImgNotas.Visible := False;
  if BitacoradeAlcances.RecordCount > 0 then
  begin
    tsNumeroActividad.KeyValue := BitacoradeAlcances.FieldValues['sNumeroActividad'];
    tdCantidad.Value := BitacoradeAlcances.FieldValues['dCantidad'];
    tsReferencia.Text := BitacoradeAlcances.FieldValues['sReferencia'];
    tmDescripcion.Text := BitacoradeAlcances.FieldValues['mDescripcion'];
    tmNotas.Text := BitacoradeAlcances.FieldValues['mNotas'];
    tIFase.KeyValue := BitacoradeAlcances.FieldValues['iFase'];

    dAcumulado := 0;
        {qryHistorico.Active := False ;
        qryHistorico.Params.ParamByName('Contrato').DataType := ftString ;
        qryHistorico.Params.ParamByName('Contrato').Value := global_contrato ;
        qryHistorico.Params.ParamByName('Actividad').DataType := ftString ;
        qryHistorico.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'] ;
        qryHistorico.Params.ParamByName('Referencia').AsString := '';
        qryHistorico.Open ;}

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
    connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

    ActividadesIguales.Active := False;
    ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
    ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
    ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
    else
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
    ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
    ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
    ActividadesIguales.Params.ParamByName('actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
    ActividadesIguales.Open;
    Grid_Iguales.Enabled := False;
    ActividadesIguales.Locate('sWbs', BitacoradeAlcances.FieldValues['sWbs'], [loPartialKey]);
    tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];
    tdCantidadInstalar.Value := ActividadesIguales.FieldValues['dCantidad'];

    Paquete.Active := False;
    Paquete.Params.ParamByName('contrato').DataType := ftString;
    Paquete.Params.ParamByName('contrato').Value := global_contrato;
    Paquete.Params.ParamByName('orden').DataType := ftString;
    Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    Paquete.Params.ParamByName('wbs').DataType := ftString;
    Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs'];
    Paquete.Open;

    if Paquete.RecordCount > 0 then
    begin
      pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
      pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
    end
    else
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >'
    end;

    qryResumendeAlcances.Active := False;
    qryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
    qryResumendeAlcances.Params.ParamByName('Orden').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryResumendeAlcances.Params.ParamByName('Wbs').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
    qryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
    qryResumendeAlcances.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      qryResumendeAlcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      qryResumendeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    qryResumendeAlcances.Open;

    Alcances.Active := False;
    Alcances.Params.ParamByName('contrato').DataType := ftString;
    Alcances.Params.ParamByName('contrato').Value := global_contrato;
    Alcances.Params.ParamByName('Actividad').DataType := ftString;
    Alcances.Params.ParamByName('Actividad').Value := BitacoradeAlcances.FieldValues['sNumeroActividad'];
    Alcances.Params.ParamByName('Orden').DataType := ftString;
    Alcances.Params.ParamByName('Orden').Value := BitacoradeAlcances.FieldValues['sNumeroOrden'];
    Alcances.Params.ParamByName('Wbs').DataType := ftString;
    Alcances.Params.ParamByName('Wbs').Value := BitacoradeAlcances.FieldValues['sWbs'];
    Alcances.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      Alcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      Alcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.qryBusca.Open;
    Alcances.Open;
  end
end;

procedure TfrmBitacoraxAlcance.grid_bitacoraEnter(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if tsNumeroOrden.Text <> '' then
  begin
    if BitacoradeAlcances.RecordCount > 0 then
    begin
      tsNumeroActividad.KeyValue := BitacoradeAlcances.FieldValues['sNumeroActividad'];
      tdCantidad.Value := BitacoradeAlcances.FieldValues['dCantidad'];
      tsReferencia.Text := BitacoradeAlcances.FieldValues['sReferencia'];
      tmDescripcion.Text := BitacoradeAlcances.FieldValues['mDescripcion'];
      tmNotas.Text := BitacoradeAlcances.FieldValues['mNotas'];
      tIFase.KeyValue := BitacoradeAlcances.FieldValues['iFase'];
    end
    else
    begin
      tsNumeroActividad.KeyValue := '';
      tdCantidad.Value := 0;
      tsReferencia.Text := '0';
      tmDescripcion.Text := '';
      tmNotas.Text := '';
    end;

    dAcumulado := 0;
        {qryHistorico.Active := False ;
        qryHistorico.Params.ParamByName('Contrato').DataType := ftString ;
        qryHistorico.Params.ParamByName('Contrato').Value := global_contrato ;
        qryHistorico.Params.ParamByName('Actividad').DataType := ftString ;
        qryHistorico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text  ;
        qryHistorico.Params.ParamByName('Referencia').AsString := '';
        qryHistorico.Open ;}

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
    connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

    ActividadesIguales.Active := False;
    pdPaquete.Caption := '< < Seleccione un Paquete > >';
    pdPaquete.Hint := '< < Seleccione un Paquete > >';

    qryResumendeAlcances.Active := False;
    qryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
    qryResumendeAlcances.Params.ParamByName('Orden').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryResumendeAlcances.Params.ParamByName('wbs').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('wbs').Value := '';
    qryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
    qryResumendeAlcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
    qryResumendeAlcances.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      qryResumendeAlcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      qryResumendeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    qryResumendeAlcances.Open;


    Alcances.Active := False;
    Alcances.Params.ParamByName('contrato').DataType := ftString;
    Alcances.Params.ParamByName('contrato').Value := global_contrato;
    Alcances.Params.ParamByName('Actividad').DataType := ftString;
    Alcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
    Alcances.Params.ParamByName('Orden').DataType := ftString;
    Alcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    Alcances.Params.ParamByName('wbs').DataType := ftString;
    Alcances.Params.ParamByName('wbs').Value := qryPartidasEfectivas.FieldByName('WbsOrden').AsString;
    Alcances.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      Alcances.Params.ParamByName('Convenio').Value := global_convenio
    else
      Alcances.Params.ParamByName('Convenio').Value := convenio_reporte;
    Alcances.Open;

    ActividadesIguales.Active := False;
    ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
    ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
    ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
    else
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
    ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
    ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
    ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    ActividadesIguales.Open;
    if ActividadesIguales.RecordCount > 0 then
    begin
      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];
      tdCantidadInstalar.Value := ActividadesIguales.FieldValues['dCantidad'];
    end
    else
    begin
      tdCantidadInstalar.Value := 0;
      tdPonderado.Value := 0;
    end;

    Paquete.Active := False;
    Paquete.Params.ParamByName('contrato').DataType := ftString;
    Paquete.Params.ParamByName('contrato').Value := global_contrato;
    Paquete.Params.ParamByName('orden').DataType := ftString;
    Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    Paquete.Params.ParamByName('wbs').DataType := ftString;
    Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs'];
    Paquete.Open;

    if Paquete.RecordCount > 0 then
    begin
      pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
      pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
    end
    else
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >'
    end;

    Grid_Iguales.Enabled := False;
  end;


end;

procedure TfrmBitacoraxAlcance.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmBitacoraxAlcance.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmBitacoraxAlcance.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmBitacoraxAlcance.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmBitacoraxAlcance.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmBitacoraxAlcance.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmBitacoraxAlcance.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;

procedure TfrmBitacoraxAlcance.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmBitacoraxAlcance.grid_igualesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat = (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstalado').AsFloat then
    Background := clGradientInactiveCaption
end;

procedure TfrmBitacoraxAlcance.ActividadesIgualesAfterScroll(
  DataSet: TDataSet);
begin
  if ActividadesIguales.State <> dsInactive then
    if tsNumeroActividad.ReadOnly = False then
      if ActividadesIguales.RecordCount > 0 then
      begin
        tsNumeroActividad.KeyValue := ActividadesIguales.FieldValues['sNumeroActividad'];
        tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];
        tmDescripcion.Text := ActividadesIguales.FieldValues['mDescripcion'];
          //tmNotas.Text := ActividadesIguales.FieldValues['mNotas'] ;
        tdCantidadInstalar.Value := ActividadesIguales.FieldValues['dCantidad'];

        qryResumendeAlcances.Active := False;
        qryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
        qryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
        qryResumendeAlcances.Params.ParamByName('Orden').DataType := ftString;
        qryResumendeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
        qryResumendeAlcances.Params.ParamByName('Wbs').DataType := ftString;
        qryResumendeAlcances.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbs'];
        qryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
        qryResumendeAlcances.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'];
        qryResumendeAlcances.Params.ParamByName('Convenio').DataType := ftString;
        if convenio_reporte = '' then
          qryResumendeAlcances.Params.ParamByName('Convenio').Value := global_convenio
        else
          qryResumendeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
        qryResumendeAlcances.Open;

        Paquete.Active := False;
        Paquete.Params.ParamByName('contrato').DataType := ftString;
        Paquete.Params.ParamByName('contrato').Value := global_contrato;
        Paquete.Params.ParamByName('orden').DataType := ftString;
        Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
        Paquete.Params.ParamByName('wbs').DataType := ftString;
        Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs'];
        Paquete.Open;
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
      end
end;

procedure TfrmBitacoraxAlcance.DetalledelaPartida1Click(Sender: TObject);
begin
  PanelAlcances.Visible := not PanelAlcances.Visible;
end;



procedure TfrmBitacoraxAlcance.grid_bitacoraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  BitacoradeAlcances.Active := False;
  BitacoradeAlcances.Params.ParamByName('contrato').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('contrato').Value := global_contrato;
  BitacoradeAlcances.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    BitacoradeAlcances.Params.ParamByName('Convenio').Value := global_convenio
  else
    BitacoradeAlcances.Params.ParamByName('Convenio').Value := convenio_reporte;
  BitacoradeAlcances.Params.ParamByName('Orden').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  BitacoradeAlcances.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradeAlcances.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradeAlcances.Params.ParamByName('Ordenado').DataType := ftString;
  BitacoradeAlcances.Params.ParamByName('Ordenado').Value := sCampo;
  BitacoradeAlcances.Open;
end;






procedure TfrmBitacoraxAlcance.tmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if tmDescripcion.ReadOnly = False then
  begin
    if Ord(Key) = 1 then
    begin
      tmDescripcion.Text := tiFase.Text + ' DE ' + ActividadesIguales.FieldValues['mDescripcion'];
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;

    if Ord(Key) = 19 then
    begin
      tmDescripcion.Text := tiFase.Text + ' DE ';
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
    if Ord(Key) = 2 then
    begin
      tmDescripcion.Text := '';
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
  end
end;


procedure TfrmBitacoraxAlcance.Regenera1Click(Sender: TObject);
begin
  try
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select iIdDiario, dAvance From bitacoradealcances Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdTurno = :Turno And dIdFecha = :Fecha');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    connection.qryBusca.Params.ParamByName('Turno').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Turno').Value := global_turno_reporte;
    connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dAvance = :Avance ' +
        'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('diario').value := Connection.qryBusca.FieldValues['iIdDiario'];
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Avance').value := Connection.qryBusca.FieldValues['dAvance'];
      connection.zCommand.ExecSQL;
      Connection.qryBusca.Next
    end;

    if OrdenesdeTrabajo.RecordCount > 1 then
      cfnCalculaAvances(global_contrato, tsNumeroOrden.Text, convenio_reporte, 'XXX', True, tdIdFecha.Date, 'Avanzada', frmBitacoraxAlcance)
    else
      cfnCalculaAvances(global_contrato, tsNumeroOrden.Text, convenio_reporte, 'XXX', False, tdIdFecha.Date, 'Avanzada', frmBitacoraxAlcance);

    MessageDlg('Proceso terminado con Exito.', mtWarning, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al Regenerar', 0);
    end;
  end;
end;

procedure TfrmBitacoraxAlcance.grid_bitacoraGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTurno').AsString <> global_turno_reporte then
    Background := clGradientInactiveCaption
end;


procedure TfrmBitacoraxAlcance.tsNumeroActividadEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entrada;
  imgNotas.Visible := False;
  if tsNumeroActividad.Enabled = True then
    Alcances.Active := False;
end;

procedure TfrmBitacoraxAlcance.tsNumeroActividadExit(Sender: TObject);
var
  Folio, Referencia: string;
  Cantidad, OldCantidad: Extended;
  CadFolio, CadRef, CadCant: string;
  myPos: Integer;

  function Position(SubCad, Cadena: string): Integer;
  var
    ParCad: string;
    Cta, Resultado: Integer;
  begin
    Cadena := Cadena + #254;
    Cta := 0;
    Resultado := 0;
    while (Pos(#254, Cadena) > 0) and (Resultado = 0) do
    begin
      Inc(Cta);
      if Copy(Cadena, 1, Pos(#254, Cadena) - 1) = SubCad then
        Resultado := Cta;
      Cadena := Copy(Cadena, Pos(#254, Cadena) + 1, Length(Cadena));
    end;
    Result := Resultado;
  end;

  function Entry(const Position: Integer; Cadena: string): string;
  var
    ParCad, Resultado: string;
    Cta: Integer;
  begin
    Cadena := Cadena + #254;
    Cta := 0;
    Resultado := '';
    while (Pos(#254, Cadena) > 0) and (Resultado = '') do
    begin
      Inc(Cta);
      if Cta = Position then
        Resultado := Copy(Cadena, 1, Pos(#254, Cadena) - 1);
      Cadena := Copy(Cadena, Pos(#254, Cadena) + 1, Length(Cadena));
    end;
    Result := Resultado;
  end;

begin
  tsNumeroActividad.Color := global_color_salida;
  if frmBarra1.btnCancel.Enabled = True then
    if tsNumeroActividad.Text <> '' then
    begin
            // Llenar el vector de memoria con las entradas
      mdDetalle.Close;
      mdDetalle.Open;
      mdDetalle.EmptyTable;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Text := 'Select f.sreferencia, e.ifolio, e.dcantidad From anexo_psuministro e ' +
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And e.iFolio = f.iFolio) ' +
        'inner join movimientosdealmacen m on (f.sIdTipo = m.sIdTipo) ' +
        'where e.sContrato = :contrato And e.sNumeroActividad = :actividad Order By dFechaAviso';
      Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
      Connection.QryBusca.ParamByName('actividad').AsString := tsNumeroActividad.Text;
      Connection.QryBusca.Open;

            // Datos Actuales
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Text := 'select a.sCantidadDetalle, a.sReferenciaDetalle, a.sFolioDetalle ' +
        'from bitacoradealcances a where a.scontrato = :contrato and ' +
        'a.dIdFecha = :fecha and a.sNumeroActividad = :actividad';
      Connection.QryBusca2.ParamByName('contrato').AsString := global_contrato;
      Connection.QryBusca2.ParamByName('fecha').AsDate := tdIdFecha.Date;
      Connection.QryBusca2.ParamByName('actividad').AsString := tsNumeroActividad.Text;
      Connection.QryBusca2.Open;

      Connection.qryROProrrateos.Active := False;
      Connection.qryROProrrateos.SQL.Text := 'select a.sCantidadDetalle, a.sReferenciaDetalle, a.sFolioDetalle ' +
        'from bitacoradealcances a where a.scontrato = :contrato and ' +
        '((:par = 1 and a.dIdFecha <= :fecha) or (:par = 0 and a.dIdFecha < :fecha)) and a.sNumeroActividad = :actividad and a.sreferenciadetalle <> ""';
      Connection.qryROProrrateos.ParamByName('contrato').AsString := global_contrato;
      Connection.qryROProrrateos.ParamByName('fecha').AsDate := tdIdFecha.Date;
      Connection.qryROProrrateos.ParamByName('actividad').AsString := tsNumeroActividad.Text;
      if OpcButton = 'New' then
        Connection.qryROProrrateos.ParamByName('par').AsInteger := 1
      else
        Connection.qryROProrrateos.ParamByName('par').AsInteger := 0;
      Connection.qryROProrrateos.Open;

      while not Connection.QryBusca.Eof do
      begin
        OldCantidad := 0;
        Connection.qryROProrrateos.First;
        while not Connection.qryROProrrateos.Eof do
        begin
          myPos := Position(Connection.QryBusca.FieldByName('sReferencia').AsString, Connection.qryROProrrateos.FieldByName('sReferenciaDetalle').AsString);
          if myPos > 0 then
            OldCantidad := OldCantidad + StrToFloat(Entry(myPos, Connection.qryROProrrateos.FieldByName('sCantidadDetalle').AsString));

          Connection.qryROProrrateos.Next;
        end;

        Cantidad := 0;
        if Connection.QryBusca2.RecordCount > 0 then
        begin
          myPos := Position(Connection.QryBusca.FieldByName('sReferencia').AsString, Connection.QryBusca2.FieldByName('sReferenciaDetalle').AsString);
          if myPos > 0 then
            Cantidad := StrToFloat(Entry(myPos, Connection.QryBusca2.FieldByName('sCantidadDetalle').AsString));
        end;
              //CadRef := #254 + Connection.qryROProrrateos.FieldByName('sReferenciaDetalle').AsString + #254;

        if OldCantidad < Connection.QryBusca.FieldByName('dCantidad').AsFloat then
        begin
          mdDetalle.Append;
          mdDetalle.FieldByName('sReferencia').AsString := Connection.QryBusca.FieldByName('sReferencia').AsString;
          mdDetalle.FieldByName('iFolio').AsString := Connection.QryBusca.FieldByName('iFolio').AsString;
          mdDetalle.FieldByName('dCantidad').AsFloat := Connection.QryBusca.FieldByName('dCantidad').AsFloat;
          mdDetalle.FieldByName('dAcumulado').AsFloat := OldCantidad;
          mdDetalle.FieldByName('dCaptura').AsFloat := Cantidad;
          mdDetalle.Post;
        end;
        Connection.QryBusca.Next;
      end;
      mdDetalle.First;

        //showmessage('Pausa2');
      dAcumulado := 0;
            {qryHistorico.Active := False ;
            qryHistorico.Params.ParamByName('Contrato').DataType := ftString ;
            qryHistorico.Params.ParamByName('Contrato').Value := global_contrato ;
            qryHistorico.Params.ParamByName('Actividad').DataType := ftString ;
            qryHistorico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text ;
            qryHistorico.Params.ParamByName('Referencia').AsString := '';
            qryHistorico.Open ;}
        //showmessage('Pausa1');
      Alcances.Active := false;
      Alcances.Params.ParamByName('contrato').DataType := ftString;
      Alcances.Params.ParamByName('contrato').Value := global_contrato;
      Alcances.Params.ParamByName('Actividad').DataType := ftString;
      Alcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Alcances.Params.ParamByName('Orden').DataType := ftString;
      Alcances.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      Alcances.Params.ParamByName('wbs').DataType := ftString;
      Alcances.Params.ParamByName('wbs').Value := qryPartidasEfectivas.FieldByName('WbsOrden').AsString;
      Alcances.Params.ParamByName('Convenio').DataType := ftString;
      if convenio_reporte = '' then
        Alcances.Params.ParamByName('Convenio').Value := global_convenio
      else
        Alcances.Params.ParamByName('Convenio').Value := convenio_reporte;
      Alcances.Open;
      if Alcances.RecordCount > 0 then
      begin
        tiFase.KeyValue := Alcances.FieldValues['iFase'];
        tiFase.OnChange(Sender);
      end;
      Alcances.Open;
      Alcances.First;

      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        imgNotas.Visible := True;

      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      if convenio_reporte = '' then
        ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
      else
        ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      ActividadesIguales.Open;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := global_contrato;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('wbs').DataType := ftString;
      Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs'];
      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint := Paquete.FieldValues['mDescripcion']
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint := '< < Seleccione un Paquete > >'
      end
    end
    else
    begin
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      if convenio_reporte = '' then
        ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
      else
        ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := '';
      ActividadesIguales.Open;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := global_contrato;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType := ftString;
      Paquete.Params.ParamByName('Wbs').Value := '';
      Paquete.Open;

      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';
    end;
end;

procedure TfrmBitacoraxAlcance.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiFase.SetFocus
end;

procedure TfrmBitacoraxAlcance.ComentariosAdicionalesClick(
  Sender: TObject);
begin
  global_partida := tsNumeroActividad.Text;
  Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
  frmComentariosxAnexo.show;

end;

procedure TfrmBitacoraxAlcance.tsNumeroActividadChange(Sender: TObject);
begin
  global_partida := tsNumeroActividad.Text;
end;

procedure TfrmBitacoraxAlcance.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmBitacoraxAlcance.QryHistoricoAfterScroll(DataSet: TDataSet);
begin
{    If frmBarra1.btnCancel.Enabled  Then
        If qryHistorico.RecordCount > 0 Then
            If (MidStr(tiFase.Text,1,6) = 'SUMINI') Then
                tsReferencia.Text := qryHistorico.FieldValues['sReferencia']
            Else
                tsReferencia.Text := ''}
end;

procedure TfrmBitacoraxAlcance.KardexInventarioClick(Sender: TObject);
begin
   // PanelHistorico.Visible := True ;
    //Grid_Historico.SetFocus
end;

procedure TfrmBitacoraxAlcance.Grid_HistoricoDblClick(Sender: TObject);
begin
//    PanelHistorico.Visible := NOT PanelHistorico.Visible ;
end;

procedure TfrmBitacoraxAlcance.Grid_ResumenDblClick(Sender: TObject);
begin
  PanelAlcances.Visible := not PanelAlcances.Visible;
end;

procedure TfrmBitacoraxAlcance.QryHistoricoCalcFields(DataSet: TDataSet);
begin
{    dAcumulado := dAcumulado + qryHistoricodCantidad.Value ;
    qryHistoricodAcumulado.Value := dAcumulado ;}
end;

procedure TfrmBitacoraxAlcance.Grid_HistoricoKeyPress(Sender: TObject;
  var Key: Char);
begin
{    If Key = #13 Then
        PanelHistorico.Visible := NOT PanelHistorico.Visible ;}
end;

procedure TfrmBitacoraxAlcance.PanelHistoricoExit(Sender: TObject);
begin
   // PanelHistorico.Visible := False ;
  if tdCantidad.Value = 0 then
    tdCantidad.SetFocus
  else
    tmDescripcion.SetFocus
end;

procedure TfrmBitacoraxAlcance.Label7Click(Sender: TObject);
begin
  HistorialdelaPartida1.Click
end;

procedure TfrmBitacoraxAlcance.Grid_HistoricoEnter(Sender: TObject);
begin
{    If qryHistorico.RecordCount > 0 Then
        If (MidStr(tiFase.Text,1,6) = 'SUMINI') Then
            tsReferencia.Text := qryHistorico.FieldValues['sReferencia']
        Else
            tsReferencia.Text := ''}
end;

procedure TfrmBitacoraxAlcance.mdDetalleBeforeDelete(DataSet: TDataSet);
begin
  if cancelado then
    abort;
end;

procedure TfrmBitacoraxAlcance.mdDetalleBeforeInsert(DataSet: TDataSet);
begin
  if cancelado then
    abort;
end;

procedure TfrmBitacoraxAlcance.mdDetalleBeforePost(DataSet: TDataSet);
begin
  // Validar la cantidad capturada
  if DataSet.FieldByName('dCaptura').AsFloat + DataSet.FieldByName('dAcumulado').AsFloat > DataSet.FieldByName('dCantidad').AsFloat then
    DataSet.FieldByName('dCaptura').AsFloat := 0;
end;

procedure TfrmBitacoraxAlcance.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    if tsNumeroActividad.Text <> '' then
      procFichaTecnica(global_contrato, global_convenio, tsNumeroActividad.Text, frmBitacoraxAlcance);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al imprimir ficha tecnica', 0);
    end;
  end;
end;

procedure TfrmBitacoraxAlcance.BitacoradeAlcancesCalcFields(
  DataSet: TDataSet);
begin
  try
    BitacoradeAlcancesdMontoMN.Value := BitacoradeAlcancesdCantidad.Value * BitacoradeAlcancesdVentaMN.Value;
    if lCheckReporte() then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from turnos Where sContrato = :contrato and sIdTurno = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        BitacoradeAlcancessTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        BitacoradeAlcancessTurno.Value := 'Frente Unico'
    end
    else
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from ordenes_frentes Where sContrato = :contrato and sNumeroOrden = :Orden and sIdFrente = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        BitacoradeAlcancessTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        BitacoradeAlcancessTurno.Value := 'Frente Unico'
    end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al cambiar de registro', 0);
    end;
  end;
end;


procedure TfrmBitacoraxAlcance.Button1Click(Sender: TObject);
var
  Acum: Extended;
  Cad: string;
begin
  Application.CreateForm(TDetalleCaptura, DetalleCaptura);
  DetalleCaptura.DataSource1.DataSet := mdDetalle;
  Cancelado := True;
  DetalleCaptura.ShowModal;
  Cancelado := False;

  mdDetalle.First;
  Acum := 0;
  Cad := '';
  while not mdDetalle.Eof do
  begin
    if mdDetalle.FieldByName('dCaptura').AsFloat > 0 then
    begin
      Acum := Acum + mdDetalle.FieldByName('dCaptura').AsFloat;
      if Cad <> '' then Cad := Cad + ', ';
      Cad := Cad + mdDetalle.FieldByname('sReferencia').AsString;
    end;

    mdDetalle.Next;
  end;
  tdCantidad.Value := Acum;
  tsReferencia.Text := Cad;
end;

procedure TfrmBitacoraxAlcance.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + tsNumeroOrden.Text;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := tdIdFecha.Date;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := tdIdFecha.Date;
end;

procedure TfrmBitacoraxAlcance.frmBarra1btnPrinterClick(Sender: TObject);
begin
  try
    procAnalisisFinanciero(global_contrato, tsNumeroOrden.Text, convenio_reporte, tdIdFecha.Date, tdIdFecha.Date, frmBitacoraxAlcance, rDiario.OnGETValue, connection.configuracion.fieldbyname('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Bitacora de Alcances x Partida', 'Al imprimir', 0);
    end;
  end;
end;

end.

