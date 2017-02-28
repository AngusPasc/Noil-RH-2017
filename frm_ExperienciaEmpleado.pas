unit frm_ExperienciaEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, unittbotonespermisos, unitactivapop, UFunctionsGHH,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid,  NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu,cxInplaceContainer, cxDBTL, cxTLData,
  cxContainer, cxEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBEdit, cxImageComboBox, {dxSkinscxPCPainter, }
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, {dxSkinsdxBarPainter,}
  dxBar, dxRibbonRadialMenu, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FormAutoScaler, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, frxClass, frxDBSet, ExtDlgs, jpeg,
  rxToolEdit, RXDBCtrl;

type
  TfrmExperienciaEmpleado = class(TForm)
  Panel2: TPanel;
  Splitter1: TSplitter;
  frmBarra1: TfrmBarra;
    grid_bancos: TcxGrid;
    BView_areas: TcxGridDBTableView;
    BView_areassIdArea1: TcxGridDBColumn;
    BView_areassDescripcion1: TcxGridDBColumn;
    grid_bancosLevel1: TcxGridLevel;
    dxbrmngr1: TdxBarManager;
    dxEditar: TdxBarButton;
    dxGuardar: TdxBarButton;
    dxCancelar: TdxBarButton;
    dxEliminar: TdxBarButton;
    dxSalir: TdxBarButton;
    dxRefrescar: TdxBarButton;
    dxImprimir: TdxBarButton;
    dxInsertar: TdxBarButton;
    dxRibbonRadialMenu1: TdxRibbonRadialMenu;
    fsc_CatalogoAreas: TFormAutoScaler;
    Label1: TLabel;
    tsEmpresa: TDBEdit;
    tsPuesto: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dsExperiencia: TDataSource;
    zqExperiencia: TZQuery;
    dbResidencias: TfrxDBDataset;
    frxResidencias: TfrxReport;
    BView_areasColumn2: TcxGridDBColumn;
    Label2: TLabel;
    Label6: TLabel;
    mDescripcion: TDBMemo;
    tdInicio: TDBDateEdit;
    tdTermino: TDBDateEdit;
    zqExperienciasPeriodo: TStringField;
    zqExperienciasEmpresa: TStringField;
    zqExperienciasPuesto: TStringField;
    zqExperienciamDescripcion: TMemoField;
    zqExperienciadFechaInicio: TDateField;
    zqExperienciadFechaFinal: TDateField;
    zqExperienciaidPersonal: TIntegerField;
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure blbfldQCatalogodeAreasdescripcionGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure blbfldQCatalogodeAreascomentariosGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure grid_ComunidadesDblClick(Sender: TObject);
    procedure BView_areasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure closeFormulario;
    procedure tsEmpresaEnter(Sender: TObject);
    procedure tsEmpresaExit(Sender: TObject);
    procedure tsEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure tsPuestoEnter(Sender: TObject);
    procedure tsPuestoExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tdInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdInicioEnter(Sender: TObject);
    procedure tdInicioExit(Sender: TObject);
    procedure tdTerminoEnter(Sender: TObject);
    procedure tdTerminoExit(Sender: TObject);
    procedure tdTerminoKeyPress(Sender: TObject; var Key: Char);
    procedure zqExperienciaCalcFields(DataSet: TDataSet);
  //Fin de procedures
private
  { Private declarations }
  sMenuP: String;
public
  { Public declarations }
end;

var
  frmEmpleados, frmExperienciaEmpleado: TfrmExperienciaEmpleado;
  sOpcion : string;
implementation

uses frm_connection, frmEmpleados, utilerias, frm_requisiondepersonal,
  UnitExcepciones, UnitValidaTexto;

{$R *.dfm}

procedure TfrmExperienciaEmpleado.blbfldQCatalogodeAreascomentariosGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TfrmExperienciaEmpleado.blbfldQCatalogodeAreasdescripcionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TfrmExperienciaEmpleado.BView_areasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se de coble click, entonces debe mostrar el departamento en el combo de empleados
  closeFormulario;
end;

procedure TfrmExperienciaEmpleado.FormShow(Sender: TObject);
begin
   sMenuP:=stMenu;
   OpcButton := '' ;
   zqExperiencia.Active := False ;
   zqExperiencia.ParamByName('Id').AsInteger := frm_Empleados.zQEmpleados.FieldByName('idPersonal').AsInteger;
   zqExperiencia.Open ;
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnAddClick(Sender: TObject);
begin

  tsEmpresa.SetFocus ;
  //BotonPermiso.permisosBotones(frmBarra1);
  grid_bancos.Enabled:=False;
  zqExperiencia.Append ;
  zqExperiencia.FieldValues['mDescripcion']  := '-';
  zqExperiencia.FieldValues['sEmpresa']      := '';
  zqExperiencia.FieldValues['sPuesto']       := '';
  zqExperiencia.FieldValues['dFechaInicio']  := date;
  zqExperiencia.FieldValues['dFechaFinal']   := date;
  frmBarra1.btnAddClick(Sender);
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  grid_bancos.Enabled:=True;
  zqExperiencia.Cancel ;
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqExperiencia.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqExperiencia.Delete ;
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opcion Experiencia Empleados', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  grid_bancos.Enabled:=False;
  if zqExperiencia.recordcount > 0 then
  begin
    try
      //activapop(frmBancos, popupprincipal);
      zqExperiencia.Edit ;
    except
      on e : exception do
      begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opcion Experiencia Empleados', 'Al editar registro', 0);
       frmBarra1.btnCancel.Click ;
      end;
    end ;
    tsEmpresa.SetFocus;
  end;
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close  ;
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnPostClick(Sender: TObject);
Var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');cadenas.Add(mDescripcion.Text);
  if not validaTexto(nombres, cadenas, 'Empresa', tsEmpresa.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  Try
      zqExperiencia.FieldValues['idPersonal'] := frm_Empleados.zQEmpleados.FieldByName('idPersonal').AsInteger;
      zqExperiencia.post ;
      closeFormulario;
      grid_bancos.Enabled:=True;
      frmBarra1.btnPostClick(Sender);
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Activos Expeciencia Empleados', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;

end;

procedure TfrmExperienciaEmpleado.frmBarra1btnPrinterClick(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_experiencia.fr3') then
 begin
       showmessage('El archivo de reporte '+global_Mireporte+'_experiencia.fr3 no existe, notifique al administrador del sistema');
       exit;
 end;

 try
    If zqExperiencia.RecordCount > 0 Then
      frxResidencias.PreviewOptions.Modal := False ;
      frxResidencias.PreviewOptions.ShowCaptions := False ;
      frxResidencias.Previewoptions.ZoomMode := zmPageWidth ;
      frxResidencias.LoadFromFile (global_files +global_Mireporte+ '_experiencia.fr3') ;
      frxResidencias.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  except
  end;
end;

procedure TfrmExperienciaEmpleado.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zqExperiencia.Refresh;
end;

procedure TfrmExperienciaEmpleado.grid_ComunidadesDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExperienciaEmpleado.tdInicioEnter(Sender: TObject);
begin
    tdInicio.Color := global_color_entradaERP;
end;

procedure TfrmExperienciaEmpleado.tdInicioExit(Sender: TObject);
begin
    tdInicio.Color := global_color_salidaERP;
end;

procedure TfrmExperienciaEmpleado.tdInicioKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       tdTermino.SetFocus
end;

procedure TfrmExperienciaEmpleado.tdTerminoEnter(Sender: TObject);
begin
    tdTermino.Color := global_color_entradaERP;
end;

procedure TfrmExperienciaEmpleado.tdTerminoExit(Sender: TObject);
begin
    tdTermino.Color := global_color_salidaERP;
end;

procedure TfrmExperienciaEmpleado.tdTerminoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       tsPuesto.SetFocus;
end;

procedure TfrmExperienciaEmpleado.tsPuestoEnter(Sender: TObject);
begin
   tsPuesto.Color := global_color_entradaERP;
end;

procedure TfrmExperienciaEmpleado.tsPuestoExit(Sender: TObject);
begin
   tsPuesto.Color := global_color_salidaERP;
end;

procedure TfrmExperienciaEmpleado.tsPuestoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then mDescripcion.SetFocus;
end;

procedure TfrmExperienciaEmpleado.zqExperienciaCalcFields(DataSet: TDataSet);
begin
    if zqExperiencia.RecordCount > 0 then
    begin
        zqExperiencia.FieldByName('sPeriodo').AsString := 'De '+ IntToStr(yearof(zqExperiencia.FieldByName('dFechaInicio').AsDateTime))+ ' - '+
        IntToStr(yearof(zqExperiencia.FieldByName('dFechaFinal').AsDateTime));
    end;
end;

procedure TfrmExperienciaEmpleado.tsEmpresaEnter(Sender: TObject);
begin
    tsEmpresa.Color := global_color_entradaERP;
end;

procedure TfrmExperienciaEmpleado.tsEmpresaExit(Sender: TObject);
begin
    tsEmpresa.Color := global_color_salidaERP;
end;

procedure TfrmExperienciaEmpleado.tsEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tdInicio.SetFocus;
end;

procedure TfrmExperienciaEmpleado.closeFormulario;
begin
//    try
//      if Assigned(frm_Empleados)then
//      begin
//          frm_Empleados.zQBancos.Refresh;
//          frm_Empleados.tdBanco.KeyValue := zqExperiencia.FieldByName('sIdEmpleado').AsString;//          Close;//      end;//    Except
//    end;
end;

end.
