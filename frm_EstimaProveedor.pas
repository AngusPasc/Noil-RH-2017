unit frm_EstimaProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet,  RXDBCtrl,  RxLookup, DateUtils,
  RXCtrls, CheckLst, ToolWin, RxMemDS, HintComponent, Newpanel, DisPanel,
  PanelDown, ATexto, ExtDlgs, jpeg, ZAbstractRODataset, ZDataset, masUtilerias,
  rxToolEdit, rxCurrEdit, sSkinProvider, UnitExcepciones, udbgrid, UnitValidaTexto,
  UnitTBotonesPermisos, UFunctionsGHH;

type
  TfrmEstimaProveedor = class(TForm)
    ds_estimaciones: TDataSource;
    ds_EstimacionxPartida: TDataSource;
    PgControl: TPageControl;
    TabSheet2: TTabSheet;
    frmBarra1: TfrmBarra;
    PopGenerador: TPopupMenu;
    MenuItem9: TMenuItem;
    Salir2: TMenuItem;
    GridPartidas: TRxDBGrid;
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
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    tiNumeroEstimacion: TEdit;
    tiConsecutivo: TEdit;
    tdFechaInicial: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    tmComentariosGenerador: TMemo;
    ds_Prefijos: TDataSource;
    gbIsometricos: tNewGroupBox;
    Grid_Isometricos: TRxDBGrid;
    mnHistorial: TMenuItem;
    Grid_Generadores: TDBGrid;
    frmBarra2: TfrmBarra;
    EstimacionxPartida: TZReadOnlyQuery;
    Estimaciones: TZReadOnlyQuery;
    QryPrefijos: TZReadOnlyQuery;
    ds_ParidasEfectivas: TDataSource;
    QryPartidasEfectivas: TZReadOnlyQuery;
    EstimacionxPartidasWbs: TStringField;
    EstimacionxPartidasNumeroActividad: TStringField;
    EstimacionxPartidasIsometrico: TStringField;
    EstimacionxPartidasPrefijo: TStringField;
    EstimacionxPartidadGenerado: TFloatField;
    EstimacionxPartidasMedida: TStringField;
    EstimacionxPartidamDescripcion: TMemoField;
    ActividadesxOrden: TZReadOnlyQuery;
    dsActividadesxOrden: TfrxDBDataset;
    mnResumen: TMenuItem;
    EstimacionxPartidaiItemOrden: TStringField;
    Label5: TLabel;
    tsSubContrato: TDBLookupComboBox;
    QrySubContrato: TZReadOnlyQuery;
    ds_SubContrato: TDataSource;
    EstimacionessContrato: TStringField;
    EstimacionesiConsecutivo: TIntegerField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesmComentarios: TMemoField;
    EstimacioneslStatus: TStringField;
    EstimacionesdMontoMN: TFloatField;
    EstimacionesdMontoDLL: TFloatField;
    EstimacionessIdUsuario: TStringField;
    EstimacionessIdUsuarioAutoriza: TStringField;
    EstimacionessSubContrato: TStringField;
    EstimacionesdAmortizacionMN: TFloatField;
    tNewGroupBox1: tNewGroupBox;
    Label4: TLabel;
    tsNumeroOrden: TComboBox;
    Label3: TLabel;
    tsNumeroGenerador: TEdit;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    imgNotas: TImage;
    Label16: TLabel;
    tsIsometrico: TEdit;
    tdCantidad: TRxCalcEdit;
    tsPrefijo: TEdit;
    tsNumeroActividad: TRxDBLookupCombo;
    EstimacionesiNumeroEstimacion: TStringField;
    EstimacionxPartidasNumeroOrden: TStringField;
    EstimacionxPartidasNumeroGenerador: TStringField;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdensSubContrato: TStringField;
    ActividadesxOrdeniNumeroEstimacion: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdensNumeroGenerador: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdensIsometrico: TStringField;
    ActividadesxOrdensPrefijo: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendCostoMN: TFloatField;
    ActividadesxOrdendCantidadAnexo: TFloatField;
    ActividadesxOrdendAcumulado: TFloatField;
    chkContrato: TCheckBox;
    frGenerador: TfrxReport;
    sSkinProvider1: TsSkinProvider;
    function lExisteIsometrico ( sParamOrden, sParamGenerador, sParamIsometrico, sParamPrefijo : String ) : Boolean ;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure BtnExitClick(Sender: TObject);
    procedure tiNumeroEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tiNumeroEstimacionExit(Sender: TObject);
    procedure tiNumeroEstimacionEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure tsIsometricoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIsometricoExit(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicialEnter(Sender: TObject);
    procedure tdFechaInicialExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tsIsometricoEnter(Sender: TObject);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure Grid_GeneradoresEnter(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Salir2Click(Sender: TObject);
    procedure EstimacionesAfterScroll(DataSet: TDataSet);
    procedure EstimacionxPartidaAfterScroll(DataSet: TDataSet);
    procedure GridPartidasCellClick(Column: TColumn);
    procedure GridPartidasEnter(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure tsPrefijoEnter(Sender: TObject);
    procedure tsPrefijoExit(Sender: TObject);
    procedure tsPrefijoKeyPress(Sender: TObject; var Key: Char);
    procedure mnHistorialClick(Sender: TObject);
    procedure tsSubContratoExit(Sender: TObject);
    procedure tsSubContratoEnter(Sender: TObject);
    procedure tsSubContratoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroGeneradorEnter(Sender: TObject);
    procedure tsNumeroGeneradorExit(Sender: TObject);
    procedure tsNumeroGeneradorKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenChange(Sender: TObject);
    procedure chkContratoClick(Sender: TObject);
    procedure Grid_GeneradoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_GeneradoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_GeneradoresTitleClick(Column: TColumn);
    procedure GridPartidasTitleClick(Column: TColumn);
    procedure GridPartidasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridPartidasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimaProveedor: TfrmEstimaProveedor;
  sNumeroOrden,
  sGenerador : String ;
  sIsometrico     : String ;
  sPrefijo        : String ;
  sIsometricoReferencia : String ;
  sInstalacion    : String ;
  iOrdenCambio    : Integer ;
  mComentarios    : WideString ;
  OpcButton1      : String ;

  sPartidas       : String ;
  lExtraordinario : Boolean ;
  sOpcion,
  lIniciado       : Boolean ;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  BotonPermiso1, BotonPermiso2: TBotonesPermisos;
implementation

uses frm_connection, frm_comentariosxanexo ;

{$R *.dfm}

procedure TfrmEstimaProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  utgrid2.Destroy;
end;

procedure TfrmEstimaProveedor.FormShow(Sender: TObject);
var
    QryOrdenes : tzReadOnlyQuery ;
begin
    sMenuP:=stMenu;
    BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opGeneradorSub', PopupPrincipal);
    BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opGeneradorSub', PopGenerador);
    UtGrid:=TicdbGrid.create(grid_generadores);
    UtGrid2:=TicdbGrid.create(gridpartidas);
    QryOrdenes := tzReadOnlyQuery.Create(Self) ;
    QryOrdenes.Connection := connection.zConnection ;
    QryOrdenes.Active := False ;
    QryOrdenes.SQL.Clear ;
    QryOrdenes.SQL.Add('Select sNumeroOrden from ordenesdetrabajo where sContrato = :Contrato order by sNumeroOrden') ;
    QryOrdenes.Params.ParamByName('Contrato').DataType := ftString ;
    QryOrdenes.Params.ParamByName('Contrato').Value := Global_Contrato ;
    QryOrdenes.Open ;
    tsNumeroOrden.Items.Clear ;
    If QryOrdenes.RecordCount > 0 Then
    Begin
        While NOT QryOrdenes.Eof do
        Begin
            tsNumeroOrden.Items.Add(QryOrdenes.FieldValues['sNumeroOrden'] ) ;
            QryOrdenes.Next ;
        End ;
        tsNumeroOrden.ItemIndex := 0
    End ;
    QryOrdenes.Destroy ;

    QrySubContrato.Active := False ;
    QrySubContrato.Params.ParamByName('contrato').DataType := ftString ;
    QrySubContrato.Params.ParamByName('contrato').Value := global_contrato ;
    QrySubContrato.Open ;

    If QrySubContrato.RecordCount > 0 Then
        tsSubContrato.KeyValue := QrySubContrato.FieldValues['sSubContrato'] ;

    tdFechaInicial.Date := Date ;
    tdFechaFinal.Date := Date ;
    pgControl.ActivePageIndex := 0 ;
    lIniciado := False ;

    Estimaciones.Active := False ;
    Estimaciones.Params.ParamByName('contrato').DataType := ftString ;
    Estimaciones.Params.ParamByName('contrato').Value := global_contrato ;
    Estimaciones.Params.ParamByName('SubContrato').DataType := ftString ;
    Estimaciones.Params.ParamByName('SubContrato').Value := tsSubContrato.KeyValue ;
    Estimaciones.Open ;

    tdFechaInicial.Enabled := False ;
    tdFechaFinal.Enabled := False ;
    tiNumeroEstimacion.ReadOnly := True ;
    tmComentariosGenerador.ReadOnly := True ;

    tsNumeroOrden.Enabled := False ;
    tsNumeroGenerador.ReadOnly := True ;
    tsNumeroActividad.ReadOnly := True ;
    tdCantidad.ReadOnly := True ;
    tsIsometrico.ReadOnly := True ;
    tsPrefijo.ReadOnly := True ;


    tsNumeroOrden.Color := global_color_salida ;
    OpcButton1 := '' ;
    
    Grid_Generadores.SetFocus;
    BotonPermiso1.permisosBotones(frmBarra1);
    BotonPermiso2.permisosBotones(frmBarra2);
end;

procedure TfrmEstimaProveedor.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tsNumeroGenerador.SetFocus 
end;

procedure TfrmEstimaProveedor.tdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tdFechaFinal.SetFocus

end;

procedure TfrmEstimaProveedor.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    tmComentariosGenerador.SetFocus
end;


procedure TfrmEstimaProveedor.BtnExitClick(Sender: TObject);
begin
    Close ;
end;


procedure TfrmEstimaProveedor.tiNumeroEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdFechaInicial.SetFocus 
end;

procedure TfrmEstimaProveedor.tiNumeroEstimacionExit(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_salida
end;

procedure TfrmEstimaProveedor.tiNumeroEstimacionEnter(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_entrada
end;

procedure TfrmEstimaProveedor.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salida ;
  If tsNumeroActividad.ReadOnly = False Then
      If tsNumeroActividad.Text <> '' then
      Begin
           Connection.QryBusca.Active := False ;
           Connection.QryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select sNumeroActividad From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
           Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
           Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
           Connection.QryBusca.Open ;
           If Connection.QryBusca.RecordCount > 0 Then
               imgNotas.Visible := True ;
      End
end;

procedure TfrmEstimaProveedor.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdCantidad.SetFocus
end;

procedure TfrmEstimaProveedor.frmBarra1btnAddClick(Sender: TObject);
begin
  If (Estimaciones.RecordCount > 0) Then
      If Estimaciones.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
          OpcButton1 := 'New' ;

          Insertar1.Enabled := False ;
          Editar1.Enabled := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled := True ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled := False ;
          frmBarra1.btnAddClick(Sender);


          tsNumeroOrden.Enabled := True ;
          tsNumeroGenerador.ReadOnly := False ;
          tsNumeroActividad.ReadOnly := False ;
          tdCantidad.ReadOnly := False ;
          tsIsometrico.ReadOnly := False ;
          tsPrefijo.ReadOnly := False ;
          tdCantidad.ReadOnly := False ;
          tdCantidad.Value := 0 ;
          tsNumeroOrden.ItemIndex :=  tsNumeroOrden.Items.IndexOf(sNumeroOrden) ;
          tsNumeroGenerador.Text := sGenerador ;
          tsIsometrico.Text := sIsometrico ;
          tsPrefijo.Text := sPrefijo ;
          tsNumeroOrden.SetFocus
      End
      Else
          MessageDlg('Generador Aplicado, no pueden realizarse cambios', mtWarning, [mbOk], 0);
  BotonPermiso1.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaProveedor.frmBarra1btnEditClick(Sender: TObject);
begin
  If Estimaciones.RecordCount > 0 Then
      If Estimaciones.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
          OpcButton1 := 'Edit' ;
          Insertar1.Enabled := False ;
          Editar1.Enabled := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled := True ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled := False;
          frmBarra1.btnEditClick(Sender);

          tsNumeroOrden.Enabled := True ;
          tsNumeroGenerador.ReadOnly := False ;
          tsNumeroActividad.ReadOnly := False ;
          tdCantidad.ReadOnly := False ;
          tsIsometrico.ReadOnly := False ;
          tsPrefijo.ReadOnly := False ;
          tsNumeroOrden.SetFocus
      End
      Else
          MessageDlg('Generador Aplicado, no pueden realizarse cambios', mtWarning, [mbOk], 0);
  BotonPermiso1.permisosBotones(frmBarra1);
end;

function TfrmEstimaProveedor.lExisteIsometrico ( sParamOrden, sParamGenerador, sParamIsometrico, sParamPrefijo : String ) : Boolean ;
Begin
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('select sIsometrico from estimacionxpartidaprov where sContrato = :Contrato and sSubContrato = :SubContrato and ' +
                                  'sNumeroOrden = :Orden And sNumeroGenerador <> :Generador And sIsometrico = :Isometrico And sPrefijo = :Prefijo' ) ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.QryBusca.Params.ParamByName('SubContrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('SubContrato').Value := tsSubContrato.KeyValue ;
      Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('orden').Value := sParamOrden ;
      Connection.QryBusca.Params.ParamByName('Generador').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Generador').Value := sParamGenerador ;
      Connection.QryBusca.Params.ParamByName('Isometrico').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Isometrico').Value := sParamIsometrico ;
      Connection.QryBusca.Params.ParamByName('Prefijo').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Prefijo').Value := sParamPrefijo ;
      connection.QryBusca.Open ;
      If connection.QryBusca.RecordCount > 0 then
          lExisteIsometrico := True
      else
          lExisteIsometrico := False
End ;

procedure TfrmEstimaProveedor.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden.SetFocus  
end;

procedure TfrmEstimaProveedor.frmBarra1btnPostClick(Sender: TObject);
Var
    dCantidadInicial : Real ;
    lContinua : Boolean ;
    SavePlace : TBookmark;
    sWbs      : String ;
    dCantidad : Double ;
    iResp     : Byte ;
    nombres, cadenas: TStringList;
begin
    {Validacion de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('No. Orden');nombres.Add('Isometrico');nombres.Add('Concepto/Partida');nombres.Add('Cantidad');
    cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIsometrico.Text);cadenas.Add(tsNumeroActividad.Text);cadenas.Add(tdCantidad.Text);
    if not validaTexto(nombres, cadenas, 'No. Generador', tsNumeroGenerador.Text) then
    begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
    end;
    {Continua insercion de datos}
    If tsNumeroActividad.Text <> '' Then
        lContinua := True
    Else
        lContinua := False ;

     dCantidad := tdCantidad.Value ;
     sWbs := QryPartidasEfectivas.FieldValues['sWbs'] ; 
     If lContinua Then
     Begin
         sNumeroOrden := tsNumeroOrden.Text ;
         sGenerador := tsNumeroGenerador.Text ;
         sIsometrico := tsIsometrico.Text ;
         sPrefijo := tsPrefijo.Text ;
         If OpcButton1 = 'New' then
         Begin
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'INSERT INTO estimacionxpartidaprov ( sContrato , sSubContrato, iNumeroEstimacion, sNumeroOrden, sNumeroGenerador, ' +
                                               'sWbs, sNumeroActividad, sIsometrico, sPrefijo, dCantidad  ) ' +
                                               'VALUES (:Contrato, :subcontrato, :Estimacion, :Orden, :Generador, :wbs, :Actividad, :Isometrico, :Prefijo, :Cantidad)') ;
                 connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('SubContrato').value := Estimaciones.FieldValues ['sSubContrato'] ;
                 connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Estimacion').value := Estimaciones.FieldValues ['iNumeroEstimacion'] ;
                 connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Generador').value := tsNumeroGenerador.Text ;
                 connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('wbs').value := sWbs ;
                 connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Actividad').value := tsNumeroActividad.Text ;
                 connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Isometrico').value := tsIsometrico.Text ;
                 connection.zCommand.Params.ParamByName('Prefijo').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Prefijo').value := tsPrefijo.Text ;
                 connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                 connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value ;
                 connection.zCommand.ExecSQL ;
             except
                on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al salvar nuevo registro de partidas', 0);
                end;
             end
         End
         Else
         Begin
             try
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zCommand.SQL.Add ( 'UPDATE estimacionxpartidaprov Set sNumeroOrden = :Orden, sNumeroGenerador = :Generador, sWbs = :wbs, sNumeroActividad = :Actividad, dCantidad = :Cantidad, ' +
                                                'sIsometrico = :Isometrico, sPrefijo = :Prefijo ' +
                                                'Where sContrato = :Contrato And sSubContrato = :subcontrato and iNumeroEstimacion = :Estimacion And sNumeroOrden = :OldOrden And ' +
                                                'sNumeroGenerador = :OldGenerador And sWbs = :oldWbs And sNumeroActividad = :OldActividad And sIsometrico = :OldIsometrico And sPrefijo = :OldPrefijo') ;
                  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                  connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('SubContrato').value := Estimaciones.FieldValues ['sSubContrato'] ;
                  connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Estimacion').value := Estimaciones.FieldValues ['iNumeroEstimacion'] ;
                  connection.zCommand.Params.ParamByName('OldOrden').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldOrden').value := EstimacionxPartida.FieldValues ['sNumeroOrden'] ;
                  connection.zCommand.Params.ParamByName('OldGenerador').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldGenerador').value := EstimacionxPartida.FieldValues ['sNumeroGenerador'] ;
                  connection.zCommand.Params.ParamByName('OldWbs').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldWbs').value := EstimacionxPartida.FieldValues ['sWbs'];
                  connection.zCommand.Params.ParamByName('OldActividad').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldActividad').value := EstimacionxPartida.FieldValues ['sNumeroActividad'];
                  connection.zCommand.Params.ParamByName('OldIsometrico').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldIsometrico').value := EstimacionxPartida.FieldValues ['sIsometrico'];
                  connection.zCommand.Params.ParamByName('OldPrefijo').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('OldPrefijo').value := EstimacionxPartida.FieldValues ['sPrefijo'];
                  connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                  connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Generador').value := tsNumeroGenerador.Text ;
                  connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('wbs').value := sWbs ;
                  connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Actividad').value := tsNumeroActividad.Text ;
                  connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Isometrico').value := tsIsometrico.Text ;
                  connection.zCommand.Params.ParamByName('Prefijo').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Prefijo').value := tsPrefijo.Text ;
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                  connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value ;
                  connection.zCommand.ExecSQL ;
             except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al salvar cambios en registro de partidas', 0);
                  end;
              end
         end ;
         SavePlace := EstimacionxPartida.GetBookmark ;
         EstimacionxPartida.Active := False ;
         EstimacionxPartida.Open ;
         try
              EstimacionxPartida.GotoBookmark(SavePlace);
         except
         else
              EstimacionxPartida.FreeBookmark(SavePlace);
         end ;

         tsNumeroOrden.Enabled := False ;
         tsNumeroGenerador.ReadOnly := True ;
         tsNumeroActividad.ReadOnly := True ;
         tdCantidad.ReadOnly := True ;
         tsIsometrico.ReadOnly := True ;
         tsPrefijo.ReadOnly := True ;
         Insertar1.Enabled := True ;
         Editar1.Enabled := True ;
         Registrar1.Enabled := False ;
         Can1.Enabled := False ;
         Eliminar1.Enabled := True ;
         Refresh1.Enabled := True ;
         frmBarra1.btnPostClick(Sender);
    End
    Else
         MessageDlg('Debera seleccionar un isometrico de ingenieria que ampare la instalacion de la partida anexo asi como la plataforma de instalacion para el direccionamiento de costos.', mtWarning, [mbOk], 0);
    BotonPermiso1.permisosBotones(frmBarra1);     
end;

procedure TfrmEstimaProveedor.frmBarra1btnCancelClick(Sender: TObject);
begin
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  frmBarra1.btnCancelClick(Sender);

  tsNumeroOrden.Enabled := False ;
  tsNumeroGenerador.ReadOnly := True ;
  tsNumeroActividad.ReadOnly := True ;
  tdCantidad.ReadOnly := True ;
  tsIsometrico.ReadOnly := True ;
  tsPrefijo.ReadOnly := True ;

  tsNumeroOrden.Text := '' ;
  tsNumeroGenerador.Text := '' ;
  tdCantidad.Value := 0 ;
  tsIsometrico.Text := '' ;
  tsPrefijo.Text := '' ;
  BotonPermiso1.permisosBotones(frmBarra1);
end;

procedure TfrmEstimaProveedor.tsIsometricoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsPrefijo.SetFocus
end;

procedure TfrmEstimaProveedor.frmBarra1btnExitClick(Sender: TObject);
begin
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  frmBarra1.btnExitClick(Sender);
end;

procedure TfrmEstimaProveedor.frmBarra1btnRefreshClick(Sender: TObject);
begin
  EstimacionxPartida.refresh ;
end;

procedure TfrmEstimaProveedor.frmBarra1btnDeleteClick(Sender: TObject);
Var
  dCantidadInicial : Real ;
  lContinua : Boolean ;
  SavePlace : TBookmark;
begin
    If EstimacionxPartida.RecordCount > 0 Then
       If Estimaciones.FieldValues['lStatus'] = 'Pendiente' Then
       Begin
           try
                 SavePlace := EstimacionxPartida.GetBookmark ;
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zCommand.SQL.Add ( 'Delete from estimacionxpartidaprov where sContrato = :Contrato and sSubContrato = :subcontrato ' +
                                               'And iNumeroEstimacion = :Estimacion And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
                                               'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico And sPrefijo = :Prefijo') ;
                 connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('SubContrato').value := tsSubContrato.KeyValue ;
                 connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Estimacion').value := Estimaciones.FieldValues ['iNumeroEstimacion'] ;
                 connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Orden').value :=EstimacionxPartida.FieldValues ['sNumeroOrden'];
                 connection.zCommand.Params.ParamByName('Generador').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Generador').value := EstimacionxPartida.FieldValues ['sNumeroGenerador'];
                 connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Wbs').value := EstimacionxPartida.FieldValues ['sWbs'];
                 connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Actividad').value := EstimacionxPartida.FieldValues ['sNumeroActividad'];
                 connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Isometrico').value := EstimacionxPartida.FieldValues ['sIsometrico'];
                 connection.zCommand.Params.ParamByName('Prefijo').DataType := ftString ;
                 connection.zCommand.Params.ParamByName('Prefijo').value := EstimacionxPartida.FieldValues ['sPrefijo'];
                 connection.zCommand.ExecSQL ;
                 EstimacionxPartida.Active := False ;
                 EstimacionxPartida.Open ;
                 try
                     EstimacionxPartida.FreeBookmark(SavePlace);
                 except
                 Else
                      EstimacionxPartida.GotoBookmark(SavePlace);
                 end ;
                 GridPartidas.SetFocus
           Except
              on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al eliminar registro de partidas', 0);
              end;
           End
       End
       Else
           MessageDlg('Generador Aplicado, no pueden realizarse cambios', mtWarning, [mbOk], 0);
end;

procedure TfrmEstimaProveedor.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEstimaProveedor.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmEstimaProveedor.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmEstimaProveedor.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmEstimaProveedor.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmEstimaProveedor.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmEstimaProveedor.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmEstimaProveedor.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEstimaProveedor.tsIsometricoExit(Sender: TObject);
begin
  tsIsometrico.Color := global_color_salida ;
  If tsNumeroActividad.ReadOnly = False Then
      If (tsIsometrico.Text <> '') Or (tsPrefijo.Text <> '')  then
         If lExisteIsometrico( tsNumeroOrden.Text , tsNumeroGenerador.Text , tsIsometrico.Text, tsPrefijo.Text ) then
         Begin
            If tsPrefijo.Text <> '' Then
            Begin
                mnHistorial.Click ;
                MessageDlg('El Isometrico: ' + tsIsometrico.Text  + '-' + tsPrefijo.Text + ' se encuentra registrado en otro generador de la misma orden de trabajo.' , mtInformation, [mbOk], 0) ;
            End ;
            tsPrefijo.SetFocus
         End
         Else
            gbIsometricos.Visible := False
end;

procedure TfrmEstimaProveedor.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;
        
procedure TfrmEstimaProveedor.tsNumeroOrdenExit(Sender: TObject);
begin
   tsNumeroOrden.Color := global_color_salida ;
   If frmBarra1.btnEdit.Enabled = False Then
   Begin
      QryPartidasEfectivas.Active := False ;
      QryPartidasEfectivas.SQL.Clear ;
      If chkContrato.Checked Then
          QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxanexo ' +
                                       'Where sContrato = :Contrato And sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden')
      Else
          QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxorden ' +
                                       'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden and sTipoActividad = "Actividad" Order By iItemOrden') ;
      QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
      QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
      QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
      If NOT chkContrato.Checked Then
      Begin
          QryPartidasEfectivas.Params.ParamByName('orden').DataType := ftString ;
          QryPartidasEfectivas.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
      End ;
      QryPartidasEfectivas.Open ;
   End

end;

procedure TfrmEstimaProveedor.tiConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdFechaInicial.SetFocus
end;


procedure TfrmEstimaProveedor.tdFechaInicialEnter(Sender: TObject);
begin
    tdFechaInicial.Color := global_color_entrada
end;

procedure TfrmEstimaProveedor.tdFechaInicialExit(Sender: TObject);
Var
    dFechaFinal : tDate ;
begin
    tdFechaInicial.Color := global_color_salida ;
    If frmBarra2.btnCancel.Enabled = True Then
    Begin
       If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Diario' then
           tdFechaFinal.Date := tdFechaInicial.Date + 1
       Else
           If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Semanal' then
               tdFechaFinal.Date := tdFechaInicial.Date + 7
           Else
               If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Mensual' then
                   tdFechaFinal.Date := tdFechaInicial.Date + 30 ;

       dFechaFinal := strToDate ( '01/' + Trim(IntToStr(MonthOf(tdFechaInicial.Date))) + '/' + Trim(IntToStr(YearOf(tdFechaInicial.Date)))) ;
    End
end;

procedure TfrmEstimaProveedor.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_Color_entrada
end;

procedure TfrmEstimaProveedor.tdFechaFinalExit(Sender: TObject);
Var
    dFechaFinal : tDate ;
begin
    tdFechaFinal.Color := global_Color_salida ;
    If frmBarra2.btnCancel.Enabled = True Then
       dFechaFinal := strToDate ( '01/' + Trim(IntToStr(MonthOf(tdFechaInicial.Date))) + '/' + Trim(IntToStr(YearOf(tdFechaInicial.Date)))) ;
end;

procedure TfrmEstimaProveedor.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entrada ;
end;

procedure TfrmEstimaProveedor.tdCantidadEnter(Sender: TObject);
begin
    If frmBarra1.btnPost.Enabled = True Then
        If (tsNumeroActividad.Text <> '') Then
           If OpcButton1 <> 'New' Then
    tdCantidad.Color := global_color_entrada
end;

procedure TfrmEstimaProveedor.tsIsometricoEnter(Sender: TObject);
begin
    tsIsometrico.Color := global_color_entrada
end;


procedure TfrmEstimaProveedor.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
  sIsometricos : String ;
begin
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;

  If CompareText(VarName, 'PROVEEDOR') = 0 then
      Value := tsSubContrato.Text ;
  If CompareText(VarName, 'ESTIMACION') = 0 then
      Value := Estimaciones.FieldValues['iNumeroEstimacion'] ;
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := DateToStr(Estimaciones.FieldValues['dFechaInicio']) + ' AL ' + DateToStr(Estimaciones.FieldValues['dFechaFinal']) ;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := Estimaciones.FieldValues['sNumeroOrden'] ;
//  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
//      Value := OrdenesdeTrabajo.FieldValues['sDescripcionCorta'] ;
//  If CompareText(VarName, 'DESCRIPCION') = 0 then
//      Value := OrdenesdeTrabajo.FieldValues['mDescripcion'] ;

end;


procedure TfrmEstimaProveedor.Grid_GeneradoresEnter(Sender: TObject);
begin
  If frmBarra2.btnCancel.Enabled = True Then
      frmBarra2.btnCancel.Click ;
  If Estimaciones.RecordCount = 0 Then
  Begin
      EstimacionxPartida.Active := False ;
      tdFechaInicial.Date := Date ;
      tdFechaFinal.Date := Date ;
      tiNumeroEstimacion.Text := '' ;
      tmComentariosGenerador.Text := '' ;
      tiConsecutivo.Text := '0' ;
      tdCantidad.Value := 0;
      tsNumeroOrden.Text := '' ;
      tsNumeroGenerador.Text := '' ;
      tsIsometrico.Text := '' ;
      tsPrefijo.Text := '' ;
  End
end;

procedure TfrmEstimaProveedor.Grid_GeneradoresMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimaProveedor.Grid_GeneradoresMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimaProveedor.Grid_GeneradoresTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEstimaProveedor.MenuItem9Click(Sender: TObject);
begin
    frmBarra2.btnPrinter.Click
end;

procedure TfrmEstimaProveedor.Salir2Click(Sender: TObject);
begin
    frmBarra2.btnExit.Click
end;

procedure TfrmEstimaProveedor.EstimacionesAfterScroll(DataSet: TDataSet);
Var
    iCheck : Byte ;
    sDescompone : String ;
    sFase       : String ;
begin
  If frmBarra2.btnCancel.Enabled = True Then
      frmBarra2.btnCancel.Click ;

  If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;

  tmComentariosGenerador.Color := global_color_salida ;
  If Estimaciones.RecordCount > 0 Then
  Begin
      mComentarios := '' ;
      tdFechaInicial.Date := Estimaciones.FieldValues['dFechaInicio'] ;
      tdFechaFinal.Date := Estimaciones.FieldValues['dFechaFinal'] ;
      tiNumeroEstimacion.Text := Estimaciones.FieldValues['iNumeroEstimacion'] ;
      tmComentariosGenerador.Text := Estimaciones.FieldValues['mComentarios'] ;
      tiConsecutivo.Text := Estimaciones.FieldValues['iConsecutivo'] ;

      tdCantidad.Value := 0 ;
      tsNumeroOrden.Text := '' ;
      tsNumeroGenerador.Text := '' ;
      tsIsometrico.Text := '' ;
      tsPrefijo.Text := '' ;

      EstimacionxPartida.Active := False ;
      EstimacionxPartida.Params.ParamByName('Contrato').DataType := ftString ;
      EstimacionxPartida.Params.ParamByName('Contrato').Value := Global_Contrato ;
      EstimacionxPartida.Params.ParamByName('Convenio').DataType := ftString ;
      EstimacionxPartida.Params.ParamByName('Convenio').Value := Global_Convenio ;
      EstimacionxPartida.Params.ParamByName('Estimacion').DataType := ftString ;
      EstimacionxPartida.Params.ParamByName('Estimacion').Value := Estimaciones.FieldValues['iNumeroEstimacion']  ;
      EstimacionxPartida.Params.ParamByName('SubContrato').DataType := ftString ;
      EstimacionxPartida.Params.ParamByName('SubContrato').Value := Estimaciones.FieldValues['sSubContrato']  ;
      EstimacionxPartida.Open ;

      QryPrefijos.Active := False ;
      QryPrefijos.Params.ParamByName('Contrato').DataType := ftString ;
      QryPrefijos.Params.ParamByName('Contrato').Value := global_contrato ;
      QryPrefijos.Params.ParamByName('Isometrico').DataType := ftString ;
      QryPrefijos.Params.ParamByName('Isometrico').Value := tsIsometrico.Text ;
      QryPrefijos.Params.ParamByName('Ordenado').DataType := ftString ;
      QryPrefijos.Params.ParamByName('Ordenado').Value := 'sPrefijo' ;
      QryPrefijos.Open ;
  End
  Else
  Begin
      EstimacionxPartida.Active := False ;
      tdFechaInicial.Date := Date ;
      tdFechaFinal.Date := Date ;
      tiNumeroEstimacion.Text := '' ;
      tmComentariosGenerador.Text := '' ;
      tiConsecutivo.Text := '0' ;
      tdCantidad.Value := 0;
      tsNumeroOrden.Text := '' ;
      tsNumeroGenerador.Text := '' ;
      tsIsometrico.Text := '' ;
      tsPrefijo.Text := '' ;
  End
end;

procedure TfrmEstimaProveedor.EstimacionxPartidaAfterScroll(
  DataSet: TDataSet);
begin
   ImgNotas.Visible := False ;
   try
     If EstimacionxPartida.RecordCount > 0 Then
     Begin
        tsNumeroOrden.ItemIndex :=  tsNumeroOrden.Items.IndexOf(EstimacionxPartida.fieldByName('sNumeroOrden').AsString) ;
        QryPartidasEfectivas.Active := False ;
        QryPartidasEfectivas.SQL.Clear ;
        QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxorden ' +
                                     'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden and sTipoActividad = "Actividad" Order By iItemOrden') ;
        QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
        QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
        QryPartidasEfectivas.Params.ParamByName('orden').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
        QryPartidasEfectivas.Open ;

        tsNumeroGenerador.Text := EstimacionxPartida.fieldByName('sNumeroGenerador').AsString ;
        tsNumeroActividad.KeyValue := EstimacionxPartida.fieldByName('sNumeroActividad').AsString ;
        tdCantidad.Value := EstimacionxPartida.FieldValues['dGenerado'] ;
        tsIsometrico.Text := EstimacionxPartida.FieldValues['sIsometrico'] ;
        tsPrefijo.Text := EstimacionxPartida.FieldValues['sPrefijo'] ;

        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sNumeroActividad From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
            imgNotas.Visible := True ;

    End
    Else
    Begin
        tdCantidad.Value := 0 ;
        tsNumeroOrden.Text := '' ;
        tsNumeroGenerador.Text := '' ;
        tsIsometrico.Text := '' ;
        tsPrefijo.Text := '' ;
    End ;
   except

   end
end;

procedure TfrmEstimaProveedor.GridPartidasCellClick(Column: TColumn);
begin
   If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEstimaProveedor.GridPartidasEnter(Sender: TObject);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
 begin
  if gridpartidas.DataSource.DataSet.RecordCount>0 then
   begin
   If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;

   ImgNotas.Visible := False ;
   If tsNumeroOrden.Text <> '' Then
      If EstimacionxPartida.recordcount > 0 Then
      Begin
        tsNumeroOrden.ItemIndex :=  tsNumeroOrden.Items.IndexOf(EstimacionxPartida.fieldByName('sNumeroOrden').AsString) ;
        QryPartidasEfectivas.Active := False ;
        QryPartidasEfectivas.SQL.Clear ;
        If chkContrato.Checked Then
            QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxanexo ' +
                                         'Where sContrato = :Contrato And sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden')
        Else
            QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxorden ' +
                                         'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden and sTipoActividad = "Actividad" Order By iItemOrden') ;
        QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
        QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
        If NOT chkContrato.Checked Then
        Begin
            QryPartidasEfectivas.Params.ParamByName('orden').DataType := ftString ;
            QryPartidasEfectivas.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
        End ;
        QryPartidasEfectivas.Open ;

        tsNumeroGenerador.Text := EstimacionxPartida.fieldByName('sNumeroGenerador').AsString ;
        tsNumeroActividad.KeyValue := EstimacionxPartida.fieldByName('sNumeroActividad').AsString ;
        tdCantidad.Value := EstimacionxPartida.FieldValues['dGenerado'] ;
        tsIsometrico.Text := EstimacionxPartida.FieldValues['sIsometrico'] ;
        tsPrefijo.Text := EstimacionxPartida.FieldValues['sPrefijo'] ;
      End ;

   QryPrefijos.Active := False ;
   QryPrefijos.Params.ParamByName('Contrato').DataType := ftString ;
   QryPrefijos.Params.ParamByName('Contrato').Value := global_contrato ;
   QryPrefijos.Params.ParamByName('Isometrico').DataType := ftString ;
   QryPrefijos.Params.ParamByName('Isometrico').Value := tsIsometrico.Text ;
   QryPrefijos.Params.ParamByName('Ordenado').DataType := ftString ;
   QryPrefijos.Params.ParamByName('Ordenado').Value := 'sPrefijo' ;
   QryPrefijos.Open ;
  end;
 end;
end;

procedure TfrmEstimaProveedor.GridPartidasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
if gridpartidas.DataSource.DataSet.RecordCount>0 then
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimaProveedor.GridPartidasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
if gridpartidas.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimaProveedor.GridPartidasTitleClick(Column: TColumn);
begin
if gridpartidas.datasource.DataSet.IsEmpty=false  then
if gridpartidas.DataSource.DataSet.RecordCount>0 then
UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmEstimaProveedor.frmBarra2btnAddClick(Sender: TObject);
Var
  dFechaFinal : tDate ;
  iCheck      : Integer ;
begin
  If tsNumeroOrden.Text <> '' Then
  Begin
      frmBarra2.btnCancel.Click ;
      mComentarios := '' ;
      tdFechaInicial.Enabled := True ;
      tdFechaFinal.Enabled := True ;
      tiNumeroEstimacion.ReadOnly := False ;
      If Estimaciones.RecordCount > 0 then
      Begin
           Connection.QryBusca.Active := False ;
           Connection.QryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select Max(iConsecutivo) as iConsecutivo From estimacionxproveedor Where sContrato = :Contrato Group By sContrato') ;
           Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
           Connection.QryBusca.Open ;
           If Connection.QryBusca.RecordCount > 0 Then
               tiConsecutivo.Text := Connection.QryBusca.FieldValues ['iConsecutivo'] + 1
           Else
               tiConsecutivo.Text := '1' ;

           tdFechaInicial.Date := Estimaciones.FieldValues ['dFechaFinal'] + 1 ;
           If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Diario' then
               tdFechaFinal.Date := Estimaciones.FieldValues ['dFechaFinal'] + 1
           Else
               If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Semanal' then
                    tdFechaFinal.Date := Estimaciones.FieldValues ['dFechaFinal'] + 7
               Else
                    If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Mensual' then
                        tdFechaFinal.Date := Estimaciones.FieldValues ['dFechaFinal'] + 30 ;


      End
      Else
      Begin
           tdFechaInicial.Date := Date ;
           Connection.QryBusca.Active := False ;
           Connection.QryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select Max(iConsecutivo) as iConsecutivo From estimacionxproveedor Where sContrato = :Contrato Group By sContrato') ;
           Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
           Connection.QryBusca.Open ;
           If Connection.QryBusca.RecordCount > 0 Then
               tiConsecutivo.Text := Connection.QryBusca.FieldValues ['iConsecutivo'] + 1
           Else
               tiConsecutivo.Text := '1' ;
           If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Diario' then
               tdFechaFinal.Date := Date + 1
           Else
               If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Semanal' then
                   tdFechaFinal.Date := Date + 7
               Else
                   If connection.configuracion.FieldValues ['sRangoEstimacion'] = 'Mensual' then
                      tdFechaFinal.Date := Date + 30
      End  ;

      dFechaFinal := strToDate ( '01/' + Trim(IntToStr(MonthOf(tdFechaInicial.Date))) + '/' + Trim(IntToStr(YearOf(tdFechaInicial.Date)))) ;

      OpcButton1 := 'New' ;

      frmBarra2.btnAddClick(Sender);
      EstimacionxPartida.Active := False ;
      tiNumeroEstimacion.Text := '' ;
      tdCantidad.Value := 0 ;
      tsNumeroOrden.Text := '' ;
      tsNumeroGenerador.Text := '' ;
      tsIsometrico.Text := '' ;
      tsPrefijo.Text := '' ;
      pgControl.ActivePageIndex := 0 ;
      tiNumeroEstimacion.SetFocus
  End;
  BotonPermiso2.permisosBotones(frmBarra2);
END;

procedure TfrmEstimaProveedor.frmBarra2btnEditClick(Sender: TObject);
begin
   If tsNumeroOrden.Text <> '' Then
     If Estimaciones.RecordCount > 0 then
       If Estimaciones.FieldValues ['lStatus'] = 'Pendiente' then
       Begin
            frmBarra2.btnCancel.Click ;
            OpcButton1 := 'False' ;
            frmBarra2.btnEditClick(Sender);
            tdFechaInicial.Enabled := True ;
            tdFechaFinal.Enabled := True ;
            tiNumeroEstimacion.ReadOnly := False ;
            tmComentariosGenerador.ReadOnly := False ;
            pgControl.ActivePageIndex := 0 ;
            tiNumeroEstimacion.SetFocus
       End
       Else
            MessageDlg('Generador Aplicado no se pueden realizar cambios', mtWarning, [mbOk], 0);
   BotonPermiso2.permisosBotones(frmBarra2);
end;

procedure TfrmEstimaProveedor.frmBarra2btnPostClick(Sender: TObject);
Var
  Posicion : Integer ;
  iCheck   : Byte ;
  dFechaFinal : tDate ;
begin
  {Validacion de campos}
  if not validaTexto(nil, nil, 'No. Estimacion', tiNumeroEstimacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
 {Continua insercion de datos}
  // se determina la fecha final del generador y la semana segun la fecha final...
  dFechaFinal := strToDate ( '01/' + Trim(IntToStr(MonthOf(tdFechaInicial.Date))) + '/' + Trim(IntToStr(YearOf(tdFechaInicial.Date)))) ;
  If tmComentariosGenerador.Text = '' Then
      tmComentariosGenerador.Text := '*' ;

  If OpcButton1 = 'New' then
  Begin
      try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'INSERT INTO estimacionxproveedor ( sContrato , sSubContrato, iNumeroEstimacion, ' +
                                          'iConsecutivo, dFechaInicio, dFechaFinal, lStatus, mComentarios, sIdUsuario ) ' +
                                          'VALUES (:Contrato, :subcontrato, :Estimacion, :Consecutivo, :FechaI, :FechaF, ' +
                                          ':Status, :Comentarios, :Usuario )') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('SubContrato').value := tsSubContrato.KeyValue ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').value := tiNumeroEstimacion.Text ;
            connection.zCommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('Consecutivo').value := tiConsecutivo.Text ;
            connection.zCommand.Params.ParamByName('FechaI').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('FechaI').value := tdFechaInicial.Date ;
            connection.zCommand.Params.ParamByName('FechaF').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('FechaF').value := tdFechaFinal.Date ;
            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo;
            connection.zCommand.Params.ParamByName('Comentarios').value := tmComentariosGenerador.Text ;
            connection.zCommand.Params.ParamByName('Status').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Status').value := 'Pendiente' ;
            connection.zCommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Usuario').value := global_usuario ;
            connection.zCommand.ExecSQL ;

            // Actualizo Kardex del Sistema ....
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
            connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
            connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
            connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
            connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación de la Estimacion No. [' +  tiNumeroEstimacion.Text  +
                                                                           '] del Proveedor [' + tsSubContrato.Text + ']' ;
            connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Origen').Value := 'Generadores' ;
            connection.zcommand.ExecSQL () ;

            Estimaciones.Active := False ;
            Estimaciones.Open ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al salvar nuevo registro', 0);
          end;
      end
  End
  Else
  Begin
      try
            Posicion := Estimaciones.RecNo ;


            // Actualizo todas las partidas del generador, enviandola al nuevo generador ...
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE estimacionxpartidaprov Set iNumeroEstimacion = :Estimacion Where ' +
                                          'sContrato = :Contrato And sSubContrato = :subcontrato iNumeroEstimacion = :OldEstimacion') ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').value := tiNumeroEstimacion.Text ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('SubContrato').value := tsSubContrato.KeyValue ;
            connection.zCommand.Params.ParamByName('OldEstimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('OldEstimacion').value := Estimaciones.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.ExecSQL ;

            // Actualizo Kardex del Sistema ....
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
            connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
            connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
            connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
            connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Descripcion').Value := 'Modificación de la Estimacion Original No. [' +  Estimaciones.FieldValues['sNumeroGenerador']  +
                                                                            '] del Proveedor [' + tsSubContrato.Text + ']' +
                                                                            ', No. de Estimacion Final [ ' + tiNumeroEstimacion.Text + ']' ;
            connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
            connection.zcommand.Params.ParamByName('Origen').Value := 'Generadores' ;
            connection.zcommand.ExecSQL () ;


            // Ahora si actualizo el encabezado ...

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE estimacionxproveedor Set iNumeroEstimacion = :Estimacion, ' +
                               'dFechaInicio = :FechaI, dFechaFinal = :FechaF, mComentarios = :Comentarios Where ' +
                               'sContrato = :Contrato And sSubContrato = :subcontrato iNumeroEstimacion = :OldEstimacion') ;
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Estimacion').value := tiNumeroEstimacion.Text ;
            connection.zCommand.Params.ParamByName('FechaI').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('FechaI').value := tdFechaInicial.Date ;
            connection.zCommand.Params.ParamByName('FechaF').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('FechaF').value := tdFechaFinal.Date ;
            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Comentarios').value := tmComentariosGenerador.Text ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('SubContrato').value := tsSubContrato.KeyValue ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
            connection.zCommand.Params.ParamByName('OldEstimacion').DataType := ftString ;
            connection.zCommand.Params.ParamByName('OldEstimacion').value := Estimaciones.FieldValues['iNumeroEstimacion'] ;
            connection.zCommand.ExecSQL ;

            Estimaciones.Active := False ;
            Estimaciones.Open ;
            Estimaciones.RecNo := Posicion ;
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al salvar cambios en registro', 0);
          end;
      end
  End ;
  OpcButton1 := '' ;
  frmBarra2.btnPostClick(Sender);
  Grid_Generadores.SetFocus;
  BotonPermiso2.permisosBotones(frmBarra2);
end;

procedure TfrmEstimaProveedor.frmBarra2btnPrinterClick(Sender: TObject);
var
    iRecord : Byte ;
begin
  try
    // Primero verificar cuantas partidas no existen en las ordenes de trabajo ....
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select distinct e.sNumeroOrden, e.sWbs, e.sNumeroActividad from estimacionxpartidaprov e ' +
                                'Where e.sContrato = :contrato and e.iNumeroEstimacion = :Estimacion and sSubContrato = :SubContrato ' +
                                'and not Exists (Select *  from actividadesxorden b ' +
                                'Where b.sContrato = e.sContrato and b.sNumeroOrden = e.sNumeroOrden and b.sWbs = e.sWbs and b.sNumeroActividad  = e.sNumeroActividad and b.sIdConvenio = :convenio and b.sTipoActividad = "Actividad") order by e.sNumeroOrden, e.sWbs') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
    connection.QryBusca.Params.ParamByName('SubContrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('SubContrato').Value := estimaciones.FieldValues['sSubContrato'] ;
    connection.QryBusca.Params.ParamByName('estimacion').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('estimacion').Value := estimaciones.FieldValues['iNumeroEstimacion'] ;
    connection.QryBusca.Open ;
    If connection.QryBusca.RecordCount > 0 then
    Begin
          // Existen Partidas sin concepto en el contrato ...
          while Not connection.QryBusca.Eof Do
          Begin
              lVerificaPaquetes (global_contrato, global_convenio, connection.QryBusca.FieldValues['sNumeroOrden'], connection.QryBusca.FieldValues['sWbs'], connection.QryBusca.FieldValues['sNumeroActividad'], 0, frmEstimaProveedor ) ;
              connection.QryBusca.Next
          end ;
    end ;

    if estimaciones.RecordCount > 0 then
        rDiarioFirmas (global_contrato, '', 'A',estimaciones.FieldValues['dFechaFinal'] , frmEstimaProveedor ) ;

    ActividadesxOrden.Active := False ;
    ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
    ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
    ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
    ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio ;
    ActividadesxOrden.Params.ParamByName('SubContrato').DataType := ftString ;
    ActividadesxOrden.Params.ParamByName('SubContrato').Value := estimaciones.FieldValues['sSubContrato'] ;
    ActividadesxOrden.Params.ParamByName('estimacion').DataType := ftString ;
    ActividadesxOrden.Params.ParamByName('estimacion').Value := estimaciones.FieldValues['iNumeroEstimacion'] ;
    ActividadesxOrden.Open ;

    if ActividadesxOrden.RecordCount > 0 then
    begin
        frGenerador.PreviewOptions.MDIChild := True ;
        frGenerador.PreviewOptions.Modal := False ;
        frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
        frGenerador.PreviewOptions.ShowCaptions := False ;
        frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
        frGenerador.LoadFromFile (global_files + global_miReporte + '_ResumenGeneracionSubContratos.fr3') ;
        frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
        if not FileExists(global_files + global_miReporte + '_ResumenGeneracionSubContratos.fr3') then
            showmessage('El archivo de reporte ResumenGeneracionSubContratos.fr3 no existe, notifique al administrador del sistema');
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmEstimaProveedor.frmBarra2btnDeleteClick(Sender: TObject);
Var
    lContinua : Boolean ;
begin
   lContinua := False ;
   If Estimaciones.RecordCount > 0 Then
   Begin
      If (Estimaciones.FieldValues['lStatus'] = 'Pendiente') And (Estimaciones.FieldValues['sIdUsuario'] = global_usuario) Then
         lContinua := True
      Else
         If (Estimaciones.FieldValues['lStatus'] = 'Pendiente') And (global_grupo = 'INTEL-CODE') Then
            lContinua := True ;

      If lContinua Then
         If EstimacionxPartida.RecordCount = 0 Then
         Begin
             If MessageDlg('Desea eliminar el generador seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             Begin
                  try
                       // Actualizo Kardex del Sistema ....
                       connection.zCommand.Active := False ;
                       connection.zCommand.SQL.Clear ;
                       connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                                    'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                       connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                       connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                       connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                       connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                       connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                       connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                       connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                       connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                       connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                       connection.zcommand.Params.ParamByName('Descripcion').Value := 'SubContrato' + Estimaciones.FieldValues ['sSubContrato'] + '. Eliminación de la Estimacion No. [' +  Estimaciones.FieldValues ['iNumeroEstimacion']  + ']' ;
                       connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                       connection.zcommand.Params.ParamByName('Origen').Value := 'Generadores' ;
                       connection.zcommand.ExecSQL () ;

                       connection.zCommand.Active := False ;
                       connection.zCommand.SQL.Clear ;
                       connection.zCommand.SQL.Add ( 'Delete from estimacionxpartidaprov where sContrato = :Contrato And sSubContrato = :SubContrato And iNumeroEstimacion = :Estimacion') ;
                       connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                       connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('SubContrato').value := Estimaciones.FieldValues ['sSubContrato'] ;
                       connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('Estimacion').value := Estimaciones.FieldValues ['iNumeroEstimacion'];
                       connection.zCommand.ExecSQL ;



                       connection.zCommand.Active := False ;
                       connection.zCommand.SQL.Clear ;
                       connection.zCommand.SQL.Add ( 'Delete from estimacionxproveedor where sContrato = :Contrato And ' +
                                          'sSubContrato = :SubContrato And iNumeroEstimacion = :Estimacion') ;
                       connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                       connection.zCommand.Params.ParamByName('SubContrato').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('SubContrato').value := Estimaciones.FieldValues ['sSubContrato'] ;
                       connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString ;
                       connection.zCommand.Params.ParamByName('Estimacion').value := Estimaciones.FieldValues ['iNumeroEstimacion'];
                       connection.zCommand.ExecSQL ;
                       Estimaciones.Active := False ;
                       Estimaciones.Open ;

                       Grid_Generadores.SetFocus
                  Except
                      on e : exception do begin
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones de SubContratistas', 'Al eliminar registro', 0);
                      end;
                  End
             End
         End
         Else
             MessageDlg('Existen partidas registradas en el generador seleccionado, elimine las partidas para poder eliminar el generador.', mtInformation, [mbOk], 0)
      Else
          MessageDlg('El Generador ha sido aplicado o fue creado por un usuario distinto por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);
   End
end;

procedure TfrmEstimaProveedor.frmBarra2btnRefreshClick(Sender: TObject);
var
    QryOrdenes : tzReadOnlyQuery ;
begin
    QryOrdenes := tzReadOnlyQuery.Create(Self) ;
    QryOrdenes.Connection := connection.zConnection ;
    QryOrdenes.Active := False ;
    QryOrdenes.SQL.Clear ;
    QryOrdenes.SQL.Add('Select sNumeroOrden from ordenesdetrabajo where sContrato = :Contrato order by sNumeroOrden') ;
    QryOrdenes.Params.ParamByName('Contrato').DataType := ftString ;
    QryOrdenes.Params.ParamByName('Contrato').Value := Global_Contrato ;
    QryOrdenes.Open ;
    tsNumeroOrden.Items.Clear ;
    If QryOrdenes.RecordCount > 0 Then
    Begin
        While NOT QryOrdenes.Eof do
        Begin
            tsNumeroOrden.Items.Add(QryOrdenes.FieldValues['sNumeroOrden'] ) ;
            QryOrdenes.Next ;
        End ;
        tsNumeroOrden.ItemIndex := 0
    End ;
    QryOrdenes.Destroy ;

    QryPartidasEfectivas.Active := False ;
    QryPartidasEfectivas.Open ;
    Estimaciones.Active := False ;
    Estimaciones.Open ;

    Connection.EstimacionPeriodo.Active := False ;
    connection.EstimacionPeriodo.Open ;
end;

procedure TfrmEstimaProveedor.frmBarra2btnCancelClick(Sender: TObject);
begin
  tdFechaInicial.Enabled := False ;
  tdFechaFinal.Enabled := False ;
  tiNumeroEstimacion.ReadOnly := True ;
  tmComentariosGenerador.ReadOnly := True ;
  OpcButton1 := '' ;
  frmBarra2.btnCancelClick(Sender);
  BotonPermiso2.permisosBotones(frmBarra2);
end;

procedure TfrmEstimaProveedor.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure TfrmEstimaProveedor.ComentariosAdicionalesClick(
  Sender: TObject);
begin
    global_partida := tsNumeroActividad.Text ;
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show ;
end;

procedure TfrmEstimaProveedor.Copy1Click(Sender: TObject);
begin
UtGrid.CopyRowsToClip;
end;

procedure TfrmEstimaProveedor.tsNumeroActividadChange(Sender: TObject);
begin
    global_partida := tsNumeroActividad.Text ;
    tsNumeroActividad.Hint := QryPartidasEfectivas.FieldValues['mDescripcion'] ;
    imgNotas.Visible := False ;
end;

procedure TfrmEstimaProveedor.imgNotasDblClick(Sender: TObject);
begin
    ComentariosAdicionales.Click
end;

procedure TfrmEstimaProveedor.tsPrefijoEnter(Sender: TObject);
begin
    tsPrefijo.Color := global_color_entrada
end;

procedure TfrmEstimaProveedor.tsPrefijoExit(Sender: TObject);
begin
    tsPrefijo.Color := global_color_salida ;
    If tsPrefijo.ReadOnly = False Then
      If (tsIsometrico.Text <> '') Or (tsPrefijo.Text <> '')  then
      Begin
         If lExisteIsometrico( tsNumeroOrden.Text , tsNumeroGenerador.Text , tsIsometrico.Text, tsPrefijo.Text ) then
         Begin
              mnHistorial.Click ;
              MessageDlg( 'El Isometrico: ' + tsIsometrico.Text  + ' ' + tsPrefijo.Text + ' se encuentra registrado en otro generador de la misma orden de trabajo.' , mtInformation, [mbOk], 0) ;
              tsIsometrico.SetFocus
         End
         Else
             gbIsometricos.Visible := False
      End

end;

procedure TfrmEstimaProveedor.tsPrefijoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroActividad.SetFocus
end;

procedure TfrmEstimaProveedor.mnHistorialClick(Sender: TObject);
begin
      If (tsIsometrico.Text <> '') Or (tsPrefijo.Text <> '')  then
      Begin
          gbIsometricos.Visible := True ;
          QryPrefijos.Active := False ;
          QryPrefijos.Params.ParamByName('Contrato').DataType := ftString ;
          QryPrefijos.Params.ParamByName('Contrato').Value := global_contrato ;
          QryPrefijos.Params.ParamByName('Isometrico').DataType := ftString ;
          QryPrefijos.Params.ParamByName('Isometrico').Value := tsIsometrico.Text ;
          QryPrefijos.Params.ParamByName('Ordenado').DataType := ftString ;
          QryPrefijos.Params.ParamByName('Ordenado').Value := 'sPrefijo' ;
          QryPrefijos.Open ;
          gbIsometricos.Caption := 'Historial de Isometrico [' + tsIsometrico.Text + ']'
      End ;
end;

procedure TfrmEstimaProveedor.Paste1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmEstimaProveedor.tsSubContratoExit(Sender: TObject);
begin
    tsSubContrato.Color := global_color_entrada ;
    Estimaciones.Active := False ;
    Estimaciones.Params.ParamByName('contrato').DataType := ftString ;
    Estimaciones.Params.ParamByName('contrato').Value := global_contrato ;
    Estimaciones.Params.ParamByName('SubContrato').DataType := ftString ;
    Estimaciones.Params.ParamByName('SubContrato').Value := tsSubContrato.KeyValue ;
    Estimaciones.Open ;
end;

procedure TfrmEstimaProveedor.tsSubContratoEnter(Sender: TObject);
begin
    tsSubContrato.Color := global_color_entrada
end;

procedure TfrmEstimaProveedor.tsSubContratoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden.SetFocus
end;

procedure TfrmEstimaProveedor.tsNumeroGeneradorEnter(Sender: TObject);
begin
    tsNumeroGenerador.Color := global_color_entrada 
end;

procedure TfrmEstimaProveedor.tsNumeroGeneradorExit(Sender: TObject);
begin
    tsNumeroGenerador.Color := global_color_salida
end;

procedure TfrmEstimaProveedor.tsNumeroGeneradorKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIsometrico.SetFocus 
end;

procedure TfrmEstimaProveedor.tsNumeroOrdenChange(Sender: TObject);
begin
    QryPartidasEfectivas.Active := False ;
    QryPartidasEfectivas.SQL.Clear ;
    If chkContrato.Checked Then
        QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxanexo ' +
                                     'Where sContrato = :Contrato And sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden')
    Else
        QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxorden ' +
                                     'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden and sTipoActividad = "Actividad" Order By iItemOrden') ;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
    QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
    If NOT chkContrato.Checked Then
    Begin
        QryPartidasEfectivas.Params.ParamByName('orden').DataType := ftString ;
        QryPartidasEfectivas.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
    End ;
    QryPartidasEfectivas.Open ;
end;

procedure TfrmEstimaProveedor.chkContratoClick(Sender: TObject);
begin
      QryPartidasEfectivas.Active := False ;
      QryPartidasEfectivas.SQL.Clear ;
      If chkContrato.Checked Then
          QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxanexo ' +
                                       'Where sContrato = :Contrato And sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden')
      Else
          QryPartidasEfectivas.SQL.Add('SELECT DISTINCT sWbs, sNumeroActividad, mDescripcion FROM actividadesxorden ' +
                                       'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden = :Orden and sTipoActividad = "Actividad" Order By iItemOrden') ;
      QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString ;
      QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato ;
      QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString ;
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio ;
      If NOT chkContrato.Checked Then
      Begin
          QryPartidasEfectivas.Params.ParamByName('orden').DataType := ftString ;
          QryPartidasEfectivas.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
      End ;
      QryPartidasEfectivas.Open ;
end;

End.
