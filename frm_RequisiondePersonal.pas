unit frm_RequisiondePersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, UnitValidaTexto, NxPageControl, NxColumns, NxDBColumns,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection, DB, masUtilerias,
  NxScrollControl, ZAbstractDataset, ZDataset, AdvGlowButton, frm_Connection,
  ZAbstractRODataset, global, JvDBDotNetControls, frm_ControlEmpleados2, Mask,
  StdCtrls, DBCtrls, frm_Barra, unitTBotonesPermisos, UnitExcepciones, Menus,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, jpeg,
  JvDBDatePickerEdit, Grids, DBGrids, JvExControls, JvDBLookup, JvExStdCtrls,
  JvDBCombobox, frxClass, frxDBSet, frxExportPDF, JvCombobox, rxToolEdit,
  RXDBCtrl, JvLinkLabel, ExtDlgs, Utilerias, UnitExcel, ComObj, ComCtrls,
  DateUtils, UDbGrid, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxGrid, FormAutoScaler, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinscxPCPainter, cxGridLevel, cxGridDBTableView,
  dxLayoutContainer, dxLayoutControl, dxBarBuiltInMenu, cxPC,
  dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxDBLookupComboBox, cxCalendar,
  dxLayoutControlAdapters, cxButtons;

  function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;
type
  TfrmRequisiciondePersonal = class(TForm)
  ds_RequisiciondePersonal: TDataSource;
  qryRequisicionPersonal: TZQuery;
  PopupImprimir: TPopupMenu;
  ImprimirMovtosGuardias: TMenuItem;
  frxReporte: TfrxReport;
  qryReporteRequisicionPersonal: TZQuery;
  PopupPrincipal: TPopupMenu;
  Insertar1: TMenuItem;
  Editar1: TMenuItem;
  N1: TMenuItem;
  Registrar1: TMenuItem;
  Can1: TMenuItem;
  N2: TMenuItem;
  Eliminar1: TMenuItem;
  Refresh1: TMenuItem;
  N5: TMenuItem;
  Copy1: TMenuItem;
  Paste1: TMenuItem;
  N4: TMenuItem;
  Salir1: TMenuItem;
  dszQAreas: TDataSource;
  zQAreas: TZReadOnlyQuery;
  frxDBConfiguracion: TfrxDBDataset;
  zqConfiguracion: TZQuery;
  zqConfiguracionsNombre: TStringField;
  zqConfiguracionsNombreCorto: TStringField;
  zqConfiguracionsRfc: TStringField;
  zqConfiguracionsDireccion1: TStringField;
  zqConfiguracionsDireccion2: TStringField;
  zqConfiguracionsDireccion3: TStringField;
  zqConfiguracionsSlogan: TStringField;
  zqConfiguracionsPiePagina: TStringField;
  zqConfiguracionbImagen: TBlobField;
  zqConfiguracionsTelefono: TStringField;
  zqConfiguracionsFax: TStringField;
  zqConfiguracionsEmail: TStringField;
  zqConfiguracionsWeb: TStringField;
  zqConfiguracionsRepresentante: TStringField;
  zqConfiguracionsFirmante2: TStringField;
  zqConfiguracionsFirmante3: TStringField;
  zqConfiguracionsCiudad: TStringField;
  zqConfiguracionbLogoFondo: TBlobField;
  zqConfiguracionbImagenCliente: TBlobField;
  frxdsRequisicionPersonal: TfrxDBDataset;
  frxDBDataset1: TfrxDBDataset;
  dsTurnos: TDataSource;
  qryRequisicionPersonalIdRequisicionPersonal: TIntegerField;
  qryRequisicionPersonalsIdArea: TStringField;
  qryRequisicionPersonalsNombreSolicitante: TStringField;
  qryRequisicionPersonalsPuestoSolicita: TStringField;
  qryRequisicionPersonaliCantidadPersonas: TIntegerField;
  qryRequisicionPersonalsDescripcionActividades: TStringField;
  qryRequisicionPersonalsRequerimientos: TStringField;
  qryRequisicionPersonalsNombreJefe: TStringField;
  qryRequisicionPersonalsUbicacionCentroTrabajo: TStringField;
  qryRequisicionPersonalsVobo: TStringField;
  qryRequisicionPersonalsAutoriza: TStringField;
  qryRequisicionPersonalsIdTurno: TStringField;
  qryRequisicionPersonalsStatus: TStringField;
  qryRequisicionPersonaliId_Puesto: TIntegerField;
  qryRequisicionPersonaldFecha: TDateField;
  qryTurnos: TZReadOnlyQuery;
  dbTurno: TfrxDBDataset;
  strngfldTurnossContrato: TStringField;
  strngfldTurnossIdTurno: TStringField;
  strngfldTurnossDescripcion: TStringField;
  strngfldTurnossOrigenTierra: TStringField;
  strngfldTurnossPrefijo: TStringField;
  qryTurnosiJornadas: TIntegerField;
  ZQTipoPersonal: TZQuery;
  ZQTipoPersonaliIdTipo: TIntegerField;
  ZQTipoPersonalsDescripcion: TStringField;
  dsZQTipoPersonal: TDataSource;
  qryRequisicionPersonalsTipoPersonal: TIntegerField;
  frmBarra4: TfrmBarra;
  cxGridViewRepository1: TcxGridViewRepository;
  BView_Puestos: TcxGridDBBandedTableView;
  BView_PuestossPuesto1: TcxGridDBBandedColumn;
  BView_PuestossDescripcion1: TcxGridDBBandedColumn;
  BView_PuestosDescripcion1: TcxGridDBBandedColumn;
  zq_Puestos: TZQuery;
  ds_Puestos: TDataSource;
    fsc_ReqPerson: TFormAutoScaler;
    zq_Puestosidcargo: TIntegerField;
    zq_PuestosIdTipoNomina: TIntegerField;
    zq_PuestosIdOrganizacion: TIntegerField;
    zq_Puestoscodigocargo: TStringField;
    zq_Puestostitulocargo: TStringField;
    zq_Puestosnivel: TIntegerField;
    zq_PuestosIdSalario: TIntegerField;
    zq_PuestosJornada: TIntegerField;
    zq_PuestosCobraFestivos: TStringField;
    zq_Puestosiddocumentos: TStringField;
    zq_PuestosGrupo: TStringField;
    zq_PuestosIdRangoSalarios: TIntegerField;
    zq_PuestosActivo: TStringField;
    zq_PuestosDescripcion: TStringField;
    zQAreasiddepartamento: TIntegerField;
    zQAreasIdOrganizacion: TIntegerField;
    zQAreascodigodepartamento: TStringField;
    zQAreasEtiqueta: TStringField;
    zQAreastitulodepartamento: TStringField;
    zQAreasdescripcion: TBlobField;
    zQAreascomentarios: TBlobField;
    zQAreasidarbol: TIntegerField;
    zQAreasidpadre: TIntegerField;
    zQAreasnivel: TSmallintField;
    zQAreasherencia: TStringField;
    zQAreasactivo: TStringField;
    qryRequisicionPersonaliIdDepartamento: TIntegerField;
    qryReporteRequisicionPersonalIdRequisicionPersonal: TIntegerField;
    qryReporteRequisicionPersonalsIdArea: TStringField;
    qryReporteRequisicionPersonalsNombreSolicitante: TStringField;
    qryReporteRequisicionPersonalsPuestoSolicita: TStringField;
    qryReporteRequisicionPersonaliCantidadPersonas: TIntegerField;
    qryReporteRequisicionPersonalsDescripcionActividades: TStringField;
    qryReporteRequisicionPersonalsRequerimientos: TStringField;
    qryReporteRequisicionPersonalsNombreJefe: TStringField;
    qryReporteRequisicionPersonalsUbicacionCentroTrabajo: TStringField;
    qryReporteRequisicionPersonalsVobo: TStringField;
    qryReporteRequisicionPersonalsAutoriza: TStringField;
    qryReporteRequisicionPersonalsIdTurno: TStringField;
    qryReporteRequisicionPersonalsStatus: TStringField;
    qryReporteRequisicionPersonaliId_Puesto: TIntegerField;
    qryReporteRequisicionPersonalsTipoPersonal: TIntegerField;
    qryReporteRequisicionPersonaldFecha: TDateField;
    qryReporteRequisicionPersonaliIdDepartamento: TIntegerField;
    qryReporteRequisicionPersonaliddepartamento: TIntegerField;
    qryReporteRequisicionPersonalIdOrganizacion: TIntegerField;
    qryReporteRequisicionPersonalcodigodepartamento: TStringField;
    qryReporteRequisicionPersonalEtiqueta: TStringField;
    qryReporteRequisicionPersonaltitulodepartamento: TStringField;
    qryReporteRequisicionPersonaldescripcion: TBlobField;
    qryReporteRequisicionPersonalcomentarios: TBlobField;
    qryReporteRequisicionPersonalidarbol: TIntegerField;
    qryReporteRequisicionPersonalidpadre: TIntegerField;
    qryReporteRequisicionPersonalnivel: TSmallintField;
    qryReporteRequisicionPersonalherencia: TStringField;
    qryReporteRequisicionPersonalactivo: TStringField;
    qryReporteRequisicionPersonalsPuesto: TStringField;
    grid_RequisiciondePersonal: TcxGrid;
    cxgrdbtblvw_RequisiciondePersonalDBTableView1: TcxGridDBTableView;
    cxgrdbclmn_RequisiciondePersonalDBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmn_RequisiciondePersonalDBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmn_RequisiciondePersonalDBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmn_RequisiciondePersonalDBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmn_RequisiciondePersonalDBTableView1Column5: TcxGridDBColumn;
    cxgrdlvl_RequisiciondePersonalLevel1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbsTipoPersonal: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    tsIdDepartamento: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dbPuesto: TcxDBExtLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    tsCatEstatus: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    tsCantidadPersonas: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    tsDescripcionActividades: TcxDBMemo;
    dxLayoutControl1Item7: TdxLayoutItem;
    tsRequerimientos: TcxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    bbandera: TcxTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    tsNombreJefe: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    tsUbicacionCentroTrabajo: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    tsVobo: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    tsAutoriza: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    NACIMIENTO: TcxDBDateEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    tsNombreSolicitante: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnAreas: TcxButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    BitBtn2: TcxButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
  procedure btnAddClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure AdvGlowButton1Click(Sender: TObject);
  procedure frmBarra4btnAddClick(Sender: TObject);
  procedure frmBarra4btnPostClick(Sender: TObject);
  procedure frmBarra4btnEditClick(Sender: TObject);
  procedure frmBarra4btnCancelClick(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra2btnAddClick(Sender: TObject);
  procedure frmBarra5btnPrinterClick(Sender: TObject);
  procedure frmBarra4btnDeleteClick(Sender: TObject);
  procedure frmBarra4btnRefreshClick(Sender: TObject);
  procedure frmBarra4btnExitClick(Sender: TObject);
  procedure frmBarra4btnPrinterClick(Sender: TObject);
  procedure ImprimirExcelGuardias;
  procedure FormatosExcel(Formato: String; Color: TColor = clBtnFace; Size: Integer = 11);
  procedure ListaAsistenciaClick(Sender: TObject);
  procedure tsNombreSolicitanteKeyPress(Sender: TObject; var Key: Char);
  procedure grid_RequisiciondePersonalDblClick(Sender: TObject);
  procedure cbTipoTurnoKeyPress(Sender: TObject; var Key: Char);
  procedure tsIdDepartamentoKeyPress(Sender: TObject; var Key: Char);
  procedure tsCantidadPersonasKeyPress(Sender: TObject; var Key: Char);
  procedure tsDescripcionActividadesKeyPress(Sender: TObject; var Key: Char);
  procedure tsRequerimientosKeyPress(Sender: TObject; var Key: Char);
  procedure tsNombreJefeKeyPress(Sender: TObject; var Key: Char);
  procedure tsUbicacionCentroTrabajoKeyPress(Sender: TObject; var Key: Char);
  procedure tsVoboKeyPress(Sender: TObject; var Key: Char);
  procedure qryRequisicionPersonalCalcFields(DataSet: TDataSet);
  procedure qryRequisicionPersonalAfterInsert(DataSet: TDataSet);
  procedure BitBtn2Click(Sender: TObject);
  procedure cbsTipoPersonalKeyPress(Sender: TObject; var Key: Char);
  procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
  procedure tsAutorizaKeyPress(Sender: TObject; var Key: Char);
  procedure tsCatEstatusKeyPress(Sender: TObject; var Key: Char);
  procedure actualizar;
    procedure btnAreasClick(Sender: TObject);
    procedure cxgrdbtblvw_RequisiciondePersonalDBTableView1DblClick(Sender: TObject);
  procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  procedure EnterControl(Sender: TObject);
  procedure SalidaControl(Sender: TObject);
private
  { Private declarations }
public
  idarea : string;
  { Public declarations }
end;
  //
var
  frmRequisiciondePersonal: TfrmRequisiciondePersonal;
  Empleado :string;
  fechaBaja : Tdate;
  Valores : TStringList;
  bMostrar: Boolean;
  sArchivo: String;
  CaptionClick: String;
  query : string;
  //utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  Excel, Libro, Hoja: Variant;
  botonpermiso     : tbotonespermisos;

implementation
uses frm_MovtosEmpleadosGuardias,
  frm_Turnos,
  frmCatalogoareas,
  Func_Genericas, UTFrmDepartamentos;

{$R *.dfm}

procedure TfrmRequisiciondePersonal.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmRequisiciondePersonal.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;


    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBExtLookupComboBox) then
        tcxDBExtLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmRequisiciondePersonal.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBExtLookupComboBox) then
        tcxDBExtLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmRequisiciondePersonal.FormatosExcel(Formato: String; Color: TColor = clBtnFace; Size: Integer = 11);
begin
  if Formato = 'EncabezadoDefault' then
  begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := size;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color := color;
    Excel.Selection.WrapText := True;
  end else
  if Formato = 'Encabezado' then begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color := $00EBEBEB;
  end else
  if Formato = 'Default' then
  begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := False;
    Excel.Selection.Font.Name := 'Calibri';  
  end else 
  if Formato = 'Grupo' then
  begin
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Color := clWhite;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color := $00FF9933;
  end else
  if Formato = 'TipoImporte' then
  begin
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color := $00FFD9B3;
  end else
  if Formato = 'Importe' then
  begin
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := False;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.NumberFormat:='$ #,##0.00';
  end else
  if Formato = 'Titulo' then
  begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := size;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color := color;
  end;
end;

procedure TfrmRequisiciondePersonal.ImprimirExcelGuardias;
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2, QryAreas: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial, IntColumnaFinal,
  FilaDeGrupoInicialAnterior, FilaDeGrupoFinalAnterior,
  FilaDeGrupoInicial,
  FilaDeGrupo, FilaDeGrupoAnterior,
  FilaDeImportes, FilaDeImportesAnterior, FiladeImportesFinalAnterior,
  ContadorDeFilas, DiasTotales, i, x: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario,
  sIdArea, sTipoImporte, sLabelTipoImporte, sArea, ColumnaFinal,
  CeldasPorSumar, CeldaSuma, CeldaResta, NominasAplicadas: String;
  ImportePorGrupo: Double;
  ListaCeldas, ListaNominas: TStringList;
  ContinuaCalculoPercepciones: Boolean;
  Dia: TDateTime;
begin
//  Try
//
//    Try
//      Excel := CreateOleObject('Excel.Application');
//    Except
//      On E: Exception do begin
//        FreeAndNil(Excel);
//        ShowMessage(E.Message);
//        Exit;
//      end;
//    End;
//
//
//    Excel.Visible := True;
//    Excel.DisplayAlerts:= False;
//    Excel.WorkBooks.Add;
//    Excel.WorkBooks[1].WorkSheets[1].Name := 'Guardias';
//    Libro := Excel.WorkBooks[1].WorkSheets['Guardias'];
//
//    Excel.Columns[1].ColumnWidth := 5;
//    Excel.Columns[2].ColumnWidth := 50;
//    Excel.Columns[3].ColumnWidth := 15;
//    Excel.Columns[4].ColumnWidth := 15;
//
//    Try
//      QryBusca := TZQuery.Create(Self);
//      QryBusca.Connection := Connection.zConnection;
//      QryBusca.SQL.Text := 'SELECT * FROM configuracion WHERE sContrato = ' + QuotedStr(Global_Contrato);
//      QryBusca.Open;
//
//      Libro.Range['C1:C1'].Select;
//      Excel.Selection.Value := QryBusca.FieldByName('sNombre').AsString;
//      Libro.Range['C2:C2'].Select;
//      Excel.Selection.Value := QryBusca.FieldByName('sRfc').AsString;
//      Libro.Range['C3:C3'].Select;
      //Excel.Selection.Value := 'REPORTE DE GUARDIAS DE PERSONAL DEL ' + FormatDateTime('dd', Filtro_FechaInicial.DateTime) + ' DE ' + esMes(StrToInt(FormatDateTime('m', Filtro_FechaInicial.DateTime))) + ' AL ' + FormatDateTime('dd', Filtro_FechaFinal.DateTime) + ' DE ' + esMes(StrToInt(FormatDateTime('m', Filtro_FechaFinal.DateTime)));

//      Libro.Range['A5:A7'].Select;
//      Excel.Selection.Value := 'ID';
//      FormatosExcel('Encabezado');
//      Libro.Range['B5:B7'].Select;
//      Excel.Selection.Value := 'NOMBRE';
//      FormatosExcel('Encabezado');
//      Libro.Range['C5:C7'].Select;
//      Excel.Selection.Value := 'FRENTE';
//      FormatosExcel('Encabezado');
//      Libro.Range['D5:D7'].Select;
//      Excel.Selection.Value := 'FECHA DE SUBIDA';
//      FormatosExcel('Encabezado');
//      Libro.Range['E5:E7'].Select;
//      Excel.Selection.Value := 'FECHA DE BAJADA';
//      FormatosExcel('Encabezado');
//      Libro.Range['F5:F7'].Select;
//      Excel.Selection.Value := 'COMENTARIOS';
//      FormatosExcel('Encabezado');
//
//      QryBusca.SQL.Clear;
//      QryBusca.SQL.Add( 'SELECT ' +
//                        '	em.sNombreCompleto, ' +
//                        '	g.dFechaSubida, ' +
//                        '	g.dFechaBajada, ' +
//                        '	g.sComentario, ' +
//                        ' g.sIdFolio ' +
//                        'FROM guardias AS g ' +
//                        '	INNER JOIN empleados AS em ON (em.sIdEmpleado = g.sIdEmpleado) ' +
//                        'WHERE ' +
//                        '	g.dFechaSubida >= :FechaInicial ' +
//                        '	AND ' +
//                        '	g.dFechaSubida <= :FechaFinal;');
//      QryBusca.Params.ParamByName('FechaInicial').AsDateTime := Filtro_FechaInicial.DateTime;
//      QryBusca.Params.ParamByName('FechaFinal').AsDateTime := Filtro_FechaFinal.DateTime;
//      QryBusca.Open;
//      QryBusca.RecordCount;
//      Fila := 8;
//
//      AutoInc := 1;
//
//      if QryBusca.RecordCount > 0 then begin
//        while Not QryBusca.Eof do begin
//          Libro.Range['A'+IntToStr(Fila)+':A'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := IntToStr(AutoInc);
//          FormatosExcel('Default');
//
//          Libro.Range['B'+IntToStr(Fila)+':B'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := QryBusca.FieldByName('sNombreCompleto').AsString;
//          FormatosExcel('Default');
//
//          Libro.Range['C'+IntToStr(Fila)+':C'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := QryBusca.FieldByName('sIdFolio').AsString;
//          FormatosExcel('Default');
//
//          Libro.Range['D'+IntToStr(Fila)+':D'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := QryBusca.FieldByName('dFechaSubida').AsString;
//          FormatosExcel('Default');
//
//          Libro.Range['E'+IntToStr(Fila)+':E'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := QryBusca.FieldByName('dFechaBajada').AsString;
//          FormatosExcel('Default');
//
//          Libro.Range['F'+IntToStr(Fila)+':F'+IntToStr(Fila)].Select;
//          Excel.Selection.Value := QryBusca.FieldByName('sComentario').AsString;
//          FormatosExcel('Default');
//
//          Inc(Fila);
//          Inc(AutoInc);
//          QryBusca.Next;
//        end;
//        DiasTotales := DaysBetween(Filtro_FechaInicial.DateTime, Filtro_FechaFinal.DateTime);
//
////        x := 7;
////        for i := 0 to DiasTotales do begin
////          Libro.Range[ColumnaNombre(x) + '5:' + ColumnaNombre(x) + '7'].Select;
////          Excel.Selection.Value := FormatDateTime('yyyy-mm-dd', IncDay(Filtro_FechaInicial.DateTime, i));
////          FormatosExcel('Encabezado');
////          Inc(x);
////        end;
//
//
////        for Dia := Filtro_FechaInicial.DateTime to Filtro_FechaFinal.DateTime do begin
////          //;
////        end;
//          
//      end;
//    Finally
//      QryBusca.Free;
//    End;
//  Finally
//    Excel := Unassigned;
//  End;
end;

procedure TfrmRequisiciondePersonal.AdvGlowButton1Click(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 2;
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

procedure TfrmRequisiciondePersonal.BitBtn2Click(Sender: TObject);
begin
  bbandera.text:= 'frmRequisiciondePersonal';
  Application.CreateForm(TfrmTurnos, frmTurnos);
  frmTurnos.Show;
end;

procedure TfrmRequisiciondePersonal.btnAddClick(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 1;
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

procedure TfrmRequisiciondePersonal.btnAreasClick(Sender: TObject);
begin
 Application.CreateForm(TFrmDepartamentos, frmDepartamentos);
    frmDepartamentos.FormStyle := fsMDIChild;
    frmDepartamentos.visible := True;
    FrmDepartamentos.Show;
end;


procedure TfrmRequisiciondePersonal.cbsTipoPersonalKeyPress(Sender: TObject;var Key: Char);
begin
    if Key = #13 then
       tsIdDepartamento.Setfocus;
end;

procedure TfrmRequisiciondePersonal.cbTipoTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tsCantidadPersonas.SetFocus;
end;

procedure TfrmRequisiciondePersonal.dbPuestoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsCatEstatus.Setfocus;
end;

function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;//cpl
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

procedure TfrmRequisiciondePersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //utgrid.Destroy;
  Action := CaFree;
end;

procedure TfrmRequisiciondePersonal.FormShow(Sender: TObject);
begin
  actualizar;
end;
procedure TfrmRequisiciondePersonal.actualizar;
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;

   qryRequisicionPersonal.Active := False ;
   qryRequisicionPersonal.Open;

   zqAreas.Active := False;
   zqAreas.Open;

   zq_Puestos.Active := false;
   zq_Puestos.Open;

   qryTurnos.Active := false;
   qryTurnos.ParamByName('Contrato').AsString := global_contrato;
   qryTurnos.Open;
   //UtGrid:=TicdbGrid.create(grid_RequisiciondePersonal);

   BotonPermiso.permisosBotones(frmBarra4);

   ZQTipoPersonal.Active:=False;
   ZQTipoPersonal.Open;
end;

procedure TfrmRequisiciondePersonal.frmBarra2btnAddClick(Sender: TObject);
begin
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iNomina) as iNomina, Max(dFechaFinal) as dFechaFinal From nomina Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnAddClick(Sender: TObject);
begin
   frmBarra4.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'insert';
   connection.QryBusca.Active := False;
   connection.QryBusca.SQL.Clear;
   connection.QryBusca.SQL.Add('SELECT MAX(IdRequisicionPersonal) AS id FROM rh_requisicionpersonal;');
   connection.QryBusca.Open;
   qryRequisicionPersonal.Append ;
   if connection.QryBusca.FieldValues['id'] = null then
   begin
     qryRequisicionPersonal.FieldValues['IdRequisicionPersonal'] := 1;
   end
   else
   begin
     qryRequisicionPersonal.FieldValues['IdRequisicionPersonal'] := connection.QryBusca.FieldValues['id'] + 1;
   end;

   NACIMIENTO.date := date;
   qryRequisicionPersonal.FieldValues['sStatus'] := 'ABIERTA';
  if zqAreas.RecordCount > 0 then
  begin
     qryRequisicionPersonal.FieldValues['iIdDepartamento'] := tsIdDepartamento.EditValue;
  end;

  if zq_Puestos.RecordCount > 0 then
  begin
    dbPuesto.EditValue :=2;
    qryRequisicionPersonal.FieldValues['iId_Puesto'] :=  dbPuesto.EditValue;
  end;
  cbsTipoPersonal.SetFocus;
  BotonPermiso.permisosBotones(frmBarra4);
  frmbarra4.btnPrinter.Enabled := False;
  grid_RequisiciondePersonal.Enabled := False;
  BitBtn2.Enabled:=True;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnCancelClick(Sender: TObject);
begin
  frmBarra4.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  qryRequisicionPersonal.Cancel ;
  BotonPermiso.permisosBotones(frmBarra4);
  grid_RequisiciondePersonal.Enabled:=true;
  BitBtn2.Enabled:=false;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnDeleteClick(Sender: TObject);
VAR
  QryBusca: TZQuery;
begin
  if qryRequisicionPersonal.RecordCount > 0 then
  begin
    if messagedlg('Esta Seguro que desea eliminar el Registro? ', mtConfirmation,[MbYes,MbNo],0)=mrYes then
    begin
      qryRequisicionPersonal.Delete;
      qryRequisicionPersonal.Refresh;
    end;
  end else
  begin
    MSG_W('No existen Requisiciones de Personal.');
  end;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnEditClick(Sender: TObject);
begin
  if qryRequisicionPersonal.RecordCount > 0 then
  begin
    if qryRequisicionPersonal.FieldValues['sStatus'] = 'ABIERTA' then
    BEGIN
      frmBarra4.btnEditClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;

      qryRequisicionPersonal.Edit;
      tsIdDepartamento.SetFocus;

      grid_RequisiciondePersonal.Enabled := False;
      BotonPermiso.permisosBotones(frmBarra4);
      frmBarra4.btnPrinter.Enabled := False;
      BitBtn2.Enabled:=True;
    END
    else
    begin
      MSG_W('La requisicion de Personal se encuentra CERRADA.');
      frmBarra4.btnCancel.Click;
    end;
  end;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnPostClick(Sender: TObject);
begin

  qryRequisicionPersonal.Post;
  FrmBarra4.btnCancelClick(sender);
  grid_RequisiciondePersonal.Enabled := True;
  BitBtn2.Enabled:=false;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_SoliContPersOper.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_SoliContPersOper.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

   if not FileExists(global_files + global_miReporte + '_SoliContPersAdm.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_SoliContPersAdm.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;


  if qryRequisicionPersonal.RecordCount > 0  then
  begin
    if ZQTipoPersonal.FieldByName('sDescripcion').AsString = 'OPERATIVO' THEN
    BEGIN
      qryReporteRequisicionPersonal.Active := False;
      qryReporteRequisicionPersonal.Params.ParamByName('IdRequisicion').Value := qryRequisicionPersonal.FieldValues['IdRequisicionPersonal'];
      qryReporteRequisicionPersonal.Open;
      frxReporte.LoadFromFile(global_files + global_Mireporte + '_SoliContPersOper.fr3') ;
      frxReporte.ShowReport();
    END
    ELSE
    BEGIN
      qryReporteRequisicionPersonal.Active := False;
      qryReporteRequisicionPersonal.Params.ParamByName('IdRequisicion').Value := qryRequisicionPersonal.FieldValues['IdRequisicionPersonal'];
      qryReporteRequisicionPersonal.Open;
      frxReporte.LoadFromFile(global_files + global_Mireporte + '_SoliContPersAdm.fr3') ;
      frxReporte.ShowReport();
    END;
  end;
end;

procedure TfrmRequisiciondePersonal.frmBarra4btnRefreshClick(Sender: TObject);
begin
  actualizar;
end;

procedure TfrmRequisiciondePersonal.frmBarra5btnPrinterClick(Sender: TObject);
begin
  PopupImprimir.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfrmRequisiciondePersonal.grid_RequisiciondePersonalDblClick(Sender: TObject);
begin
  frmBarra4.btnEdit.Click ;
end;

procedure TfrmRequisiciondePersonal.cxgrdbtblvw_RequisiciondePersonalDBTableView1DblClick(
  Sender: TObject);
begin
  frmBarra4.btnEdit.Click;
end;

procedure TfrmRequisiciondePersonal.ListaAsistenciaClick(Sender: TObject);
Var
  empleado : string;
  dIni : Tdate;
  dFin : Tdate;
begin
//    empleado := qryEmpleados.FieldByName('sIdEmpleado').AsString;
//    if empleado <> '' then
//    begin
//        query :=  'SELECT * ' +
//                  'FROM empleados ' +
//                  'WHERE sIdEmpleado = ' + QuotedStr(empleado) + ';';   //;
//        qryReporteEmpleadosConDetalles.Active := False;
//        qryReporteEmpleadosConDetalles.SQL.Clear;
//        qryReporteEmpleadosConDetalles.SQL.Add(query);
//        qryReporteEmpleadosConDetalles.Open;
//        if qryReporteEmpleadosConDetalles.RecordCount > 0 then
//        begin
//            query :=  'SELECT ' +
//                          'd.sContrato AS contrato, e.sNumeroOrden AS frente, ' +
//                          'c.sDescripcion AS categoria, b.dFechaSubida, b.dFechaBajada, b.sComentario, b.sIdEmpleado ' +
//                      'FROM ' +
//                          'contratos AS d ' +
//                      'LEFT JOIN ordenesdetrabajo AS e ON (d.sContrato = e.sContrato) ' +
//                      'LEFT JOIN guardias AS b ON (d.sContrato = b.sContrato AND b.sIdFolio = e.sIdFolio) ' +
//                      'LEFT JOIN empleados AS a ON (a.sIdEmpleado = b.sIdEmpleado) ' +
//                      'LEFT JOIN personal AS c ON (a.sIdPersonal = c.sIdPersonal AND a.sContrato = c.sContrato) ' +
//                      'WHERE b.sIdEmpleado = ' + QuotedStr(empleado) + ' ' +
//                      'ORDER BY b.dFechaSubida DESC;';
//            qryReporteEmpleadosConDetalles2.Active := False;
//            qryReporteEmpleadosConDetalles2.SQL.Clear;
//            qryReporteEmpleadosConDetalles2.SQL.Add(query);
//            qryReporteEmpleadosConDetalles2.Open;
//            qryReporteEmpleadosConDetalles2.RecordCount;
//            frxReporteEmpleados.LoadFromFile(global_files + global_Mireporte + '_ListadeAsistencia.fr3');
//            frxReporteEmpleados.ShowReport();
//
//            (*
//            if qryReporteEmpleadosConDetalles2.RecordCount > 0 then
//            begin
//               frxReporteEmpleadosConDetalles.ShowReport();
//            end else
//            begin
//               MessageDlg('No Existen Guardias para el Empleado', mtError, [mbOk],0);
//               exit;
//            end;
//            *)
//            (*
//            if qryReporteEmpleadosConDetalles.FieldByName('sIdEmpleado').AsString = '' then
//            begin
//                showMessage('No Existen Datos para el Empleado');
//                exit;
//            end else
//            begin
//                frxReporteEmpleadosConDetalles.ShowReport();
//            end;
//            *)
//        end else
//        begin
//            MessageDlg('No Existen Datos para el Empleado', mtError, [mbOk],0);
//            exit;
//            (*
//            dIni := strtodate('01/01/1900');
//            dFin := strtodate('01/01/1900');
//            query := 'SELECT d.sContrato AS contrato, '+quotedstr('*')+' AS frente, a.sNombre, a.sDomicilio, a.sCiudad, a.sTelefono, a.sCurp, a.sRfc, ' +
//                    'a.sImss, a.sFolioLibreta, a.dVigenciaLibreta, a.dVigenciaCertMedico, a.sTipoSangre, c.sDescripcion AS categoria, ' +
//                    'CAST('+DateToStr(dIni)+' AS DATE) AS dFechaSubida, CAST('+DateToStr(dFin)+' AS DATE) AS dFechaBajada, a.lStatus AS estado, a.sComentario, a.sIdEmpleado ' +
//                    'FROM empleados AS a ' +
//                    'INNER JOIN contratos AS d  ON (a.sContrato = d.sContrato) ' +
//                    'INNER JOIN personal AS c ON (a.sIdPersonal = c.sIdPersonal AND a.sContrato = c.sContrato) ' +
//                    'AND a.sIdEmpleado = ' + QuotedStr(empleado) + ' ' +
//                    'ORDER BY d.sContrato;';
//            qryReporteEmpleadosConDetalles.Active := False;
//            qryReporteEmpleadosConDetalles.SQL.Clear;
//            qryReporteEmpleadosConDetalles.SQL.Text := query;
//            qryReporteEmpleadosConDetalles.Open;
//            frxReporteEmpleadosConDetalles.ShowReport();
//            *)
//        end;
//    end else
//    begin
//       showMessage('Seleccione un Empleado');
//       exit;
//    end;
end;

procedure TfrmRequisiciondePersonal.qryRequisicionPersonalAfterInsert(DataSet: TDataSet);
begin
  qryRequisicionPersonal.FieldValues['sTipoPersonal'] := '1' ;
end;

procedure TfrmRequisiciondePersonal.qryRequisicionPersonalCalcFields(DataSet: TDataSet);
begin
  if qryRequisicionPersonal.RecordCount > 0 then
  begin
    try
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select titulodepartamento from nuc_departamento where IdOrganizacion = :IdOrganizacion and iddepartamento = :iddepartamento');
      connection.zCommand.Params.ParamByName('IdOrganizacion').AsInteger := connection.contrato.FieldByName('idorganizacion').AsInteger;
      connection.zCommand.Params.ParamByName('iddepartamento').AsInteger := qryRequisicionPersonal.FieldByName('iIdDepartamento').AsInteger;
      connection.zCommand.Open;

      qryRequisicionPersonal.FieldByName('sIdArea').AsString := connection.zCommand.FieldByName('titulodepartamento').AsString;

//      connection.QryBusca.Active := False;
//      connection.QryBusca.SQL.Clear;
//      connection.QryBusca.SQL.Add('select sPuesto from con_catalogodepuestos where iId_Puesto =:puesto ');
//      connection.QryBusca.ParamByName('puesto').AsInteger :=  qryRequisicionPersonal.FieldValues['iId_Puesto'];
//      connection.QryBusca.Open;
//      qryRequisicionPersonal.FieldValues['puesto'] := connection.QryBusca.FieldValues['sPuesto'];
    Except
    on e:Exception do
    begin
      ShowMessage(e.Message);
    end;
    end;
  end;

end;

procedure TfrmRequisiciondePersonal.tsNombreJefeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tsUbicacionCentroTrabajo.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsNombreSolicitanteKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then dbPuesto.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsRequerimientosKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tsNombreJefe.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsUbicacionCentroTrabajoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsVobo.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsVoboKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tsAutoriza.SetFocus
end;

procedure TfrmRequisiciondePersonal.tsAutorizaKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then NACIMIENTO.Setfocus
end;

procedure TfrmRequisiciondePersonal.tsCantidadPersonasKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsDescripcionActividades.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsCatEstatusKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsCantidadPersonas.Setfocus;
end;

procedure TfrmRequisiciondePersonal.tsDescripcionActividadesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsRequerimientos.SetFocus;
end;

procedure TfrmRequisiciondePersonal.tsIdDepartamentoKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tsNombreSolicitante.SetFocus;
end;
end.
