unit frm_Reprogramacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, ExtDlgs, jpeg,unitValidacion,
  Newpanel, ZDataset, ZAbstractRODataset, ZAbstractDataset, masUtilerias, DateUtils,
  rxCurrEdit, rxToolEdit, unittbotonespermisos, udbgrid, unitexcepciones,
  Frm_PopUpReprogramacion, UnitValidaTexto, unitactivapop, DBDateTimePicker,
  sMaskEdit, sCustomComboEdit, sCurrEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;    

type
  TfrmReprogramacion = class(TForm)
    ds_convenios: TDataSource;
    frmBarra2: TfrmBarra;
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
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    mnImpAnexos: TMenuItem;
    mnImpProgramas: TMenuItem;
    N5: TMenuItem;
    OpenPicture: TOpenPictureDialog;
    SaveImage: TSaveDialog;
    Panel: tNewGroupBox;
    Label11: TLabel;
    btnGrabar: TBitBtn;
    btnEliminar: TBitBtn;
    btnExaminar: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    btnSaveImage: TBitBtn;
    btnNext: TBitBtn;
    btnPrevious: TBitBtn;
    tiRegistro: TCurrencyEdit;
    Convenios: TZQuery;
    QryImgConvenios: TZReadOnlyQuery;
    Soporte: TMenuItem;
    ConveniossContrato: TStringField;
    ConveniossIdConvenio: TStringField;
    ConveniossDescripcion: TStringField;
    ConveniossAnexo: TStringField;
    ConveniossIdTipoConvenio: TStringField;
    ConvenioslAvanceFisico: TStringField;
    ConveniosdFecha: TDateField;
    ConveniosdFechaInicio: TDateField;
    ConveniosdFechaFinal: TDateField;
    ConveniosdMontoMN: TFloatField;
    ConveniosdMontoDLL: TFloatField;
    ConveniosmComentarios: TMemoField;
    TiposdeConvenio: TZReadOnlyQuery;
    ds_tiposdeconvenio: TDataSource;
    mnEstimaciones: TMenuItem;
    tProforma: tNewGroupBox;
    RxDBGrid1: TRxDBGrid;
    ProgramacionErogaciones: TZReadOnlyQuery;
    dsProgramacionErogaciones: TDataSource;
    ProgramacionErogacionesdIdFecha: TDateField;
    ProgramacionErogacionesdMontoMN: TFloatField;
    ProgramacionErogacionesdMontoDLL: TFloatField;
    ProgramacionErogacionesiAnno: TIntegerField;
    ProgramacionErogacionessMes: TStringField;
    Panel1: TPanel;
    Label12: TLabel;
    tiMes: TComboBox;
    tiAnno: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    tdImporteMN: TRxCalcEdit;
    Label15: TLabel;
    tdImporteDLL: TRxCalcEdit;
    btnInsertar: TBitBtn;
    mnProforma: TMenuItem;
    mnImpProforma: TMenuItem;
    mnEntregables: TMenuItem;
    CantidadAnexo01: TMenuItem;
    ZFechaMin: TZQuery;
    ZFechaMinsNumeroReporte: TStringField;
    ZFechaMindIdFecha: TDateField;
    ZFechaMinsIdConvenio: TStringField;
    ConveniosreporteMin: TStringField;
    ZFechaMax: TZQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    ConveniosreporteMax: TStringField;
    ConveniosdDuracion: TFloatField;
    pnl1: TPanel;
    lb11: TLabel;
    lb12: TLabel;
    lbConvenio: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    lb6: TLabel;
    lb7: TLabel;
    lb8: TLabel;
    lb9: TLabel;
    lb10: TLabel;
    tDuracion: TsCalcEdit;
    dbAnexo: TDBEdit;
    tsIdTipoConvenio: TDBLookupComboBox;
    tsDescripcion: TDBEdit;
    tmComentarios: TDBMemo;
    tsIdConvenio: TDBEdit;
    tdMontoMN: TDBEdit;
    tdMontoDLL: TDBEdit;
    tlAvanceFisico: TDBComboBox;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    tdFecha: TDBDateTimePicker;
    grid_Convenios: TcxGrid;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure tsIdConvenioEnter(Sender: TObject);
    procedure tsIdConvenioExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaEnter(Sender: TObject);
    procedure tdFechaExit(Sender: TObject);
    procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure ImportarPartidas1Click(Sender: TObject);
    procedure ImportarProgramadeTrabajo1Click(Sender: TObject);
    procedure tsIdTipoConvenioEnter(Sender: TObject);
    procedure tsIdTipoConvenioExit(Sender: TObject);
    procedure tsIdTipoConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure tdMontoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoMNEnter(Sender: TObject);
    procedure tdMontoMNExit(Sender: TObject);
    procedure tdMontoMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoDLLEnter(Sender: TObject);
    procedure tdMontoDLLExit(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure tlAvanceFisicoEnter(Sender: TObject);
    procedure tlAvanceFisicoExit(Sender: TObject);
    procedure tlAvanceFisicoKeyPress(Sender: TObject; var Key: Char);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnExaminarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnSaveImageClick(Sender: TObject);
    function Tamanyo (Archivo : String): Real ;
    procedure bImagenClick(Sender: TObject);
    procedure QryImgConveniosAfterScroll(DataSet: TDataSet);
    procedure ConveniosAfterScroll(DataSet: TDataSet);
    procedure SoporteClick(Sender: TObject);
    procedure mnEstimacionesClick(Sender: TObject);
    procedure tiMesEnter(Sender: TObject);
    procedure tiMesExit(Sender: TObject);
    procedure tiMesKeyPress(Sender: TObject; var Key: Char);
    procedure tiAnnoEnter(Sender: TObject);
    procedure tiAnnoExit(Sender: TObject);
    procedure tiAnnoKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteMNEnter(Sender: TObject);
    procedure tdImporteMNExit(Sender: TObject);
    procedure tdImporteMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteDLLEnter(Sender: TObject);
    procedure tdImporteDLLExit(Sender: TObject);
    procedure tdImporteDLLKeyPress(Sender: TObject; var Key: Char);
    procedure mnProformaClick(Sender: TObject);
    procedure ProgramacionErogacionesCalcFields(DataSet: TDataSet);
    procedure btnInsertarClick(Sender: TObject);
    procedure mnImpProformaClick(Sender: TObject);
    procedure mnEntregablesClick(Sender: TObject);
    procedure CantidadAnexo01Click(Sender: TObject);
    procedure dbgrdGrid_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgrdGrid_1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgrdGrid_1TitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure dbAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure dbAnexoEnter(Sender: TObject);
    procedure dbAnexoExit(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure tdFechaInicioChange(Sender: TObject);
    procedure tdImporteMNChange(Sender: TObject);
    procedure tdImporteDLLChange(Sender: TObject);
    procedure ConveniosdMontoMNSetText(Sender: TField; const Text: string);
    procedure ConveniosdMontoDLLSetText(Sender: TField; const Text: string);
    procedure tdMontoDLLChange(Sender: TObject);
    procedure tdMontoMNChange(Sender: TObject);
    procedure tDuracionEnter(Sender: TObject);
    procedure tDuracionExit(Sender: TObject);
    procedure tDuracionKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReprogramacion: TfrmReprogramacion;
  sDescripcion    : String ;
  txtAux          : String ;
  lNuevo          : Boolean ;
  sPaquete        : String ;
  sIsometrico     : String ;
  sIsometricoReferencia : String ;
  mComentarios    : WideString ;
  OpcButton1      : String ;
  sOpcion         : String ;
  sArchivo        : String ;
  sparametro : string;
  registro   : byte ;
  utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmReprogramacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

function IsDate(ADate: string): Boolean;
 var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmReprogramacion.FormShow(Sender: TObject);
begin
    //UtGrid:=TicdbGrid.create(grid_convenios);
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConvenios', PopupPrincipal);
    ZFechaMin.Active := False ;
    ZFechaMin.Params.ParamByName('Contrato').DataType := ftString ;
    ZFechaMin.Params.ParamByName('Contrato').Value := global_Contrato ;
    ZFechaMin.Open ;

    ZFechaMax.Active := False ;
    ZFechaMax.Params.ParamByName('Contrato').DataType := ftString ;
    ZFechaMax.Params.ParamByName('Contrato').Value := global_Contrato ;
    ZFechaMax.Open ;

    Convenios.Active := False ;
    Convenios.Params.ParamByName('Contrato').DataType := ftString ;
    Convenios.Params.ParamByName('Contrato').Value := global_Contrato ;
    Convenios.Open ;

    TiposdeConvenio.Active := False ;
    TiposdeConvenio.Open ;
    Grid_Convenios.SetFocus;
    BotonPermiso.permisosBotones(frmBarra2);
    frmBarra2.btnPrinter.Enabled := False;
end;

procedure TfrmReprogramacion.frmBarra2btnAddClick(Sender: TObject);
begin
//  activapop(frmReprogramacion, popupprincipal);
  frmBarra2.btnAddClick(Sender);
  try
      Convenios.Append ;
  except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al agregar registro', 0);
      end;
  end;
  tdFecha.Date := Date ;
  tDuracion.Value := 0;
  Convenios.FieldValues['dMontoMN'] := 0 ;
  Convenios.FieldValues['dMontoDll'] := 0 ;
  Convenios.FieldValues['dFecha'] := Date ;
  Convenios.FieldValues['dFechaInicio'] := Date ;
  Convenios.FieldValues['dFechaFinal'] := Date ;
  Convenios.FieldValues['sAnexo'] := '' ;
  Convenios.FieldValues['sDescripcion'] := '' ;
  Convenios.FieldValues['lAvanceFisico'] := 'No' ;
  Convenios.FieldValues['mComentarios'] := '*' ;

  tsIdConvenio.SetFocus;
  BotonPermiso.permisosBotones(frmBarra2);
  frmBarra2.btnPrinter.Enabled := False;
  Grid_Convenios.Enabled := False;
end;

procedure TfrmReprogramacion.tsIdConvenioEnter(Sender: TObject);
begin
    tsIdConvenio.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tsIdConvenioExit(Sender: TObject);
begin
    tsIdConvenio.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tsIdConvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
        dbanexo.SetFocus;
end;

procedure TfrmReprogramacion.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFecha.SetFocus 
end;

procedure TfrmReprogramacion.tdFechaEnter(Sender: TObject);
begin
    tdFecha.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tdFechaExit(Sender: TObject);
begin
    tdFecha.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin

  If Key = #13 Then
   tsIdTipoConvenio.SetFocus
end;

procedure TfrmReprogramacion.tdFechaInicioChange(Sender: TObject);
begin
//  if tdFechaFinal.Date<tdFechaInicio.Date then

end;

procedure TfrmReprogramacion.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salidaERP;
    tDuracion.Value := (tdfechaFinal.Date - tdFechaInicio.Date) + 1;
end;


procedure TfrmReprogramacion.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin

  If Key = #13 Then
   tdFechaFinal.SetFocus 
end;

procedure TfrmReprogramacion.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmReprogramacion.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFInal.Color := global_color_EntradaERP
end;

procedure TfrmReprogramacion.tdFechaFinalExit(Sender: TObject);
begin
     tdFechaFInal.Color := global_color_salidaERP;
     tDuracion.Value := (tdfechaFinal.Date - tdFechaInicio.Date) + 1;
end;

procedure TfrmReprogramacion.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tDuracion.SetFocus
end;

procedure TfrmReprogramacion.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.frmBarra2btnEditClick(Sender: TObject);
begin
//  activapop(frmReprogramacion, popupprincipal);
  frmBarra2.btnEditClick(Sender);
  try
      Convenios.Edit ;
  except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al editar registro', 0);
      end;
  end;
  tsIdConvenio.SetFocus;
  BotonPermiso.permisosBotones(frmBarra2);
  frmBarra2.btnPrinter.Enabled := False;
  Grid_Convenios.Enabled := False;
end;

procedure TfrmReprogramacion.frmBarra2btnPostClick(Sender: TObject);
var
cadena : string;
nombres, cadenas: TStringList;
begin
   {Validacion de campos}
   nombres:=TStringList.Create;cadenas:=TStringList.Create;
   nombres.Add('Descripción');nombres.Add('Tipo');nombres.Add('Monto MN');nombres.Add('Monto DLL');nombres.Add('Comentarios');
   cadenas.Add(tsDescripcion.Text);cadenas.Add(tsIdTipoConvenio.Text);cadenas.Add(tdMontoMN.Text);cadenas.Add(tdMontoDLL.Text);cadenas.Add(tmComentarios.Text);
   if not validaTexto(nombres, cadenas, 'Reprogramacion ID', 'Reprogramacion') then
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

   {Continua insercion de datos}
  try
      Convenios.FieldValues['sContrato'] := global_Contrato ;
      Convenios.FieldValues['dFecha'] := tdfecha.date ;
      Convenios.FieldValues['dFechaInicio'] := tdfechaInicio.date ;
      Convenios.FieldValues['dFechaFinal'] := tdfechaFinal.date ;
      Convenios.FieldValues['dDuracion'] := tDuracion.Value;
      if Convenios.State = dsEdit then
         Kardex('Reprogramaciones','Edita Registro', Convenios.FieldValues['sIdConvenio'], 'Convenio', '', '', '' )
      else
         Kardex('Reprogramaciones','Crea  Registro', Convenios.FieldValues['sIdConvenio'], 'Convenio', '', '', '' );
      Convenios.Post ;

  except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al actualizar registro', 0);
      end;
  End ;
 // desactivapop(popupprincipal);
  frmBarra2.btnPostClick(Sender);
  BotonPermiso.permisosBotones(frmBarra2);
  frmBarra2.btnPrinter.Enabled := False;
  Grid_Convenios.Enabled := True;
end;

procedure TfrmReprogramacion.frmBarra2btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  frmBarra2.btnCancelClick(Sender);
  Convenios.Cancel ;
  Grid_Convenios.Enabled := True;
  Grid_Convenios.SetFocus;
  BotonPermiso.permisosBotones(frmBarra2);
  frmBarra2.btnPrinter.Enabled := False;
end;

procedure TfrmReprogramacion.frmBarra2btnDeleteClick(Sender: TObject);
var Reportes, Anexos, Frentes, registros, OldConvenio  :String;
begin
  If Convenios.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         OldConvenio := Convenios.FieldValues['sIdConvenio'];
         registros   := AntesEliminarConvenio(Convenios.FieldValues['sIdConvenio']);
         if registros <> '' then
         begin
              MessageDlg('No se puede Eliminar el Convenio '+Convenios.FieldValues['sIdConvenio']+' existen datos en: '+#13+registros, mtInformation, [mbOk], 0);
              exit;
         end
         else
             Convenios.Delete ;
             Kardex('Reprogramaciones','Borra Registro', OldConvenio, 'Convenio', '', '', '' )
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al eliminar registro', 0);
        end;
      end
    end

end;

procedure TfrmReprogramacion.ImportarPartidas1Click(Sender: TObject);
Var
    sConvenio : String ;
    lContinua : Boolean ;
    Recursos : array[1..4] of String;
    indice  : integer;
    PopUp: TFrmPopUpReprogramacion;
begin

try

    Recursos[1] := 'cuentas_contrato';
    Recursos[2] := 'movimientos_contrato';
    Recursos[3] := 'personal_contrato';
    Recursos[4] := 'equipos_contrato';

    Application.CreateForm(TFrmPopUpReprogramacion, FrmPopUpReprogramacion);
    FrmPopUpReprogramacion.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpReprogramacion.Width)/2);
    FrmPopUpReprogramacion.Top := trunc((screen.Height)/2)-trunc((FrmPopUpReprogramacion.Height)/2);
    if FrmPopUpReprogramacion.ShowModal = mrCancel then
    begin
      FrmPopUpReprogramacion.Free;
      exit;
    end
    else begin
      if FrmPopUpReprogramacion.comboConvenios.Text = 'Inicial' then
         sConvenio := ''
      else
         sConvenio := FrmPopUpReprogramacion.comboConvenios.Text;
      FrmPopUpReprogramacion.Free;
    end;

    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select sContrato from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
    connection.qryBusca.Open ;
    If connection.qryBusca.RecordCount > 0 Then
        If MessageDlg('Existen partidas dentro del convenio seleccionado, si se continua con la importación solo se realizara por aquellas que no existan en el convenio seleccionado, ¿desea continuar?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              lContinua := True
        Else
              lContinua := False
    Else
        lContinua := True ;

    If lContinua Then
        If MessageDlg('Desea importar el catalogo de conceptos principal al convenio/acta seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
            // Primero el Anexo C
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select * from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
            Connection.QryBusca.Open ;

            //Aqui vamos a evitar que el usurio cometa el error de eliminar los datos del convenio inicial. >>iv@n
            if (trim(sConvenio) = '') and (Convenios.FieldValues['sIdConvenio'] = '') then
            begin
                messageDLG('No se puede reprogramar en un convenio inicial o plazo de ejecucion de la obra. Cambie de convenio en la configuracion.', mtInformation, [mbOk], 0);
                exit;
            end;

            If Connection.QryBusca.RecordCount > 0 Then
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'DELETE FROM actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio') ;
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
                connection.zCommand.ExecSQL () ;
                // Empiezo exportando los anexos ...
                Connection.QryBusca.First ;
                While NOT Connection.QryBusca.Eof Do
                Begin
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add (funcsql(Connection.QryBusca , 'actividadesxanexo')) ;
                    for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                        If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                            connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                        Else
                            connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                    end ;
                    connection.zCommand.ExecSQL ;
                    Connection.QryBusca.Next
                End ;

              {Copiamos los recursos de la PT..}
              for indice := 1 to 4 do
              begin
                    // Primero el Anexo C
                  Connection.QryBusca.Active := False ;
                  Connection.QryBusca.SQL.Clear ;
                  Connection.QryBusca.SQL.Add('Select * from '+Recursos[indice]+' Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
                  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                  Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                  Connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
                  Connection.QryBusca.Open ;
                  If Connection.QryBusca.RecordCount > 0 Then
                  Begin
                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zCommand.SQL.Add ( 'DELETE FROM '+Recursos[indice]+' Where sContrato = :contrato And sIdConvenio = :Convenio') ;
                      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                      connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
                      connection.zCommand.ExecSQL () ;
                      // Empiezo exportando los anexos ...
                      Connection.QryBusca.First ;
                      While NOT Connection.QryBusca.Eof Do
                      Begin
                          connection.zCommand.Active := False ;
                          connection.zCommand.SQL.Clear ;
                          connection.zCommand.SQL.Add (funcsql(Connection.QryBusca , recursos[indice])) ;
                          for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                          begin
                              sparametro := 'param' + trim(inttostr(registro + 1)) ;
                              connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                              If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                                  connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                              Else
                                connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                          end ;
                          connection.zCommand.ExecSQL ;
                          Connection.QryBusca.Next
                      End ;
                  End;
              end;
            End
        End ;

    If lContinua Then
        If MessageDlg('Desea importar el programa de ejecucion y de erogaciones al convenio/acta seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin

        // Ahora el Anexo DT y DE
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select * from anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'DELETE FROM distribuciondeanexo Where sContrato = :contrato And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            connection.zCommand.ExecSQL () ;

            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'DELETE FROM anexosmensuales Where sContrato = :contrato And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            connection.zCommand.ExecSQL () ;

            // Empiezo exportando los anexos ...
            Connection.QryBusca.First ;
            While NOT Connection.QryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( funcsql(Connection.QryBusca , 'anexosmensuales')) ;
                for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                    If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                        connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                    Else
                        connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                end ;
                connection.zCommand.ExecSQL ;
                Connection.QryBusca.Next
            End ;
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'update anexosmensuales SET DT = 0, DEmn = 0, DEdll = 0 Where sContrato = :contrato And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            connection.zCommand.ExecSQL () ;

        End ;
        MessageDlg('Proceso terminado con exito.',  mtInformation, [mbOk], 0);
    End
except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al Importar Partidas', 0);
    end;
end;
end;

procedure TfrmReprogramacion.ImportarProgramadeTrabajo1Click(
  Sender: TObject);
Var
    sConvenio : String ;
    lContinua : Boolean ;
begin
  try
    //sConvenio := UPPERCASE(InputBox('Inteligent','Convenio del cual desea integrar el programa?', '')) ;
    Application.CreateForm(TFrmPopUpReprogramacion, FrmPopUpReprogramacion);
    FrmPopUpReprogramacion.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpReprogramacion.Width)/2);
    FrmPopUpReprogramacion.Top := trunc((screen.Height)/2)-trunc((FrmPopUpReprogramacion.Height)/2);
    if FrmPopUpReprogramacion.ShowModal = mrCancel then
    begin
        FrmPopUpReprogramacion.Free;
        exit;
    end
    else
    begin
        if FrmPopUpReprogramacion.comboConvenios.Text = 'Inicial' then
           sConvenio := ''
        else
           sConvenio := FrmPopUpReprogramacion.comboConvenios.Text;
        FrmPopUpReprogramacion.Free;
    end;

    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sContrato from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
    Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Convenio').Value    := Convenios.FieldValues['sIdConvenio'] ;
    Connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 Then
        If MessageDlg('Existen partidas dentro del convenio seleccionado, si se continua con la importación se eliminaran todas las partidas del convenio seleccionado, ¿desea continuar?',
             mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             lContinua := True
        Else
             lContinua := False
    Else
        lContinua := True ;

    If lContinua Then
    Begin
        Cursor := crHourGlass ;
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select * from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Convenio').Value    := sConvenio ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zcommand.SQL.Add ( 'DELETE FROM actividadesxorden Where sContrato = :contrato And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            connection.zcommand.ExecSQL ;
            // Empiezo exportando los anexos ...
            While NOT Connection.QryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( funcsql(Connection.QryBusca , 'actividadesxorden')) ;
                for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                    If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                        connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                    Else
                       connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                end ;
                connection.zCommand.ExecSQL ;
                Connection.QryBusca.Next
            End ;
        End ;
        Cursor := crDefault ;
        MessageDlg('Proceso terminado con exito.',  mtInformation, [mbOk], 0);
    End
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al Importar Programa de Trabajo', 0);
      end;
  end;
end;

procedure TfrmReprogramacion.Insertar1Click(Sender: TObject);
begin
  frmBarra2.btnAdd.Click
end;

procedure TfrmReprogramacion.tsIdTipoConvenioEnter(Sender: TObject);
begin
    tsIdTipoConvenio.Color := global_color_entradaERP;
end;

procedure TfrmReprogramacion.tsIdTipoConvenioExit(Sender: TObject);
begin
    tsIdTipoConvenio.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tsIdTipoConvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdmontomn.SetFocus;
end;

procedure TfrmReprogramacion.frmBarra2btnRefreshClick(Sender: TObject);
begin
    TiposdeConvenio.Active := False ;
    TiposdeConvenio.Open ;
    Convenios.refresh
end;

procedure TfrmReprogramacion.dbgrdGrid_1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmReprogramacion.dbgrdGrid_1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmReprogramacion.dbgrdGrid_1TitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmReprogramacion.tdMontoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdMontoDLL,key) then
      key:=#0;
  If Key = #13 Then
      tlAvanceFisico.SetFocus
end;

procedure TfrmReprogramacion.tdMontoMNChange(Sender: TObject);
begin
  tdbeditchangef(tdMontoMN,'Monto MN');
end;

procedure TfrmReprogramacion.tdMontoMNEnter(Sender: TObject);
begin
    tdMontoMN.Color := global_color_entradaERP;
end;

procedure TfrmReprogramacion.tdMontoMNExit(Sender: TObject);
begin
    tdMontoMN.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tdMontoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdMontoMN,key) then
      key:=#0;
  If Key = #13 Then
      tdMontoDLL.SetFocus
end;

procedure TfrmReprogramacion.tDuracionEnter(Sender: TObject);
begin
    tDuracion.Color := global_color_entradaERP;
end;

procedure TfrmReprogramacion.tDuracionExit(Sender: TObject);
begin
    tDuracion.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tDuracionKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      tmComentarios.SetFocus;
end;

procedure TfrmReprogramacion.tdMontoDLLChange(Sender: TObject);
begin
  tdbeditchangef(tdMontoDLL,'Monto DLL');
end;

procedure TfrmReprogramacion.tdMontoDLLEnter(Sender: TObject);
begin
    tdMontoDLL.Color := global_color_entradaERP;
end;

procedure TfrmReprogramacion.tdMontoDLLExit(Sender: TObject);
begin
    tdMontoDLL.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure TfrmReprogramacion.tlAvanceFisicoEnter(Sender: TObject);
begin
    tlAvanceFisico.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tlAvanceFisicoExit(Sender: TObject);
begin
    tlAvanceFisico.Color := global_color_salidaERP;
end;

procedure TfrmReprogramacion.tlAvanceFisicoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicio.SetFocus
end;

procedure TfrmReprogramacion.btnPreviousClick(Sender: TObject);
begin
    btnNext.Enabled := True ;
    If NOT QryImgConvenios.Bof Then
        QryImgConvenios.Prior ;
    If QryImgConvenios.Bof Then
        btnPrevious.Enabled := False ;


end;

procedure TfrmReprogramacion.btnNextClick(Sender: TObject);
begin
    btnPrevious.Enabled := True ;
    If NOT QryImgConvenios.eof Then
        QryImgConvenios.Next ;
    If QryImgConvenios.Eof Then
        btnNext.Enabled := False ;
end;

procedure TfrmReprogramacion.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
begin
  If Convenios.RecordCount > 0 Then
     If frmBarra2.btnCancel.Enabled = False Then
     Begin
          sOpcion := 'New' ;
          bImagen.Picture.Bitmap := Nil ;
          btnGrabar.Enabled     := True ;
          btnCancelar.Enabled   := True ;
          btnSaveImage.Enabled  := False ;
          btnExaminar.Enabled   := False ;
          btnEditar.Enabled     := False ;
          tsDescripcion.ReadOnly := False ;
          OpenPicture.Title := 'Inserta Imagen';
          sArchivo := '' ;
          If OpenPicture.Execute then
          begin
              try
                  sArchivo := OpenPicture.FileName ;
                  size := Tamanyo (sArchivo) ;
                  If size <= 100 Then
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName)
                  Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
              except
                  bImagen.Picture.LoadFromFile('') ;
              end
          end
     end
end;

procedure TfrmReprogramacion.btnEditarClick(Sender: TObject);
begin
    If frmBarra2.btnCancel.Enabled = False Then
    Begin
          sOpcion := 'Edit' ;
          sArchivo := '' ;
          btnGrabar.Enabled := True ;
          btnCancelar.Enabled := True ;
          btnExaminar.Enabled := False ;
          btnEditar.Enabled := False ;
          btnSaveImage.Enabled := False ;
          btnEliminar.Enabled := False ;
    End
end;

procedure TfrmReprogramacion.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
Begin
  If Convenios.RecordCount > 0 Then
      If sOpcion = 'New' Then
      Begin
          If sArchivo <> '' Then
          Begin
              iItem := 1 ;
              If QryImgConvenios.RecordCount > 0 Then
              Begin
                  QryImgConvenios.Last ;
                  iItem := QryImgConvenios.FieldValues['iImagen'] + 1;
              End ;
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Insert Into convenios_adjuntos (sContrato, sIdConvenio, iImagen, bImagen) ' +
                                            'Values (:Contrato, :Convenios, :Item, :Imagen)') ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zCommand.Params.ParamByName('Convenios').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Convenios').Value := Convenios.FieldValues['sIdConvenio'] ;
              connection.zCommand.Params.ParamByName('Item').DataType := ftInteger ;
              connection.zCommand.Params.ParamByName('Item').Value := iItem ;
              connection.zCommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
              connection.zcommand.ExecSQL
          End
      End
      Else
      Begin
          If sArchivo <> '' Then
          Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zCommand.SQL.Add ( 'Update convenios_Adjuntos SET bImagen = :Imagen ' +
                                                    'Where sContrato = :contrato And sIdConvenio = :Convenio And iImagen = :Item') ;
                  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                  connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
                  connection.zCommand.Params.ParamByName('Item').DataType := ftInteger ;
                  connection.zCommand.Params.ParamByName('Item').Value := QryImgConvenios.FieldValues['iImagen'] ;
                  connection.zCommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                  connection.zcommand.ExecSQL
          End
      End ;
      QryImgConvenios.refresh ;
      If QryImgConvenios.RecordCount > 1 Then
          btnNext.Enabled := True ;
      btnGrabar.Enabled := False ;
      btnCancelar.Enabled := False ;
      btnSaveImage.Enabled := True ;
      btnExaminar.Enabled := True ;
      btnEditar.Enabled := True ;
      btnEliminar.Enabled := True ;
end;

procedure TfrmReprogramacion.btnCancelarClick(Sender: TObject);
begin
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    If QryImgConvenios.State <> dsInactive Then
        If QryImgConvenios.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True ;
         End
         Else
         Begin
             btnSaveImage.Enabled := False ;
             btnEliminar.Enabled := False ;
         End
end;

procedure TfrmReprogramacion.btnEliminarClick(Sender: TObject);
begin
  If Convenios.RecordCount > 0 Then
     If frmBarra2.btnCancel.Enabled = False Then
          If QryImgConvenios.RecordCount > 0 Then
          Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Delete From convenios_adjuntos Where sContrato = :Contrato And sIdConvenio = :Convenio And iImagen = :Item') ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
              connection.zCommand.Params.ParamByName('Item').DataType := ftInteger ;
              connection.zCommand.Params.ParamByName('Item').Value := QryImgConvenios.FieldValues['iImagen'] ;
              connection.zcommand.ExecSQL ;
              bImagen.Picture.Bitmap := Nil ;
              bImagen.Picture.LoadFromFile('') ;
              QryImgConvenios.Active := False ;
              QryImgConvenios.Open ;
              If QryImgConvenios.RecordCount > 0 Then
                   btnEliminar.Enabled := True
              Else
                   btnEliminar.Enabled := False ;
          End
end;

procedure TfrmReprogramacion.btnSaveImageClick(Sender: TObject);
begin
    If Convenios.RecordCount > 0 Then
      If QryImgConvenios.RecordCount > 0 Then
      Begin
          SaveImage.Title := 'Respaldar Imagen';
          SaveImage.FileName := Convenios.FieldValues['sIdConvenio'] + '-' + QryImgConvenios.FieldByName('iImagen').AsString ;
          If SaveImage.Execute Then
              bImagen.Picture.SaveToFile(SaveImage.FileName)
      End
end;

Function TfrmReprogramacion.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure TfrmReprogramacion.bImagenClick(Sender: TObject);
Var
   size: Real ;
begin
    If btnExaminar.Enabled = False Then
    Begin
        OpenPicture.Title := 'Inserta Imagen';
        sArchivo := '' ;
        If OpenPicture.Execute then
        begin
            try
                sArchivo := OpenPicture.FileName ;
                size := Tamanyo (sArchivo) ;
                If size <= 100 Then
                Begin
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName) 
                End
                Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
             except
                bImagen.Picture.LoadFromFile('') ;
             end
        end
    End
end;

procedure TfrmReprogramacion.QryImgConveniosAfterScroll(DataSet: TDataSet);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    tiRegistro.Value := QryImgConvenios.RecNo ;
    bImagen.Picture.LoadFromFile('') ;
    If QryImgConvenios.RecordCount > 0 then
    Begin
        BlobField := QryImgConvenios.FieldByName('bImagen') ;
        BS := QryImgConvenios.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
            try
                Pic:=TJpegImage.Create;
                try
                    Pic.LoadFromStream(bS);
                    bImagen.Picture.Graphic := Pic;
                finally
                    Pic.Free;
                end;
            finally
                bS.Free
            End
        End
    End
end;

procedure TfrmReprogramacion.Refresh1Click(Sender: TObject);
begin
  frmBarra2.btnRefresh.Click
end;

procedure TfrmReprogramacion.Registrar1Click(Sender: TObject);
begin
  frmBarra2.btnPost.Click
end;

procedure TfrmReprogramacion.ConveniosAfterScroll(DataSet: TDataSet);
begin
    tiRegistro.Value := 0 ;
    btnNext.Enabled := False ;
    btnPrevious.Enabled := False ;
    If Convenios.RecordCount > 0 Then
    Begin
        ProgramacionErogaciones.Active := False ;
        ProgramacionErogaciones.Params.ParamByName('contrato').DataType := ftString ;
        ProgramacionErogaciones.Params.ParamByName('contrato').Value := global_contrato ;
        ProgramacionErogaciones.Params.ParamByName('convenio').DataType := ftString ;
        ProgramacionErogaciones.Params.ParamByName('convenio').Value := convenios.FieldValues['sIdConvenio'] ;
        ProgramacionErogaciones.Open ; 
        If ProgramacionErogaciones.RecordCount > 0 Then
        Begin
            tiMes.ItemIndex := MonthOf (ProgramacionErogaciones.FieldValues['dIdFecha'] ) - 1 ;
            tiAnno.ItemIndex := YearOf (ProgramacionErogaciones.FieldValues['dIdFecha'] ) - 2000 ;
        End
        Else
        Begin
            tiMes.ItemIndex := MonthOf (Date) - 1 ;
            tiAnno.ItemIndex := YearOf (Date) - 2000 ;
        End ;
        QryImgConvenios.Active := False ;
        QryImgConvenios.SQL.Clear ;
        QryImgConvenios.SQL.Add('Select iImagen, bImagen From convenios_adjuntos ' +
                                'Where sContrato = :Contrato And sIdConvenio = :Convenio Order By iImagen') ;
        QryImgConvenios.Params.ParamByName('Contrato').DataType := ftString ;
        QryImgConvenios.Params.ParamByName('Contrato').Value := global_contrato ;
        QryImgConvenios.Params.ParamByName('Convenio').DataType := ftString ;
        QryImgConvenios.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
        QryImgConvenios.Open ;
        If QryImgConvenios.RecordCount > 1 Then
            btnNext.Enabled := True
        Else
            bImagen.Picture := Nil ;
        try
           tduracion.Value  := Convenios.FieldValues['dDuracion'];
        Except
        end;
        tiRegistro.Value := 1 ;
    End ;
end;

procedure TfrmReprogramacion.ConveniosdMontoDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmReprogramacion.ConveniosdMontoMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmReprogramacion.Copy1Click(Sender: TObject);
begin
//UtGrid.AddRowsFromClip;
end;

procedure TfrmReprogramacion.Cut1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmReprogramacion.dbAnexoEnter(Sender: TObject);
begin
dbanexo.color:=global_color_entradaERP;
end;

procedure TfrmReprogramacion.dbAnexoExit(Sender: TObject);
begin
dbanexo.color:=global_color_salidaPU;
end;

procedure TfrmReprogramacion.dbAnexoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
    tsdescripcion.SetFocus;
end;

procedure TfrmReprogramacion.Editar1Click(Sender: TObject);
begin
  frmBarra2.btnEdit.Click
end;

procedure TfrmReprogramacion.Eliminar1Click(Sender: TObject);
begin
  frmBarra2.btnDelete.Click
end;

procedure TfrmReprogramacion.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmReprogramacion.SoporteClick(Sender: TObject);
begin
    Panel.Visible := Not Panel.Visible 
end;

procedure TfrmReprogramacion.mnEstimacionesClick(Sender: TObject);
var
    dFechaInicio, dFechaFinal  : tDate ;
    iEstimacion : Byte ;
    sEstimacion : String ;
begin
  try
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zCommand.SQL.Add('Insert Into estimacionperiodo (sContrato, iNumeroEstimacion, sIdTipoEstimacion, dFechaInicio, dFechaFinal, sMoneda, dFechaInicioContrato, dFechaFinalContrato, dMontoContratoMN, dMontoContratoDLL) ' +
                                'values (:contrato, :estimacion, :tipo, :inicio, :termino, :moneda, :IniContrato, :TerContrato, :MontoMN, :MontoDLL)') ;

    dFechaInicio := convenios.FieldValues['dFechaInicio'] ;
    iEstimacion := 0 ;
    While dFechaInicio <= convenios.FieldValues['dFechaFinal'] Do
    Begin
          dFechaFinal := strToDate(sfnFechaFinal(MonthOf(dFechaInicio), YearOf(dFechaInicio))) ;
          If dFechaFinal >  convenios.FieldValues['dFechaFinal'] Then
              dFechaFinal := convenios.FieldValues['dFechaFinal'] ;

          iEstimacion := iEstimacion + 1 ;
          If iEstimacion >= 10 Then
              sEstimacion := IntToStr(iEstimacion)
          Else
              sEstimacion := '0' + IntToStr(iEstimacion) ;

          // Primero checo si existe la estimacion ...
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('select sContrato from estimacionperiodo Where sContrato = :contrato and iNumeroEstimacion = :Estimacion') ;
          connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
          connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
          connection.QryBusca.Params.ParamByName('estimacion').DataType := ftString ;
          connection.QryBusca.Params.ParamByName('estimacion').Value := sEstimacion ;
          connection.QryBusca.Open ;
          If connection.QryBusca.RecordCount = 0 Then
          Begin
              // Si no Existe la inserto ...
              connection.zCommand.Active := False ;
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
              connection.zCommand.Params.ParamByName('estimacion').DataType := ftString ;
              connection.zCommand.Params.ParamByName('estimacion').Value := sEstimacion ;
              connection.zCommand.Params.ParamByName('tipo').DataType := ftString ;
              connection.zCommand.Params.ParamByName('tipo').Value := 'N' ;
              connection.zCommand.Params.ParamByName('inicio').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('inicio').Value := dFechaInicio ;
              connection.zCommand.Params.ParamByName('termino').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('termino').Value := dFechaFinal ;
              connection.zCommand.Params.ParamByName('moneda').DataType := ftString ;
              connection.zCommand.Params.ParamByName('moneda').Value := 'Moneda Nacional' ;
              connection.zCommand.Params.ParamByName('IniContrato').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('IniContrato').Value := convenios.FieldValues ['dFechaInicio'] ;
              connection.zCommand.Params.ParamByName('TerContrato').DataType := ftDate ;
              connection.zCommand.Params.ParamByName('TerContrato').Value := convenios.FieldValues ['dFechaFinal'] ;
              connection.zCommand.Params.ParamByName('MontoMN').DataType := ftFloat ;
              connection.zCommand.Params.ParamByName('MontoMN').Value := convenios.FieldValues ['dMontoMN'] ;
              connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftFloat ;
              connection.zCommand.Params.ParamByName('MontoDLL').Value := convenios.FieldValues ['dMontoDLL'] ;
              connection.zCommand.ExecSQL ;
          End ;
          dFechaInicio := dFechaFinal + 1 ;
    End ;
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
    connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;

  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al Crear Estimaciones en el menu', 0);
    end;
  end;
end;

procedure TfrmReprogramacion.tiMesEnter(Sender: TObject);
begin
    tiMes.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tiMesExit(Sender: TObject);
begin
    tiMes.Color := global_color_salidaERP
end;

procedure TfrmReprogramacion.tiMesKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tiAnno.SetFocus 
end;

procedure TfrmReprogramacion.tiAnnoEnter(Sender: TObject);
begin
    tiAnno.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tiAnnoExit(Sender: TObject);
begin
    tiAnno.Color := global_color_salidaERP
end;

procedure TfrmReprogramacion.tiAnnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdImporteMN.SetFocus 
end;

procedure TfrmReprogramacion.tdImporteMNChange(Sender: TObject);
begin
 TRxCalcEditChangef(tdImporteMN, 'Importe MN');
end;

procedure TfrmReprogramacion.tdImporteMNEnter(Sender: TObject);
begin
    tdImporteMN.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tdImporteMNExit(Sender: TObject);
begin
    tdImporteMN.Color := global_color_salidaERP
end;

procedure TfrmReprogramacion.tdImporteMNKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTRxCalcEdit(tdImporteMN, Key) then
key:=#0;

    If Key = #13 then
        tdImporteDLL.SetFocus 
end;

procedure TfrmReprogramacion.tdImporteDLLChange(Sender: TObject);
begin
TRxCalcEditChangef(tdImporteDLL, 'Importe DLL');
end;

procedure TfrmReprogramacion.tdImporteDLLEnter(Sender: TObject);
begin
    tdImporteDLL.Color := global_color_entradaERP
end;

procedure TfrmReprogramacion.tdImporteDLLExit(Sender: TObject);
begin
    tdImporteDLL.Color := global_color_salidaERP
end;

procedure TfrmReprogramacion.tdImporteDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTRxCalcEdit(tdImporteDLL,key) then
   key:=#0;

    If Key = #13 Then
        btnInsertar.SetFocus      
end;

procedure TfrmReprogramacion.mnProformaClick(Sender: TObject);
begin
    tProforma.Visible := NOt tProforma.Visible 
end;

procedure TfrmReprogramacion.ProgramacionErogacionesCalcFields(
  DataSet: TDataSet);
begin
  try
    ProgramacionErogacionessMes.Text := esMes(MonthOf(ProgramacionErogaciones.FieldValues['dIdFecha'])) ;
    ProgramacionErogacionesiAnno.Value := YearOf(ProgramacionErogaciones.FieldValues['dIdFecha']) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al cambiar de registro de proforma', 0);
    end;
  end;
end;

procedure TfrmReprogramacion.btnInsertarClick(Sender: TObject);
var
    sFecha : String ;
begin
  try
    sFecha := sfnFechaFinal (tiMes.ItemIndex + 1, StrToInt(tiAnno.Text)) ;
    If (tdImporteMN.Value = 0) And (tdImporteDLL.Value = 0) then
    begin
        // Se elimina el mes si existe
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('delete from erogacionesmensuales Where sContrato = :contrato and sIdConvenio = :Convenio and dIdFecha = :Fecha') ;
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
        connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
        connection.zCommand.Params.ParamByName('convenio').Value := convenios.FieldValues['sIdConvenio'] ;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
        connection.zCommand.Params.ParamByName('fecha').Value := sFecha ;
        connection.zCommand.ExecSQL ;
    end
    Else
    Begin
        If tiMes.ItemIndex < 11 then
            tiMes.ItemIndex := tiMes.ItemIndex + 1
        Else
        Begin
            tiMes.ItemIndex := 0 ;
            tiAnno.ItemIndex := tiAnno.ItemIndex + 1
        End ;
        // primero actualizo, si devuelve un valor recordafect entonces actualizo, si no realizo el insert ...
        connection.qryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.qryBusca.SQL.Add('select sContrato from erogacionesmensuales Where sContrato = :contrato and sIdConvenio = :Convenio and dIdFecha = :Fecha') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('convenio').Value := convenios.FieldValues['sIdConvenio'] ;
        connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate ;
        connection.qryBusca.Params.ParamByName('fecha').Value := sFecha ;
        connection.QryBusca.Open ;
        If connection.QryBusca.RecordCount > 0 Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add('update erogacionesmensuales SET dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
                                        'Where sContrato = :contrato and sIdConvenio = :Convenio and dIdFecha = :Fecha') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('convenio').Value := convenios.FieldValues['sIdConvenio'] ;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('fecha').Value := sFecha ;
            connection.zCommand.Params.ParamByName('montomn').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('montomn').Value := tdImporteMN.Value ;
            connection.zCommand.Params.ParamByName('montodll').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('montodll').Value := tdImporteDLL.Value ;
            connection.zCommand.ExecSQL ;
        End
        Else
        begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add('insert into erogacionesmensuales values (:contrato, :Convenio, :Fecha, :MontoMN, :MontoDLL)') ;
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
            connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('convenio').Value := convenios.FieldValues['sIdConvenio'] ;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('fecha').Value := sFecha ;
            connection.zCommand.Params.ParamByName('montomn').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('montomn').Value := tdImporteMN.Value ;
            connection.zCommand.Params.ParamByName('montodll').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('montodll').Value := tdImporteDLL.Value ;
            connection.zCommand.ExecSQL ;
        end
    End ;
    ProgramacionErogaciones.Active := False ;
    ProgramacionErogaciones.Open ;
    tdImporteMN.Value := 0 ;
    tdImporteDLL.Value := 0 ;
    tdImporteMN.SetFocus ;
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al Insertar Proforma', 0);
    end;
  end;
end;


procedure TfrmReprogramacion.mnImpProformaClick(Sender: TObject);
Var
    sConvenio : String ;
    lContinua : Boolean ;
begin
  try
    //sConvenio := UPPERCASE(InputBox('Inteligent','Convenio del cual desea integrar el programa de erogaciones?', '')) ;
    Application.CreateForm(TFrmPopUpReprogramacion, FrmPopUpReprogramacion);
    FrmPopUpReprogramacion.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpReprogramacion.Width)/2);
    FrmPopUpReprogramacion.Top := trunc((screen.Height)/2)-trunc((FrmPopUpReprogramacion.Height)/2);
    if FrmPopUpReprogramacion.ShowModal = mrCancel then
    begin
        FrmPopUpReprogramacion.Free;
        exit;
    end
    else
    begin
        if FrmPopUpReprogramacion.comboConvenios.Text = 'Inicial' then
           sConvenio := ''
        else
           sConvenio := FrmPopUpReprogramacion.comboConvenios.Text;
        FrmPopUpReprogramacion.Free;
    end;
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sContrato from erogacionesmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.QryBusca.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
    Connection.QryBusca.Open ;
    If Connection.QryBusca.RecordCount > 0 Then
        If MessageDlg('Existen registros dentro del convenio seleccionado, si se continua con la importación se eliminaran todos los registros del convenio seleccionado, ¿desea continuar?',
             mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             lContinua := True
        Else
             lContinua := False
    Else
        lContinua := True ;

    If lContinua Then
    Begin
        Cursor := crHourGlass ;
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select * from erogacionesmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zcommand.SQL.Add ( 'DELETE FROM erogacionesmensuales Where sContrato = :contrato And sIdConvenio = :Convenio') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
            connection.zcommand.ExecSQL ;
            // Empiezo exportando los anexos ...
            While NOT Connection.QryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( funcsql(Connection.QryBusca , 'erogacionesmensuales')) ;
                for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                    If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                        connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                    Else
                       connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                end ;
                connection.zCommand.ExecSQL ;
                Connection.QryBusca.Next
            End
        End ;
        Cursor := crDefault ;
        ProgramacionErogaciones.Active := False ;
        ProgramacionErogaciones.Open ;
        MessageDlg('Proceso terminado con exito.',  mtInformation, [mbOk], 0);
    End
  except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al Importar Proforma', 0);
    end;
  end;
end;

procedure TfrmReprogramacion.mnEntregablesClick(Sender: TObject);
Var
    sConvenio : String ;
    lContinua : Boolean ;
begin
  try
    //sConvenio := UPPERCASE(InputBox('Inteligent','Convenio del cual desea integrar las partidas?', '')) ;
    Application.CreateForm(TFrmPopUpReprogramacion, FrmPopUpReprogramacion);
    FrmPopUpReprogramacion.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpReprogramacion.Width)/2);
    FrmPopUpReprogramacion.Top := trunc((screen.Height)/2)-trunc((FrmPopUpReprogramacion.Height)/2);

    if FrmPopUpReprogramacion.ShowModal = mrCancel then
    begin
        FrmPopUpReprogramacion.Free;
        exit;
    end
    else
    begin
        if FrmPopUpReprogramacion.comboConvenios.Text = 'Inicial' then
           sConvenio := ''
        else
           sConvenio := FrmPopUpReprogramacion.comboConvenios.Text;
        FrmPopUpReprogramacion.Free;
    end;

    connection.qryBusca.Active := False ;
    connection.qryBusca.SQL.Clear ;
    connection.qryBusca.SQL.Add('Select sContrato from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete"') ;
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    connection.qryBusca.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
    connection.qryBusca.Open ;
    If connection.qryBusca.RecordCount > 0 Then
        If MessageDlg('Existen partidas dentro del convenio seleccionado, si se continua con la importación solo se realizara por aquellas que no existan en el convenio seleccionado, ¿desea continuar?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              lContinua := True
        Else
              lContinua := False
    Else
        lContinua := True ;

    If lContinua Then
        If MessageDlg('Desea importar el catalogo de conceptos principal al convenio/acta seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
            // Primero el Anexo C
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select * from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete"') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'DELETE FROM actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete"') ;
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
                connection.zCommand.ExecSQL () ;
                // Empiezo exportando los anexos ...
                Connection.QryBusca.First ;
                While NOT Connection.QryBusca.Eof Do
                Begin
                    connection.zCommand.Active := False ;
                    connection.zCommand.SQL.Clear ;
                    connection.zCommand.SQL.Add (funcsql(Connection.QryBusca , 'actividadesxanexo')) ;
                    for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                    begin
                        sparametro := 'param' + trim(inttostr(registro + 1)) ;
                        connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                        If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                            connection.zCommand.Params.parambyname(sparametro).value := Convenios.FieldValues['sIdConvenio']
                        Else
                            connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                    end ;
                    connection.zCommand.ExecSQL ;
                    Connection.QryBusca.Next
                End
            End
        End ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reprogramaciones del Contrato', 'Al hacer click en Entregables del Contrato', 0);
      end;
  end;
end;

procedure TfrmReprogramacion.Can1Click(Sender: TObject);
begin
  frmBarra2.btnCancel.Click
end;

procedure TfrmReprogramacion.CantidadAnexo01Click(Sender: TObject);
begin
       connection.zCommand.Active := False ;
       connection.zCommand.SQL.Clear ;
       connection.zCommand.SQL.Add ( 'UPDATE actividadesxanexo set dCantidadAnexo=0 Where sContrato = :contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad"') ;
       connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
       connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
       connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
       connection.zCommand.Params.ParamByName('Convenio').Value := Convenios.FieldValues['sIdConvenio'] ;
       connection.zCommand.ExecSQL () ;
end;

End.
