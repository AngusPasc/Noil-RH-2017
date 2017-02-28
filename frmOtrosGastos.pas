unit frmOtrosGastos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid,  NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, dxBar, dxRibbonRadialMenu,
  cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxBlobEdit, cxMemo, dxSkinsCore,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxContainer, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit,
  cxCalc, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, Menus, cxButtons, ExportaExcel, ComObj,
  cxGroupBox;

type
  Tfrm_otrosgastos = class(TForm)
    dsOtrosIngresos: TDataSource;
    zqOtrosIngresos: TZQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Splitter1: TSplitter;
    lbl2: TLabel;
    lbl3: TLabel;
    dxBarManager1: TdxBarManager;
    dxInsertar: TdxBarLargeButton;
    dxEditar: TdxBarLargeButton;
    dxGuardar: TdxBarLargeButton;
    dxCancelar: TdxBarLargeButton;
    dxEliminar: TdxBarLargeButton;
    dxRefrescar: TdxBarLargeButton;
    dxSalir: TdxBarLargeButton;
    dxImprimir: TdxBarLargeButton;
    PopupMenu: TdxRibbonRadialMenu;
    Grid_OtrosIngresos: TcxGrid;
    BView_OtrosIngresos: TcxGridDBTableView;
    BView_OtrosIngresoscodigodepartamento1: TcxGridDBColumn;
    BView_OtrosIngresostitulodepartamento1: TcxGridDBColumn;
    BView_OtrosIngresosdescripcion1: TcxGridDBColumn;
    BView_OtrosIngresossTipoArea1: TcxGridDBColumn;
    BView_OtrosIngresosactivo1: TcxGridDBColumn;
    Grid_OtrosIngresosLevel1: TcxGridLevel;
    dxBarManager1Bar1: TdxBar;
    cxDBFecha: TcxDBDateEdit;
    cxDBTurno: TcxDBComboBox;
    cxDBMonto: TcxDBCalcEdit;
    cxDBComentarios: TcxDBMemo;
    cxDBTipo: TcxDBLookupComboBox;
    BView_OtrosIngresosColumn1: TcxGridDBColumn;
    cxButton1: TcxButton;
    zqTipoMov: TZQuery;
    dsTipoMov: TDataSource;
    zq_contratos: TZQuery;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    BViewGrafica: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    zqGrafica: TZQuery;
    dsGrafica: TDataSource;
    BViewGraficaColumn1: TcxGridDBColumn;
    BViewGraficaColumn2: TcxGridDBColumn;
    BViewGraficaColumn3: TcxGridDBColumn;
    BViewGraficaColumn4: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure cambio_estado;
    procedure cxDBFechaKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBFechaEnter(Sender: TObject);
    procedure cxDBFechaExit(Sender: TObject);
    procedure cxDBTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBMontoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTipoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTurnoEnter(Sender: TObject);
    procedure cxDBMontoEnter(Sender: TObject);
    procedure cxDBTipoEnter(Sender: TObject);
    procedure cxDBComentariosEnter(Sender: TObject);
    procedure cxDBTurnoExit(Sender: TObject);
    procedure cxDBMontoExit(Sender: TObject);
    procedure cxDBTipoExit(Sender: TObject);
    procedure cxDBComentariosExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    tmovimiento: string;
    { Public declarations }
  end;

var
  frm_otrosgastos: Tfrm_otrosgastos;

  Function GraficaExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
  function LetraColumna (x:integer):string;
  //utgrid:ticdbgrid;
implementation

uses frm_connection, frmEmpleados, frm_repositorio, frmTipoMovimiento;

{$R *.dfm}

procedure Tfrm_otrosgastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrm_otrosgastos.FormCreate(Sender: TObject);
begin
   lbl3.Caption:='Tipo de '+tmovimiento;
end;

procedure Tfrm_otrosgastos.FormShow(Sender: TObject);
begin
  if bandera_formulario ='frm_otrosgastos' then
    tmovimiento:='Ingreso'
  else
    tmovimiento:='Egreso';

  zq_contratos.Active := False ;
  zq_contratos.Params.ParamByName('sContrato').AsString := global_contrato;
  zq_contratos.Open ;
  
  zqOtrosIngresos.Active := False ;
  zqOtrosIngresos.Params.ParamByName('sContrato').AsString := global_contrato;
  zqOtrosIngresos.Open ;

  zqTipoMov.Active := False ;
  zqTipoMov.Open ;

  zqGrafica.Active := False ;
  zqGrafica.Open ;

  lbl3.Caption:='Tipo de '+tmovimiento;
  frm_otrosgastos.Caption:='Catálogo de Otros '+tmovimiento+'s';
end;

procedure Tfrm_otrosgastos.frmBarra1btnAddClick(Sender: TObject);
begin
  zqOtrosIngresos.Append;
  zqOtrosIngresos.FieldValues['sMovimiento'] := tmovimiento;
  zqOtrosIngresos.FieldValues['sContrato'] := global_contrato;
  cxDBFecha.SetFocus;
  cxDBFecha.Date:=Date;
  cxDBTurno.ItemIndex:=0;
  cxDBMonto.Value:=0;
  cxDBTipo.ItemIndex:=-1;
  cxDBComentarios.Text:='*';
  cambio_estado;
end;

procedure Tfrm_otrosgastos.frmBarra1btnCancelClick(Sender: TObject);
begin
  zqOtrosIngresos.Cancel;
  cambio_estado;
end;

procedure Tfrm_otrosgastos.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zqOtrosIngresos.RecordCount  > 0 then
    if MessageDlg('¿Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqOtrosIngresos.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_otrosgastos.frmBarra1btnEditClick(Sender: TObject);
begin
  If zqOtrosIngresos.RecordCount > 0 Then
  begin
      zqOtrosIngresos.Edit ;
      cambio_estado;
  end;
end;

procedure Tfrm_otrosgastos.frmBarra1btnExitClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_otrosgastos.frmBarra1btnPostClick(Sender: TObject);
begin
  if zqOtrosIngresos.State=dsInsert then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(iId) AS id FROM con_otrosingresos;');
    connection.QryBusca.Open;


    if connection.QryBusca.FieldValues['id'] = null then
        zqOtrosIngresos.FieldValues['iId'] := 1
    else
         zqOtrosIngresos.FieldValues['iId'] := connection.QryBusca.FieldValues['id'] + 1;
  end;

  zqOtrosIngresos.Post;
  cambio_estado;
  zqOtrosIngresos.Refresh;
  zqGrafica.Refresh;

end;

procedure Tfrm_otrosgastos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zqOtrosIngresos.Refresh;
    zqGrafica.Refresh;
end;

procedure Tfrm_otrosgastos.cambio_estado;
begin
  if zqOtrosIngresos.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    Grid_OtrosIngresos.Enabled    :=False;
  end else
  if zqOtrosIngresos.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    Grid_OtrosIngresos.Enabled    :=True;
  end;
end;
procedure Tfrm_otrosgastos.cxButton1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_tipomovimiento, frm_tipomovimiento);
  frm_tipomovimiento.Show;
end;

procedure Tfrm_otrosgastos.cxButton2Click(Sender: TObject);
begin
  ExportExcelPersonalizado(zq_contratos,BView_OtrosIngresos,'Control de Ingresos','Otros Ingresos/Egresos');
end;

procedure Tfrm_otrosgastos.cxButton3Click(Sender: TObject);
begin
  GraficaExcelPersonalizado(zq_contratos,BViewGrafica,'Otros Ingresos y Egresos','Grafica de Barras de los Ingresos y Egresos por Fecha');
end;

procedure Tfrm_otrosgastos.cxButton4Click(Sender: TObject);
begin
  Panel3.Visible:=False;
end;

procedure Tfrm_otrosgastos.cxDBComentariosEnter(Sender: TObject);
begin
  cxDBComentarios.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_otrosgastos.cxDBComentariosExit(Sender: TObject);
begin
  cxDBComentarios.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_otrosgastos.cxDBFechaEnter(Sender: TObject);
begin
  cxDBFecha.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_otrosgastos.cxDBFechaExit(Sender: TObject);
begin
  cxDBFecha.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_otrosgastos.cxDBFechaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
        cxDBTurno.SetFocus
end;

procedure Tfrm_otrosgastos.cxDBMontoEnter(Sender: TObject);
begin
  cxDBMonto.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_otrosgastos.cxDBMontoExit(Sender: TObject);
begin
  cxDBMonto.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_otrosgastos.cxDBMontoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        cxDBTipo.SetFocus
end;

procedure Tfrm_otrosgastos.cxDBTipoEnter(Sender: TObject);
begin
  cxDBTipo.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_otrosgastos.cxDBTipoExit(Sender: TObject);
begin
  cxDBTipo.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_otrosgastos.cxDBTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        cxDBComentarios.SetFocus
end;

procedure Tfrm_otrosgastos.cxDBTurnoEnter(Sender: TObject);
begin
  cxDBTurno.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_otrosgastos.cxDBTurnoExit(Sender: TObject);
begin
  cxDBTurno.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_otrosgastos.cxDBTurnoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        cxDBMonto.SetFocus
end;

procedure Tfrm_otrosgastos.dxImprimirClick(Sender: TObject);
begin
  if not zqGrafica.Active then
    zqGrafica.Open
  else
    zqGrafica.Refresh;

  Panel3.Visible:=True;
end;


{$REGION 'Exportar a Excel'}
function LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

Function GraficaExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr: string;
  TempPath: String;
  LogoFile: String;
const
   //hoja
   xlWBATWorksheet = -4167;

   xlCenter = -4108;
   xlBottom =-4107;
   xlNone = -4142;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;
   xlDiagonalDown = 5;
   xlDiagonalUp = 6;
   xlInsideVertical = 11;
   xlInsideHorizontal = 12;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;
   xlThemeColorDark1=1;

   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;
   Xl_Blanco = clWhite;
begin

  rowx := 2;
  columx := 0;
  x := 0;
  idx := 0;
  colx := 1;

  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  //HOja
  Excel := CreateOleObject('Excel.Application');
  // Mostrar el excel
  Excel.Visible:= True;
  // evitar que nos pregunte si deseamos sobreescribir el archivo
  Excel.DisplayAlerts := false;
  // agregar libro de trabajo
  Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := TituloPestaña;

  TempPath := GetEnvironmentVariable('TEMP');
  LogoFile := TempPath + '\Temp.bmp';
  TBlobField( DatoImagen.FieldByName('bImagen')).SaveToFile(LogoFile);

  WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
  WorkSheet.Cells[RowIni+3,ColIni+4] := Encabezado;
  WorkSheet.Cells[RowIni+3,ColIni+4].font.size := 13;
  WorkSheet.Cells[RowIni+3,ColIni+4].WrapText := True;
  WorkSheet.Cells[RowIni+3,ColIni+4].HorizontalAlignment := xlHAlignCenter;

  RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < grid.ColumnCount do
    begin
      if grid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := grid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        Inc(ColMaxExc);
      end;
      NumCheked := ColMaxExc;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;
    RowIni := RowIni-6;

    Excel.Range[LetraColumna(ColIni+3)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni+3)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni+3)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc+7)+inttostr(RowIni+3)].Font.Bold := true;
  //ENCABEZADOS DEL EXCEL
  {while idx < ChkLst.items.Count do
  begin
    if ChkLst.Items.Items[idx].Checked = true then
    begin
      WorkSheet.cells[rowx,colx+1] := ChkLst.Items.Items[idx].Text;
      Inc(colx);
    end;
    NumCheked := colx;
    inc(idx);
  end;}

  RowIni := RowIni+6;
   //FORMATO A ENCABEZADO EXCEL
  while x < NumCheked do
  begin
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 2;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=1;
    inc(x);
  end;

  //CUERPO EXCEL
  idx := 0;
  colx := 0;
  //rowx := 12;
  columx := 2;

  //REGISTROS DEL GRID  OJO SOLO ACEPTA TCXGRIDDBTABLEVIEW...
  while idx < grid.ViewData.RowCount do
  begin
    columx := 1;
    colx := 0;
    co:=0;
    while colx < grid.ItemCount do
    begin
      //if ChkLst.Items.Items[colx].Checked = true then
      //begin
        if grid.ViewData.Rows[idx].Values[colx]=null then
          valorStr:=''
        else
          valorStr := grid.ViewData.Rows[idx].Values[colx] ;
        if grid.Columns[colx].Visible = True then
        begin
          WorkSheet.cells[idx+8,columx] := valorStr;
          Inc(columx);
        end;
        if avalorStr=valorStr then
          inc(co);
        avalorStr:=valorStr;
      //end;
      Inc(colx);
    end;
    
    if co=grid.ItemCount-1 then
    begin
      Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Mergecells := True;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Interior.ColorIndex:=15;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Font.Bold := true;
      //WorkSheet.cells[idx+8,columx] := valorStr;
    end;
    inc(idx);
  end;

  //TOTALES
  WorkSheet.cells[idx+8,columx-3]:= 'TOTALES';
  WorkSheet.cells[idx+8,columx-2]:= VarToStr(grid.DataController.Summary.FooterSummaryValues[0]);
  WorkSheet.cells[idx+8,columx-1]:= VarToStr(grid.DataController.Summary.FooterSummaryValues[1]);
  WorkSheet.cells[idx+8,columx-3].HorizontalAlignment := xlHAlignRight;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Font.Bold := true;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Interior.ColorIndex:=15;


  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(1)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Style := 'Currency';
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].columns.autofit;

  //HACER GRAFICA
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].select;
  Excel.ActiveSheet.Shapes.AddChart.Select;
  Excel.ActiveChart.ChartType := 51;
  //Excel.ActiveChart.SetSourceData (LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-1)+IntToStr(idx+8));
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.ChartStyle := 10;
  Excel.ActiveChart.ClearToMatchStyle;
  Excel.ActiveChart.SetElement (335);
  //Excel.ActiveSheet.Shapes("19 Gráfico").ScaleWidth 1.8791666667, msoFalse, _ msoScaleFromTopLeft;

end;
{$ENDREGION}

end.
