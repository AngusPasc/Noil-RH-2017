unit frm_importaciondedatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, ZDataset, Math, 
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, ZAbstractRODataset, ZAbstractDataset,
  frxClass, frxDBSet, Buttons, OleServer, ExcelXP, ComObj, Excel2000, StrUtils, Utilerias,
  masUtilerias, RxMemDS, UnitExcepciones, frm_PopUpImportacion, frm_PopUpImportacionC;

type
  TfrmImportaciondeDatos = class(TForm)
    btnResumido: TBitBtn;
    btnSalir: TBitBtn;
    Label1: TLabel;
    OpenXLS: TOpenDialog;
    tsArchivo: TEdit;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    GroupBox1: TGroupBox;
    rAnexoC: TRadioButton;
    rAnexoDT: TRadioButton;
    rAnexoDE: TRadioButton;
    rPrograma: TRadioButton;
    rAnexoDEDLL: TRadioButton;
    rAnexoA: TRadioButton;
    btnFiles: TBitBtn;
    chkBorrar: TCheckBox;
    ProgressBar1: TProgressBar;
    rbAlcances: TRadioButton;
    rbInsumos: TRadioButton;
    rAnexoPersonal: TRadioButton;
    rAnexoEquipo: TRadioButton;
    rAnexoHerr: TRadioButton;
    rAnexoBasicos: TRadioButton;
    rbPersonalxP: TRadioButton;
    rbEquipoxP: TRadioButton;
    rHerrxPartida: TRadioButton;
    rBasicosxPart: TRadioButton;
    PopupPrincipal: TPopupMenu;
    Salir1: TMenuItem;
    SaveDialog1: TSaveDialog;
    rbInsumosxP: TRadioButton;
    rAnexoDMA: TRadioButton;
    rAnexoDMO: TRadioButton;
    RxMDValida: TRxMemoryData;
    frxDBValida: TfrxDBDataset;
    RxMDValidasNumeroActividad: TStringField;
    RxMDValidasWbs: TStringField;
    RxMDValidadCantidad: TStringField;
    RxMDValidasuma: TStringField;
    RxMDValidaaMN: TStringField;
    RxMDValidaaDLL: TStringField;
    RxMDValidabMN: TStringField;
    RxMDValidabDLL: TStringField;
    RxMDValidadCantidadAnexo: TStringField;
    frxReporte: TfrxReport;
    RxMDValidadescripcion: TStringField;
    RxMDValidamensaje: TStringField;
    RxMDValidasNumeroOrden: TStringField;
    RxMDValidasWbs2: TStringField;
    rAnexoDME: TRadioButton;
    rConstruye: TRadioButton;
    ds_Marcas: TDataSource;
    qryMarcas: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFilesClick(Sender: TObject);
    procedure tnResumidoClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure formatoEncabezado();
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tsArchivoEnter(Sender: TObject);
    procedure tsArchivoExit(Sender: TObject);
    function ValidaAnexosDT(dParamTipo :string) :boolean;
    function ValidaAnexosDME(dParamTipo, dParamTabla, dParamId : string) :boolean;
    function ValidaAnexosInsumo() :boolean;
    function ValidaAnexosPE(dParamTipo :string) :boolean;
    function ValidaAnexosBasicos(dParamTipo :string) :boolean;
    function ValidaAnexosPERxP(dParamTipo, sParamTabla, dParamCampo :string)   :boolean;
    function ValidaAnexosA() :boolean;
    function ValidaAnexosC(dParamAnexo : string) :boolean;
    function ValidaDeleteAnexosP(dParamTabla, dParamId, dParamBuscaTabla, dParamBuscaTabla2 : string): boolean;
    procedure ColoresErrorExcel(sFila,sColumna :string; iTipo :integer; sMensaje : string);
    procedure ValidaCampo(sTipo, Columna : string; fila : integer; Campo : string; lFechas : boolean; sColAnt : string);
    procedure CuadroColores(sCodigoC1, sCodigoC2, sErrorC1, sErrorC2 : string);
    procedure EliminaCuadro(sPosicion : string; iIndice : integer);
    procedure ConstruyeExplosion();
    function PartidasRepetidas(sParamTipo : string) :boolean;
  private

  public
    { Public declarations }
    {funciones para Validacion de Datos}
    procedure CalcDiferenciasOT(lista: TStringList);
    procedure ventasDiferentes(sWBSContrato, suma: string);
    function cantidadesDiferentes(sWBSContrato: string): string;
    procedure acumularDiferencia(suma, sMensaje: string);
  end;

var
  frmImportaciondeDatos: TfrmImportaciondeDatos;
  Excel, Libro, Hoja: Variant;
  columnas : array[1..260] of String ;
  MensajePartidas, sDatoNivel   : string;
  lContratoActual : boolean;
  flcid : integer;
  CodigoColor  : array[1..4] of string;

  recursos : array[1..25000,1..6 ] of String;
  registro : integer;

implementation

{$R *.dfm}

procedure TfrmImportaciondeDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmImportaciondeDatos.Salir1Click(Sender: TObject);
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// PLANTILAS DE IMPORTACION /////////////////////////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

    Procedure createComboExcel(Var Hoja: Variant; NombreHoja: String; PosCol: String; ListaDatos:string);
    begin
      Hoja.Sheets[NombreHoja].Select;
      Hoja.Range[PosCol].Select;
      hoja.Selection.Validation.Delete;
      hoja.Selection.Validation.add(xlValidateList,xlValidAlertStop,xlBetween,ListaDatos);
      hoja.Selection.Validation.IgnoreBlank := True;
      hoja.Selection.Validation.InCellDropdown := True;
      hoja.Selection.Validation.InputTitle := '';
      hoja.Selection.Validation.ErrorTitle := '';
      hoja.Selection.Validation.ErrorMessage := '';
      hoja.Selection.Validation.ShowInput := True;
      hoja.Selection.Validation.ShowError := True;
    end;
    Procedure AsignaFormulas(var Hoja: Variant; NombreHoja: string; Celda: String; Formula: String; Rango_AutoFill: string;
                             sLocked: Boolean; sFormulaOculta: Boolean; OcultarColumna: String);
    begin
      Hoja.Sheets[NombreHoja].Select;
      Hoja.Range[Celda].Select;
      Hoja.Selection.FormulaR1C1 := Formula;
      if Length(Trim(Rango_AutoFill)) > 0 then
        Hoja.Selection.Autofill(Hoja.range[Rango_AutoFill], xlFillDefault);
      if Length(Trim(OcultarColumna)) > 0 then
      begin
        Hoja.Columns[OcultarColumna].select;
        Hoja.Selection.Locked := sLocked;
        Hoja.Selection.FormulaHidden := sFormulaOculta;
        Hoja.Selection.EntireColumn.hidden := sFormulaOculta;
      end;
    end;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena, sColIDName : String;
  fs: tStream;
  i,x,n : integer;
Begin
  // Realizar los ajustes visuales y de formato de hoja
  Excel.ActiveWindow.Zoom := 100;
   //Genera Plantilla para Anexo A...
  x := 1;

  if rAnexoC.Checked then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 7.29;
      Excel.Columns['C:C'].ColumnWidth := 12.86;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 38;
      Excel.Columns['F:F'].ColumnWidth := 11;
      Excel.Columns['G:O'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Especif.';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Precio MN';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Precio DLL';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Fase_Proyecto';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['O1:O1'].Select;
      Excel.Selection.Value := 'Tipo(PU,ADM)';
      FormatoEncabezado;
      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';

           Hoja.Cells[i,9].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,10].Select;
           Excel.Selection.Value := 0;
      end;
      Hoja.Cells[2,2].Select;
      Excel.Selection.Value := '0';
      Hoja.Range['A1:O1'].Select;
  end;

  //Genera Plantilla para Anexo A...
  if rAnexoA.Checked then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 12;
      Excel.Columns['C:C'].ColumnWidth := 12;
      Excel.Columns['D:D'].ColumnWidth := 12;
      Excel.Columns['E:E'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'No. Plano';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Revision';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Grupo';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Plataforma';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
      end;
      Hoja.Range['A1:E1'].Select;
  end;

  //Genera Plantilla para Anexo DEMN, DeDLL, DMA, DMO, DME..
  if (rAnexoDMA.Checked) or (rAnexoDMO.Checked) or (rAnexoDME.Checked) then
  begin
      if (rAnexoDMA.Checked) then
         sColIDName := 'Id_Material';

      if (rAnexoDMO.Checked) then
        sColIDName := 'Id_Personal';

      if (rAnexoDME.Checked) then
         sColIDName := 'Id_Equipo';

      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:F'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := sColIDName;
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := '01/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := '02/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := '03/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := '04/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
           Hoja.Cells[i,3].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,4].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,5].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,6].Select;
           Excel.Selection.Value := '0';
      end;
      Hoja.Range['A1:F1'].Select;

  end;

  //Genera Plantilla para Anexo DT, DE , DE DLL
  if (rAnexoDT.Checked) or (rAnexoDE.Checked) or (rAnexoDEDLL.Checked) then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:G'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := '01/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := '02/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := '03/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := '04/01/'+ copy(DateToStr(date),7,4);
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
           Hoja.Cells[i,4].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,5].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,6].Select;
           Excel.Selection.Value := '0';
           Hoja.Cells[i,7].Select;
           Excel.Selection.Value := '0';
      end;
      Hoja.Range['A1:G1'].Select;
  end;

  //Genera Plantilla para Fases x Partida...
  if rbAlcances.Checked then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:D'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Id_Alcance';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Porcentaje';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
           Hoja.Cells[i,3].Select;
           Excel.Selection.Value := '0';
      end;
      Hoja.Range['A1:F1'].Select;
  end;

  //Genera Plantilla para Insumo, Personal, Equipos, Herramientas, Basicos..
  if (rbInsumosxP.Checked) or (rbPersonalxP.Checked) or (rbEquipoxP.Checked) or (rHerrxPartida.Checked) or (rBasicosxPart.Checked) then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 12;
      Excel.Columns['C:C'].ColumnWidth := 12;
      Excel.Columns['D:D'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      if rbPersonalxP.Checked then
         Excel.Selection.Value := 'Id_Personal';
      if rbEquipoxP.Checked then
         Excel.Selection.Value := 'Id_Equipo';
      if rHerrxPartida.Checked then
         Excel.Selection.Value := 'Id_Herramienta';
      if rbInsumosxP.Checked then
         Excel.Selection.Value := 'Id_Insumo';
      if rBasicosxPart.Checked then
         Excel.Selection.Value := 'Id_Basico';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
           Hoja.Cells[i,5].Select;
           Excel.Selection.Value := '0';
      end;
      Hoja.Range['A1:E1'].Select;
  end;

  //Genera plantilla de Programa de Trabajo..
  if rPrograma.Checked then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 15;
      Excel.Columns['C:C'].ColumnWidth := 8;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:J'].ColumnWidth := 12;
      Excel.Columns['K:K'].ColumnWidth := 15;
      Excel.Columns['L:L'].ColumnWidth := 15;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Excel.Selection.NumberFormat := '@';
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Tipo(PU,ADM)';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';
      end;
      Hoja.Cells[2,3].Select;
      Excel.Selection.Value := '0';
      Hoja.Range['A1:L1'].Select;
  end;

  //Genera Plantilla de Insumos..
  if rbInsumos.Checked then
  begin
      qryMarcas.Active:=False;
      qryMarcas.Open;

      Excel.sheets.add;
      Excel.ActiveSheet.Name := leftStr('Marcas', 31);
      Excel.Sheets['Marcas'].Select;
      //Excel.Sheets['Marcas'].Move.After.Sheets[2];
      qryMarcas.First;
      while Not qryMarcas.Eof do
      begin
        Excel.Cells[qryMarcas.RecNo,2] := qryMarcas.FieldByName('sIdMarca').AsString;
        Excel.Cells[qryMarcas.RecNo,1] := qryMarcas.FieldByName('sMarca').AsString;
        qryMarcas.Next;
      end;

      Excel.Sheets['MATERIALES'].Select;

      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 10;
      Excel.Columns['C:C'].ColumnWidth := 40;
      Excel.Columns['D:M'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Id_Insumo';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Tipo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Cantidad Inst.';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Fecha';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Id Familia';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'Modelo';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Marca';
      FormatoEncabezado;
      Hoja.Range['O1:O1'].Select;
      Excel.Selection.Value := 'Id Marca';
      FormatoEncabezado;
      Hoja.Range['P1:P1'].Select;
      Excel.Selection.Value := 'Ubicación';
      FormatoEncabezado;
      Hoja.Range['Q1'].Select;
      Excel.Selection.Value := 'Almacen';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,2].Select;
           Excel.Selection.Value := 'Material';
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';

           Hoja.Cells[i,8].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,9].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,10].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,11].Select;
           Excel.Selection.Value := 0;

           createComboExcel(Excel, 'MATERIALES', 'N' + IntToStr(i), '=Marcas!$A:$A');
           Excel.Cells[i, 15].AddComment;
           Excel.Cells[i, 15].Comment.Visible := False;
           Excel.Cells[i, 15].Comment.Text('No tipiar en esta columna, ya que se llena en base a la Marca que elija');

      end;
      AsignaFormulas(Excel, 'MATERIALES', 'O2', '=VLOOKUP(RC[-1], Marcas!C[-14]:C[-13], 2, FALSE)', 'O2:' + 'O' + IntToStr(12), false, False, 'O:O');

      Hoja.Range['A1:Q1'].Select;
      Hoja.Move(Excel.Sheets[1]);
  end;

  //Genera plantilla de Personal y de Equipos....
  if (rAnexoPersonal.Checked) or (rAnexoEquipo.Checked) then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 7.29;
      Excel.Columns['C:C'].ColumnWidth := 15;
      Excel.Columns['D:D'].ColumnWidth := 40;
      Excel.Columns['E:N'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      if rAnexoPersonal.Checked then
          Excel.Selection.Value := 'Id_Personal'
      else
          Excel.Selection.Value := 'Id_Equipo';
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
      if rAnexoPersonal.Checked then
         Excel.Selection.Value := 'Id_TipoPersonal'
      else
         Excel.Selection.Value := 'Id_TipoEquipo';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Jornada';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';

           Hoja.Cells[i,7].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,8].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,9].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,10].Select;
           Excel.Selection.Value := 0;
      end;
      Hoja.Range['A1:N1'].Select;
  end;

  //Genera Plantilla de Herramientas y Basicos...
  if (rAnexoHerr.Checked) or (rAnexoBasicos.Checked) then
  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 7.29;
      Excel.Columns['C:C'].ColumnWidth := 40;
      Excel.Columns['D:H'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      if rAnexoHerr.Checked then
         Excel.Selection.Value := 'Id_Herramienta'
      else
         Excel.Selection.Value := 'Id_Basico';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;

      for i := 2 to 12 do
      begin
           Hoja.Cells[i,1].Select;
           Excel.Selection.Value := global_contrato;
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment := xlCenter;
           Excel.Selection.Font.Size := 12;
           Excel.Selection.Font.Bold := False;
           Excel.Selection.Font.Name := 'Calibri';

           Hoja.Cells[i,5].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,6].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,7].Select;
           Excel.Selection.Value := 0;
           Hoja.Cells[i,8].Select;
           Excel.Selection.Value := 0;
      end;
      Hoja.Range['A1:H1'].Select;
  end;

  Excel.Columns['AA:AA'].ColumnWidth := 111.86;
  Excel.Columns['AA:AA'].WrapText := True;
  Excel.Columns['AA:AA'].Font.Name := 'Calibri';
  Excel.Columns['AA:AA'].Font.Size := 9;

  // Formato general de encabezado de datos..
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment   := xlCenter;
  Excel.Selection.Interior.ColorIndex := 25;
  Excel.Selection.Font.Color          := clWhite;
  Excel.Selection.Interior.Pattern    := xlSolid;
  Hoja.Range['A1:A1'].Select;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    if rAnexoC.Checked then
       Hoja.Name := 'ANEXO C'
     else
        if rAnexoA.Checked then
            Hoja.Name := 'ANEXO A'
          else
             if rAnexoDT.Checked then
                  Hoja.Name := 'ANEXO DT'
               else
                   if rAnexoDE.Checked then
                      Hoja.Name := 'ANEXO DE'
                   else
                       if rAnexoDEDLL.Checked then
                          Hoja.Name := 'ANEXO DE DLL'
                       else
                           if rbAlcances.Checked then
                              Hoja.Name := 'FASES X PARTIDA'
                           else
                               if rbInsumosxP.Checked then
                                  Hoja.Name := 'INSUMOS X PARTIDA'
                               else
                                   if rbPersonalxP.Checked then
                                      Hoja.Name := 'PERSONAL X PARTIDA'
                                   else
                                       if rbEquipoxP.Checked then
                                          Hoja.Name := 'EQUIPO X PARTIDA'
                                       else
                                           if rHerrxPartida.Checked then
                                              Hoja.Name := 'HERRAMIENTA X PARTIDA'
                                           else
                                               if rBasicosxPart.Checked then
                                                  Hoja.Name := 'BASICOS X PARTIDA'
                                               else
                                                   if rPrograma.Checked then
                                                      Hoja.Name := 'PROGRAMA TRABAJO'
                                                   else
                                                       if rbInsumos.Checked then
                                                          Hoja.Name := 'MATERIALES'
                                                       else
                                                           if rAnexoPersonal.Checked then
                                                              Hoja.Name := 'PERSONAL'
                                                           else
                                                               if rAnexoHerr.Checked then
                                                                  Hoja.Name := 'HERRAMIENTA'
                                                               else
                                                                    if rAnexoBasicos.Checked then
                                                                       Hoja.Name := 'BASICOS'
                                                                    else
                                                                        if rAnexoEquipo.Checked then
                                                                           Hoja.Name := 'EQUIPO';


    DatosPlantilla;
    Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
    Excel.DisplayAlerts := True;
  Except
    on e:exception do
    Begin
      Resultado := False;
      CadError := 'Se ha producido el siguiente error al generar la hoja de movimientos de EXISTENCIAS:' + #10 + #10 + e.Message;
      Excel.DisplayAlerts := True;
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
       on e : exception do begin
           FreeAndNil(Excel);
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al importar datos', 0);
           Exit;
    end;
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
    showmessage(CadError)
  else
    tsarchivo.Text:=SaveDialog1.FileName;

end;

procedure TfrmImportaciondeDatos.btnFilesClick(Sender: TObject);
var
   x, y, i : Integer;
begin
  OpenXLS.Title := 'Inserta Archivo de Consulta';
  if OpenXLS.Execute then
  begin
      tsArchivo.Text := OpenXLS.FileName;

     // soad - > Llenado del array..
      for x := 1 to 26 do
          columnas[x] := Chr(64 + x);

      i := 27;
      for x := 1 to 9 do
      begin
           for y := 1 to 26 do
           begin
               columnas[i] := Chr(64+ x) + Chr(64 + y);
               i := i + 1;
           end;
      end;
  end;
end;

procedure TfrmImportaciondeDatos.acumularDiferencia(suma, sMensaje: string);
begin
    RxMDValida.Append;
    RxMDValida.FieldByName('sNumeroActividad').Value := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
    RxMDValida.FieldByName('sWbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
    RxMDValida.FieldByName('dCantidad').Value := connection.QryBusca.FieldByName('dCantidad').AsString;
    RxMDValida.FieldByName('suma').Value := suma;
    RxMDValida.FieldByName('aMN').Value := connection.QryBusca.FieldByName('aMN').AsString;
    RxMDValida.FieldByName('aDLL').Value := connection.QryBusca.FieldByName('aDLL').AsString;
    RxMDValida.FieldByName('dCantidadAnexo').Value := connection.QryBusca.FieldByName('dCantidadAnexo').AsString;
    RxMDValida.FieldByName('bMN').Value := connection.QryBusca.FieldByName('bMN').AsString;
    RxMDValida.FieldByName('bDLL').Value := connection.QryBusca.FieldByName('bDLL').AsString;
    RxMDValida.FieldByName('descripcion').Value := connection.QryBusca.FieldByName('descripcion').AsString;
    RxMDValida.FieldByName('mensaje').Value := sMensaje;
    RxMDValida.FieldByName('sNumeroOrden').Value := connection.QryBusca.FieldByName('sNumeroOrden').AsString;
    RxMDValida.FieldByName('sWbs2').Value := connection.QryBusca.FieldByName('wbs2').AsString;
    RxMDValida.Post;
end;

function TfrmImportaciondeDatos.cantidadesDiferentes(sWBSContrato: string): string;
var
    sSQL: string;
begin
          result := '';

          sSQL := 'SELECT ' +
          'sum(a.dCantidad) as suma ' +
          'FROM actividadesxorden a ' +
          'INNER JOIN  actividadesxanexo b ' +
          'ON a.sContrato = b.sContrato ' +
          'AND a.sIdConvenio = b.sIdConvenio ' +
          'AND a.sWbsContrato = b.sWbs ' +
          'AND a.sTipoActividad = "Actividad" ' +
          'WHERE a.sContrato = :contrato ' +
          'AND a.sIdConvenio = :convenio ' +
          'AND a.sWbsContrato = :wbscontrato ' +
          'AND a.sTipoActividad = "Actividad"';

          connection.QryBusca.Active := false;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add(sSQL);
          connection.QryBusca.ParamByName('wbscontrato').Value := sWBSContrato;
          connection.QryBusca.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.ParamByName('convenio').Value := global_convenio;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount > 0 then
              result :=  connection.QryBusca.FieldByName('suma').AsString
end;

procedure TfrmImportaciondeDatos.ventasDiferentes(sWBSContrato, suma: string);
var
    sSQL: string;
    lError1, lError2: boolean;
begin
          sSQL := 'SELECT ' +
          'b.sNumeroActividad, b.sWbs, a.dCantidad, substr(b.mDescripcion,1,255) as descripcion, ' +
          'a.dVentaMN as aMN, a.dVentaDLL as aDLL, a.sTipoActividad, a.sNumeroOrden, a.sWbs as wbs2, ' +
          'b.dCantidadAnexo,  b.dVentaMN as bMN, b.dVentaDLL as bDLL  ' +
          'FROM actividadesxorden a ' +
          'INNER JOIN  actividadesxanexo b ' +
          'ON a.sContrato = b.sContrato ' +
          'AND a.sIdConvenio = b.sIdConvenio ' +
          'AND a.sWbsContrato = b.sWbs ' +
          'AND a.sTipoActividad = "Actividad" ' +
          'WHERE a.sContrato = :contrato ' +
          'AND a.sIdConvenio = :convenio ' +
          'AND a.sWbsContrato = :wbscontrato ' +
          'AND a.sTipoActividad = "Actividad" '+
          'ORDER BY b.sWbs';

          connection.QryBusca.Active := false;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add(sSQL);
          connection.QryBusca.ParamByName('wbscontrato').Value := sWBSContrato;
          connection.QryBusca.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.ParamByName('convenio').Value := global_convenio;
          connection.QryBusca.Open;

          lError1 := false;
          lError2 := false;
          while not connection.QryBusca.Eof do begin
              if (connection.QryBusca.FieldByName('aMN').Value <>
                connection.QryBusca.FieldByName('bMN').Value)
              or (connection.QryBusca.FieldByName('aDLL').Value <>
                connection.QryBusca.FieldByName('bDLL').Value) then begin
                  acumularDiferencia(suma, 'Existe diferencia entre los valores de ventas');
                  lError1 := true;
              end
              else begin
                  if (not lError1) and (not lError2) then begin
                      if (connection.QryBusca.FieldByName('dCantidadAnexo').Value <> suma) then
                          lError2 := true;
                  end;
              end;
              connection.QryBusca.Next;
          end;
          if (not lError1) and (lError2) then begin
              connection.QryBusca.First;
              while not connection.QryBusca.Eof do begin
                  acumularDiferencia(suma, 'Existe diferencia entre la suma total de las cantidades y la cantidad del anexo');
                  connection.QryBusca.Next;
              end;
          end;
end;

procedure TfrmImportaciondeDatos.CalcDiferenciasOT(lista: TStringList);
var
    ii: integer;
begin
    RxMDValida.Active := True;
    If RxMDValida.RecordCount > 0 then
        RxMDValida.EmptyTable ;
    for ii := 0 to Lista.Count - 1 do begin
        if Lista.Strings[ii] <> '' then
            ventasDiferentes(Lista.Strings[ii], cantidadesDiferentes(Lista.Strings[ii]));
    end;
end;


procedure TfrmImportaciondeDatos.tnResumidoClick(Sender: TObject);
var
  flcid, Fila: Integer;
  sValue, ImpsContrato, ImpsIsometrico, ImpiRevision, ImpsGrupo, ImpsWbsAnterior, ImpsWbs, ImpsActAnterior,
  ImpsNumeroActividad, ImpsAnexo, ImpsEspecificacion, ImpsPlataforma, ImpsPernocta, ImpdCantidadAnexo,ImpdInstalado, sIdAlmacen,
  ImpdFechaInicio, ImpdFechaFinal, ImpdCostoMN, ImpdCostoDLL, ImpdVentaMN, ImpdVentaDLL, ImpsMedida, ImpsIdFase, ImpsModelo, ImpsIdMarca, ImpsUbicacion, ImpdPonderado, ImpsWbsContrato,
  sFecha, ImpsPaquete, ImpsTipo, ImpiItemOrden,  ImpsNumeroOrden, sRango , sTipoActividad, sTabla, ImpsFase,
  sNumeroOrden, sRecorrido, sItemOrdenAnterior, sTipo, sWbs, ValidaMat, MaterialAuto, DatoE, FechaI, FechaF, sIdRecurso, dCantidad, sSQL  : string;
  arrFechas  : array[1..1000] of string;
  paquete    : array[1..3000,1..3 ] of String;
  letras     : array of array of String;
  ImpmDescripcion: WideString;
  iItemOrden, iRegistros, iColumna, ImpiNivel, iContColumna, impiFase, ImpiAvance,  I, x, t, BotonSelec  : Integer ;
  ValorExcel: Variant;
  ImpfPonderado, dVentaMN, dVentaDLL, ImpfValor: Currency;
  encuentra, lActualiza, lObtenerDeAnexo: Boolean;
  iNivel: Byte;
  dmpiAvance, dCantidadDT : Double ;
  Reemplaza  : Boolean;
  ListaActividades: TStringList;

  //Imporaticon Explosion insumos OPUS...
  cadena, cadena2,
  OldActividad,
  PosPrecio       : string;
  NumEncabezados,
  espacios        : integer;
  Encabezados     : array [1..6, 1..2] of string;
  lEncuentra      : boolean;
  PrecioMN,
  SumaPrecioMN,
  AuxPrecioMN     : double;
  myYear, myMonth, myDay : Word;
  dFecha : TDateTime;
  lImportarDescripcion, lImportarPreciosMN, lImportarPreciosDLL, lImportarMedida,
  lImportarFechaIni, lImportarFechaFin, lImportarCantidad: boolean;

  //Otras variables..
  MiValor, MiAnexo, MiValor2, MiValor3 : string;

  //Ordenamiento.. item..
  lMsExcel, lOrdenInteligent, lOrdenaNum, lOrdenaCadena : boolean;

  CodErr1, CodErr2: String;
  PasoValor: Real;
  SobreTodos: Boolean;
  Existir: TrxMemoryData;
  Resp: Integer;
  dPartida : double;

  zBuscaAlmacen : TZReadOnlyQuery;
  Almacen : string;

begin
   {cODIGOC COLORES}
   CodigoColor[1] := '';
   CodigoColor[2] := '';
   CodigoColor[3] := '';
   CodigoColor[4] := '';

   // Verificar si se ha seleccionado algun archivo
   if (tsArchivo.Text = '') or ((tsArchivo.Text <> '') and Not FileExists(tsArchivo.Text)) then
   begin
      MessageDlg('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0);
      Exit;
   end;

   //Busqueda de unidades de medida...
   Connection.zCommand.Active := False;
   Connection.zCommand.SQL.Clear;
   Connection.zCommand.SQL.Add(' select txtValidaMaterial, txtMaterialAutomatico from configuracion where sContrato = :Contrato ');
   Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
   Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
   Connection.zCommand.Open;
   if Connection.zCommand.RecordCount > 0 then
   begin
       ValidaMat    := Connection.zCommand.FieldValues['txtValidaMaterial'] ;
       MaterialAuto := Connection.zCommand.FieldValues['txtMaterialAutomatico'];
   end;

   //Asignacion de la ruta del archivo de Excel...
   Try
     Existir := TrxMemoryData.Create(Nil);
     Existir.FieldDefs.Clear;

     Try
        Connection.zConnection.StartTransaction;

        CodErr1 := 'Al generar ambiente de EXCEL para levantamiento de información';
        CodErr2 := 'Al intentar modificar atributos de EXCEL';

        flcid := GetUserDefaultLCID;
        ExcelApplication1.Connect;
        ExcelApplication1.Visible[flcid] := true;
        ExcelApplication1.UserControl := true;

        ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(tsArchivo.Text,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

        {Antes de iniciar peguntamos al Usuraio si Tomamos Datos del Contrato Actual o el de Excel..}
        lContratoActual := False;
        Resp := MessageDlg('¿Desea Importar los Datos con el nombre del Contrato Actual "'+global_contrato+'" ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
        case Resp of
            mrYes: lContratoActual := True;
            mrCancel: Raise Exception.Create('Proceso Cancelado por el Usuario.');
        end;


        ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);
        Fila := 1;
        SobreTodos := False;

      {$REGION 'ANEXO A'}
      //IMPORTACION DEL ANEXO A..
      if rAnexoA.Checked then
      begin
          CodErr1 := '';
          CodErr2 := '';

          if ValidaAnexosA() then
            Raise Exception.Create('Proceso Cancelado por el Sistema.');

          Fila := 2;
          ProgressBar1.Max := 0;
          if lContratoActual then
             sValue := global_contrato
          else
             sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          if sValue <> global_contrato then
            Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

          if ValidaDeleteAnexosP('isometricos', 'sIsometricoReferencia', '', 'estimacionxpartida') then
            Raise Exception.Create('Proceso Cancelado por el Sistema.');

          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIsometrico', ftString, 35);
          Existir.Open;
          Existir.EmptyTable;

          while (sValue <> '') do
          begin
            Try
              // Generar la estructura de inserción
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('INSERT INTO isometricos ( sContrato, sIsometrico, iRevision, sIdGrupo, sIdPlataforma) ' +
                                          'VALUES (:contrato, :Isometrico, :Revision, :Grupo, :Plataforma )');
              CodErr1 := '';
              CodErr2 := '';

              if lContratoActual then
                ImpsContrato := global_contrato
              else
                ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

              // Verificar el contrato del registro obtenido desde excel
              if ImpsContrato <> global_contrato then
                Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

              ImpsIsometrico  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
              ImpiRevision    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
              ImpsGrupo       := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
              ImpsPlataforma  := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

              // Inserto Datos a la Tabla .....
              CodErr1 := 'Importación de Plantilla de Anexo "A"';
              CodErr2 := 'Al Insetar registro';

              connection.zCommand.Active := False;
              Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value := ImpsContrato;
              Connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Isometrico').value := ImpsIsometrico;
              Connection.zCommand.Params.ParamByName('Revision').DataType := ftInteger;
              Connection.zCommand.Params.ParamByName('Revision').value := ImpiRevision;
              Connection.zCommand.Params.ParamByName('Grupo').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Grupo').value := ImpsGrupo;
              Connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Plataforma').value := ImpsPlataforma;
              connection.zCommand.ExecSQL;

            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                    // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                    if Not SobreTodos then
                      Resp := MessageDlg('El isometrico identificado en EXCEL ya existe en la base de datos:' + #10 +
                                         ImpsContrato + ' - ' + ImpsIsometrico + ' - ' + ImpiRevision + #10 + #10 +
                                         '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                    if Resp = mrYesToAll then
                      SobreTodos := True;

                    if (Resp = mrYes) or SobreTodos then
                      Resp := mrYes;

                    if Resp = mrCancel then
                      Raise Exception.Create('Proceso Cancelado por el Usuario.');

                    if Resp = mrYes then
                    begin
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('UPDATE isometricos SET iRevision = :Revision, sIdGrupo = :Grupo, sIdPlataforma = :Plataforma ' +
                                                  'WHERE sContrato = :Contrato and sIsometrico = :Isometrico');

                      Connection.zCommand.ParamByName('contrato').AsString := ImpsContrato;
                      Connection.zCommand.ParamByName('Isometrico').AsString := ImpsIsometrico;
                      Connection.zCommand.ParamByName('Revision').AsString := ImpiRevision;
                      Connection.zCommand.ParamByName('Grupo').AsString := ImpsGrupo;
                      Connection.zCommand.ParamByName('Plataforma').AsString := ImpsPlataforma;
                      connection.zCommand.ExecSQL;
                    end;
                end
                else
                    Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString := ImpsContrato;
            Existir.FieldByName('sIsometrico').AsString := ImpsIsometrico;
            Existir.Post;

            Fila := Fila + 1;
            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          end;


          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from isometricos where sContrato = :Contrato');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
              Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                                 '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
              if Resp = mrCancel then
                Raise Exception.Create('Proceso Cancelado por el Usuario.');

              if Resp = mrYes then
              begin
                  connection.zCommand.First;
                  while Not connection.zCommand.Eof do
                  begin
                    if Not Existir.Locate('sIsometrico', connection.zCommand.FieldByName('sIsometrico').AsString, []) then
                      Connection.zCommand.Delete;
                    connection.zCommand.Next;
                  end;
              end;
          end;
      end;

      {$ENDREGION}

      {$REGION 'PROGRAMA DE TRABAJO'}
      //IMPORTACION DEL PROGRAMA  DE TRABAJO ...
      //*******************************************************************************************
      if rPrograma.Checked then
      begin
          CodErr1 := '';
          CodErr2 := '';

          if ValidaAnexosC('Programa') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          Fila := 2;
          sValue          := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
          ImpsNumeroOrden := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

          BotonSelec :=  MessageDlg('Desea remplazar el programa de trabajo existente??', mtConfirmation, [mbYes, mbNo], 0);
          // Se elimina el catalogo de Anexo..
          if BotonSelec = mrYes then
          begin
             {Ahora llamamos la funcion que verifica si se puede eliinar el Anexo..}
             cadena := AntesEliminarFrente(sValue, sValue +'.%', ImpsNumeroOrden,'Paquete');
             if  cadena <> '' then
             begin
                  MessageDlg('No se puede Eliminar!. El Frente de Trabajo contine Partidas registradas en: '+ #13+ cadena, mtWarning, [mbOk], 0);
                  exit;
             end
             else
                //Sino se encontraron datos se procede a eliminar..
                chkBorrar.Checked := True;
          end;

          if chkBorrar.Checked then
          begin
              iNivel              := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
              ImpsNumeroActividad := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;

              //Eliminamos las distribuciones,,
              DistribucionesFrente(ImpsNumeroOrden, ImpsNumeroActividad, 'Paquete', iNivel);

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('DELETE FROM actividadesxorden Where sContrato = :contrato And sIdConvenio = :Convenio and sNumeroOrden =:Orden');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
              Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Convenio').Value    := Global_Convenio;
              Connection.zCommand.Params.ParamByName('Orden').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('Orden').Value       := ImpsNumeroOrden;
              connection.zCommand.ExecSQL();

              //Eliminamos avances,
              EliminaAvances(ImpsNumeroOrden);
          end;

          //Preguntamos al usuario dese subir las partidas de acuerdo a Excel o que inteligent las ordene,,
          Application.CreateForm(TFrmPopUpImportacionC, FrmPopUpImportacionC);
          FrmPopUpImportacionC.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpImportacionC.Width)/2);
          FrmPopUpImportacionC.Top := trunc((screen.Height)/2)-trunc((FrmPopUpImportacionC.Height)/2);
          FrmPopUpImportacionC.Caption  := 'Importando Programa de Trabajo';

          if FrmPopUpImportacionC.ShowModal = mrOk then
          begin
            lMsExcel         := FrmPopUpImportacionC.chkExcel.Checked;
            lOrdenInteligent := FrmPopUpImportacionC.chkInteligent.Checked;
          end
          else
            Raise Exception.Create('Proceso cancelado por el usuario.');

          ListaActividades := TStringList.Create;
          lObtenerDeAnexo := False;

          lImportarDescripcion := false;
          lImportarPreciosMN := false;
          lImportarPreciosDLL := false;
          lImportarMedida := false;
          lImportarFechaIni := false;
          lImportarFechaFin := false;
          lImportarCantidad := false;

          Try
            Application.CreateForm(TFrmPopUpImportacion, FrmPopUpImportacion);
            FrmPopUpImportacion.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpImportacion.Width)/2);
            FrmPopUpImportacion.Top := trunc((screen.Height)/2)-trunc((FrmPopUpImportacion.Height)/2);

            if FrmPopUpImportacion.ShowModal = mrOk then
            begin
                lObtenerDeAnexo := True;
                lImportarDescripcion := FrmPopUpImportacion.chkDescripcion.Checked;
                lImportarPreciosMN := FrmPopUpImportacion.chkPreciosMN.Checked;
                lImportarPreciosDLL := FrmPopUpImportacion.chkPreciosDLL.Checked;
                lImportarMedida := FrmPopUpImportacion.chkMedida.Checked;
                lImportarFechaIni := FrmPopUpImportacion.chkFechaIni.Checked;
                lImportarFechaFin := FrmPopUpImportacion.chkFechaFin.Checked;
                lImportarCantidad := FrmPopUpImportacion.chkCantidad.Checked;
            end;
          Finally
            FrmPopUpImportacion.Free;
          End;

          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          sNumeroOrden := '';

          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdConvenio', ftString, 5);
          Existir.FieldDefs.Add('sNumeroOrden', ftString, 35);
          Existir.FieldDefs.Add('sWbs', ftString, 100);
          Existir.FieldDefs.Add('sPaquete', ftString, 10);
          Existir.FieldDefs.Add('sNumeroActividad', ftString, 20);
          Existir.FieldDefs.Add('sTipoActividad', ftString, 15);
          Existir.Open;
          Existir.EmptyTable;

          t := 1;
          ProgressBar1.Max := 0;
          while (sValue <> '') do
          begin
              CodErr1 := '';
              CodErr2 := '';

              if lContratoActual then
                ImpsContrato := global_contrato
              else
                ImpsContrato    := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
              ImpsNumeroOrden := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

              iNivel              := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
              ImpsNumeroActividad := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
              ImpmDescripcion     := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
              ImpsMedida          := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
              ImpdCantidadAnexo   := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
              ImpdPonderado       := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
              FechaI              := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
              FechaF              := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
              ImpsTipo            := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
              ImpsAnexo           := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;

              ImpdFechaInicio     := DateToStr(ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2);
              ImpdFechaFinal      := DateToStr(ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2);

              if Trim(ImpsMedida) = '' then
                 sTipo := 'Paquete'
              else
                 sTipo := 'Actividad' ;

              sWbs := '';
              if iNivel <> 0 then
              begin
                  for x := 1 to t - 1 do
                  begin
                      if iNivel - 1 >= strToint(paquete[x][1]) then
                      begin
                          if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                            sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
                          else
                            sWbs := paquete[x][2] + '.' ;
                            ImpsWbsAnterior := paquete[x][2];
                      end;
                  end;

                  {Obtenemos la Wbs Anterior si selccionamos la Opcion ordenar x inteligent..}
                  if lOrdenInteligent then
                  begin
                      connection.QryBusca.Active := False ;
                      connection.QryBusca.SQL.Clear ;
                      connection.QryBusca.SQL.Add ('select iItemOrden from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and iNivel =:Nivel and sWbs =:WbsAnt order by iItemOrden ') ;
                      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.QryBusca.Params.ParamByName('Contrato').value    := global_contrato ;
                      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
                      connection.QryBusca.Params.ParamByName('Convenio').value    := global_convenio ;
                      connection.QryBusca.Params.ParamByName('WbsAnt').DataType   := ftString ;
                      if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                          connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -(length(ImpsAnexo)+2))
                      else
                          connection.QryBusca.Params.ParamByName('WbsAnt').value    := copy(sWbs, 1, length(sWbs) -1) ;
                      connection.QryBusca.Params.ParamByName('Nivel').DataType    := ftInteger ;
                      connection.QryBusca.Params.ParamByName('Nivel').value       := iNivel - 1;
                      connection.QryBusca.Open ;

                      if connection.QryBusca.RecordCount > 0 then
                         sItemOrdenAnterior := connection.QryBusca.FieldValues['iItemOrden']
                      else
                         sItemOrdenAnterior := '';
                  end;

                  sWbs := sWbs + ImpsNumeroActividad;
                  if lMsExcel then
                     ImpiItemOrden :=  sFnInsertaItem(ImpsNumeroActividad, ImpsWbsAnterior, '', sTipo, 'actividadesxorden', ImpsNumeroOrden, '', iNivel);

                  if lOrdenInteligent then
                     ImpiItemOrden :=  sItemOrdenAnterior + sFnBuscaItem(ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);
              end
              else
              begin
                  if lMsExcel then
                    ImpiItemOrden := sFnInsertaItem(ImpsNumeroActividad,
                                                    ImpsWbsAnterior, '', sTipo,'actividadesxorden', ImpsNumeroOrden, '', iNivel);
                  if lOrdenInteligent then
                    ImpiItemOrden  :=  sFnBuscaItem(ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxorden', iNivel);

                  ImpsWbsAnterior := '';
                  sWbs            :=  ImpsNumeroActividad;
              end;

              if  sTipo = 'Paquete' then
              begin
                paquete[t][1] := inttostr(iNivel);
                paquete[t][2] := sWbs;
                paquete[t][3] := ImpiItemOrden ;
                t := t + 1 ;
              end;

              {Verificamos si es una actividad o un paquete, para traer WbsContrato..}
              if sTipo = 'Actividad' then
              begin
                  Connection.qryBusca.Active := False;
                  Connection.qryBusca.SQL.Clear;
                  Connection.qryBusca.SQL.Add('Select sWbs, sActividadAnterior, mDescripcion, dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, dFechaInicio, dFechaFinal, sAnexo, sTipoAnexo ' +
                                              'From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad ' +
                                              'and sTipoActividad = "Actividad" and sAnexo=:anexo ');
                  Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                  Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                  Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                  Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                  Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                  Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
                  Connection.qryBusca.Params.ParamByName('anexo').DataType     := ftString;
                  Connection.qryBusca.Params.ParamByName('anexo').Value        := ImpsAnexo;
                  Connection.qryBusca.Open;

                  if Connection.qryBusca.RecordCount > 0 then
                  begin
                      ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs'];

                      if lObtenerDeAnexo then
                      begin
                          ImpsActAnterior := Connection.qryBusca.FieldValues['sActividadAnterior'];

                          if lImportarDescripcion then
                            ImpmDescripcion  := Connection.qryBusca.FieldValues['mDescripcion'];

                          if lImportarFechaIni then
                            ImpdFechaInicio  := Connection.qryBusca.FieldValues['dFechaInicio'];

                          if lImportarFechaFin then
                            ImpdFechaFinal   := Connection.qryBusca.FieldValues['dFechaFinal'];

                          ImpsAnexo := Connection.qryBusca.FieldValues['sAnexo'];
                          ImpsTipo  := Connection.qryBusca.FieldValues['sTipoAnexo'];

                          if lImportarPreciosMN then
                             ImpdVentaMN     := Connection.qryBusca.FieldValues['dVentaMN'];

                          if lImportarPreciosDLL then
                             ImpdVentaDLL    := Connection.qryBusca.FieldValues['dVentaDLL'];

                          if lImportarMedida then
                             ImpsMedida      := Connection.qryBusca.FieldValues['sMedida'];

                          if lImportarCantidad then
                             ImpdCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];
                      end;
                  end;  // Termina if Connection.qryBusca.RecordCount > 0 ....
              end
              else
              begin
                  {Para el caso de la integirdad de datos.. tomamos la sWbs del Paquete principal..}
                  Connection.qryBusca.Active := False;
                  Connection.qryBusca.SQL.Clear;
                  Connection.qryBusca.SQL.Add('Select sWbs From actividadesxanexo Where sContrato = :Contrato And sIdConvenio =:Convenio and sTipoActividad = "Paquete" and iNivel = 0');
                  Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                  Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                  Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                  Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                  Connection.qryBusca.Open;

                  if connection.QryBusca.RecordCount > 0 then
                     ImpsWbsContrato := Connection.qryBusca.FieldValues['sWbs']
                  else
                     ImpsWbsContrato := '';

              end; // Termina if ObtenerDeAnexo ....

              if sTipo = 'Paquete' then
              begin
                  ImpdCantidadAnexo := '1.00';
                  ImpsMedida := '';
                  ImpdVentaMN := '0.00';
                  ImpdVentaDLL := '0.00';
              end;

              Try
                  // Inserto Datos a la Tabla .....
                  CodErr1 := 'Al importar información del programa de trabajo desde EXCEL';
                  CodErr2 := 'Al insertar registros de actividadesxorden';

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  sSQL :='INSERT INTO actividadesxorden ( sContrato , sNumeroOrden, sIdConvenio, sTipoActividad, sWbsAnterior, ' +
                         'sWbs, sNumeroActividad, iItemOrden , mDescripcion, dFechaInicio, dDuracion, dFechaFinal, ' +
                         'dVentaMN, dVentaDLL, sMedida, dCantidad, dPonderado, iColor, lGerencial, iNivel, mComentarios, ' +
                         'sTipoAnexo, sWbsContrato, sAnexo, sActividadAnterior ) ' +
                         'VALUES (:contrato, :orden, :convenio, :tipo, :anterior, :wbs, :actividad, :Item, :Descripcion, ' +
                         ':Inicio, :Duracion, :Final, :MN, :DLL, :Medida, :CantidadAnexo, :Ponderado, :color, :Gerencial, ' +
                         ':Nivel, :Comentarios, :TipoA, :WbsContrato, :Anexo, :ActividadAnterior)';
                  connection.zCommand.SQL.Add(sSQL);
                  Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
                  Connection.zCommand.Params.ParamByName('orden').DataType       := ftString;
                  Connection.zCommand.Params.ParamByName('orden').value          := ImpsNumeroOrden;
                  Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
                  Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
                  Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;
                  if sTipo = 'Paquete' then
                    Connection.zCommand.Params.ParamByName('tipo').value         := sTipo
                  else
                    Connection.zCommand.Params.ParamByName('tipo').value         := 'Actividad';
                  Connection.zCommand.Params.ParamByName('anterior').DataType    := ftString;
                  Connection.zCommand.Params.ParamByName('anterior').value       := Trim(ImpsWbsAnterior);
                  Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;
                  if Trim(ImpsWbsAnterior) <> '' then
                    Connection.zCommand.Params.ParamByName('wbs').value          := sWbs
                  else
                    Connection.zCommand.Params.ParamByName('wbs').value          := Trim(ImpsNumeroActividad);
                  Connection.zCommand.Params.ParamByName('WbsContrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('WbsContrato').value    := ImpsWbsContrato;
                  Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value      := Trim(ImpsNumeroActividad);
                  Connection.zCommand.Params.ParamByName('Item').DataType        := ftString;
                  Connection.zCommand.Params.ParamByName('Item').value           := ImpiItemOrden;
                  Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                  Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
                  Connection.zCommand.Params.ParamByName('Inicio').DataType      := ftDate;
                  Connection.zCommand.Params.ParamByName('Inicio').value         := StrToDate(ImpdFechaInicio);
                  Connection.zCommand.Params.ParamByName('Duracion').DataType    := ftInteger;
                  Connection.zCommand.Params.ParamByName('Duracion').value       := (StrToDate(ImpdFechaFinal) - StrToDate(ImpdFechaInicio)) + 1;       // DaysBetween(StrToDate(ImpdFechaInicio),StrToDate(ImpdFechaFinal) )+1;
                  Connection.zCommand.Params.ParamByName('Final').DataType       := ftDate;
                  Connection.zCommand.Params.ParamByName('Final').value          := StrToDate(ImpdFechaFinal);
                  Connection.zCommand.Params.ParamByName('MN').DataType          := ftFloat;
                  Connection.zCommand.Params.ParamByName('MN').value             := ImpdVentaMN;
                  Connection.zCommand.Params.ParamByName('DLL').DataType         := ftFloat;
                  Connection.zCommand.Params.ParamByName('DLL').value            := ImpdVentaDLL;
                  Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
                  Connection.zCommand.Params.ParamByName('Medida').value         := Trim(ImpsMedida);
                  Connection.zCommand.Params.ParamByName('CantidadAnexo').DataType := ftFloat;
                  if sTipo = 'Paquete' then
                     Connection.zCommand.Params.ParamByName('CantidadAnexo').value := 1
                  else
                     Connection.zCommand.Params.ParamByName('CantidadAnexo').value := ImpdCantidadAnexo;
                  Connection.zCommand.Params.ParamByName('Ponderado').DataType   := ftFloat;
                  Connection.zCommand.Params.ParamByName('Ponderado').value      := ImpdPonderado;
                  Connection.zCommand.Params.ParamByName('Color').DataType       := ftInteger;

                  if sTipo = 'Paquete' then
                    Connection.zCommand.Params.ParamByName('Color').value        := 12
                  else
                    Connection.zCommand.Params.ParamByName('Color').value        := 0;
                  Connection.zCommand.Params.ParamByName('Gerencial').DataType   := ftString;

                  if sTipo = 'Paquete' then
                    Connection.zCommand.Params.ParamByName('Gerencial').value    := 'Si'
                  else
                    Connection.zCommand.Params.ParamByName('Gerencial').value    := 'No';

                  Connection.zCommand.Params.ParamByName('Nivel').DataType       := ftInteger;
                  Connection.zCommand.Params.ParamByName('Nivel').value          := iNivel;
                  Connection.zCommand.Params.ParamByName('Comentarios').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Comentarios').value    := '*';
                  Connection.zCommand.Params.ParamByName('TipoA').DataType       := ftString;
                  Connection.zCommand.Params.ParamByName('TipoA').value          := ImpsTipo;
                  Connection.zCommand.Params.ParamByName('Anexo').DataType       := ftString;
                  Connection.zCommand.Params.ParamByName('Anexo').value          := ImpsAnexo;
                  Connection.zCommand.Params.ParamByName('ActividadAnterior').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('ActividadAnterior').value    := ImpsActAnterior;
                  connection.zCommand.ExecSQL;
              Except
                on e:exception do
                begin
                  // Verificar si se encontró una duplicidad de registros
                  if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                  begin
                      // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro

                      if Not SobreTodos then
                        Resp := MessageDlg('La partida de orden de trabajo identificada en EXCEL ya existe en la base de datos:' + #10 +
                                           ImpsContrato + ' - ' + ImpsNumeroOrden + ' - ' + Global_Convenio + ' - ' + sWbs + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                           '¿Desea sobreescribirla?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);
                      if Resp = mrYesToAll then
                        SobreTodos := True;

                      if (Resp = mrYes) or SobreTodos then
                        Resp := mrYes;

                      if Resp = mrCancel then
                        Raise Exception.Create('Proceso Cancelado por el Usuario.');

                      if Resp = mrYes then
                      begin
                        connection.zCommand.Active := False;
                        connection.zCommand.SQL.Clear;
                        connection.zCommand.SQL.Add('UPDATE actividadesxorden SET sWbsAnterior = :anterior, iItemOrden = :Item, mDescripcion = :Descripcion, ' +
                                                    'dFechaInicio = :Inicio, dDuracion = :Duracion, dFechaFinal = :Final, dVentaMN = :MN, dVentaDLL = :DLL, ' +
                                                    'sMedida = :Medida, dCantidad = :CantidadAnexo, dPonderado = :Ponderado, iColor = :color, lGerencial = :Gerencial, ' +
                                                    'iNivel = :Nivel, mComentarios = :Comentarios, sTipoAnexo = :TipoA, sWbsContrato = :WbsContrato, sAnexo = :Anexo, ' +
                                                    'sActividadAnterior = :ActividadAnterior ' +
                                                    'WHERE sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad = :Actividad and sTipoActividad = :Tipo');

                        Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
                        Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
                        Connection.zCommand.Params.ParamByName('orden').DataType       := ftString;
                        Connection.zCommand.Params.ParamByName('orden').value          := ImpsNumeroOrden;
                        Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
                        Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
                        Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;
                        if sTipo = 'Paquete' then
                          Connection.zCommand.Params.ParamByName('tipo').value       := sTipo
                        else
                          Connection.zCommand.Params.ParamByName('tipo').value       := 'Actividad';
                        Connection.zCommand.Params.ParamByName('anterior').DataType    := ftString;
                        Connection.zCommand.Params.ParamByName('anterior').value       := Trim(ImpsWbsAnterior);
                        Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;
                        if Trim(ImpsWbsAnterior) <> '' then
                          Connection.zCommand.Params.ParamByName('wbs').value        := sWbs
                        else
                          Connection.zCommand.Params.ParamByName('wbs').value        := Trim(ImpsNumeroActividad);
                        Connection.zCommand.Params.ParamByName('WbsContrato').DataType := ftString;
                        Connection.zCommand.Params.ParamByName('WbsContrato').value    := ImpsWbsContrato;
                        Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
                        Connection.zCommand.Params.ParamByName('actividad').value      := Trim(ImpsNumeroActividad);
                        Connection.zCommand.Params.ParamByName('Item').DataType        := ftString;
                        Connection.zCommand.Params.ParamByName('Item').value           := ImpiItemOrden;
                        Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                        Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
                        Connection.zCommand.Params.ParamByName('Inicio').DataType      := ftDate;
                        Connection.zCommand.Params.ParamByName('Inicio').value         := StrToDate(ImpdFechaInicio);
                        Connection.zCommand.Params.ParamByName('Duracion').DataType    := ftInteger;
                        Connection.zCommand.Params.ParamByName('Duracion').value       := (StrToDate(ImpdFechaFinal) - StrToDate(ImpdFechaInicio)) + 1;
                        Connection.zCommand.Params.ParamByName('Final').DataType       := ftDate;
                        Connection.zCommand.Params.ParamByName('Final').value          := StrToDate(ImpdFechaFinal);
                        Connection.zCommand.Params.ParamByName('MN').DataType          := ftFloat;
                        Connection.zCommand.Params.ParamByName('MN').value             := ImpdVentaMN;
                        Connection.zCommand.Params.ParamByName('DLL').DataType         := ftFloat;
                        Connection.zCommand.Params.ParamByName('DLL').value            := ImpdVentaDLL;
                        Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
                        Connection.zCommand.Params.ParamByName('Medida').value         := Trim(ImpsMedida);
                        Connection.zCommand.Params.ParamByName('CantidadAnexo').DataType := ftFloat;
                        if sTipo = 'Paquete' then
                           Connection.zCommand.Params.ParamByName('CantidadAnexo').value := 1
                        else
                           Connection.zCommand.Params.ParamByName('CantidadAnexo').value := ImpdCantidadAnexo;
                        Connection.zCommand.Params.ParamByName('Ponderado').DataType   := ftFloat;
                        Connection.zCommand.Params.ParamByName('Ponderado').value      := ImpdPonderado;
                        Connection.zCommand.Params.ParamByName('Color').DataType       := ftInteger;

                        if sTipo = 'Paquete' then
                          Connection.zCommand.Params.ParamByName('Color').value      := 12
                        else
                          Connection.zCommand.Params.ParamByName('Color').value      := 0;
                        Connection.zCommand.Params.ParamByName('Gerencial').DataType   := ftString;

                        if sTipo = 'Paquete' then
                          Connection.zCommand.Params.ParamByName('Gerencial').value  := 'Si'
                        else
                          Connection.zCommand.Params.ParamByName('Gerencial').value  := 'No';

                        Connection.zCommand.Params.ParamByName('Nivel').DataType       := ftInteger;
                        Connection.zCommand.Params.ParamByName('Nivel').value          := iNivel;
                        Connection.zCommand.Params.ParamByName('Comentarios').DataType := ftString;
                        Connection.zCommand.Params.ParamByName('Comentarios').value    := '*';
                        Connection.zCommand.Params.ParamByName('TipoA').DataType       := ftString;
                        Connection.zCommand.Params.ParamByName('TipoA').value          := ImpsTipo;
                        Connection.zCommand.Params.ParamByName('Anexo').DataType       := ftString;
                        Connection.zCommand.Params.ParamByName('Anexo').value          := ImpsAnexo;
                        Connection.zCommand.Params.ParamByName('ActividadAnterior').DataType:= ftString;
                        Connection.zCommand.Params.ParamByName('ActividadAnterior').value   := ImpsActAnterior;
                        Connection.zCommand.ExecSQL;
                     end; //termina duplicate
                  end
                  else
                     raise;
                 end;
              End ;

              // Cargar la lista de registros procesados
              Existir.Append;
              Existir.FieldByName('sContrato').AsString        := global_contrato;
              Existir.FieldByName('sIdConvenio').AsString      := global_convenio;
              Existir.FieldByName('sNumeroOrden').AsString     := ImpsNumeroOrden;
              Existir.FieldByName('sWbs').AsString             := sWbs;
              Existir.FieldByName('sPaquete').AsString         := '0';
              Existir.FieldByName('sNumeroActividad').AsString := ImpsNumeroActividad;
              Existir.FieldByName('sTipoActividad').AsString   := sTipo;
              Existir.Post;


              {Se crea lista con actividades...}
              if ListaActividades.IndexOf(Trim(ImpsWbsContrato)) < 0 then
                 ListaActividades.Add(Trim(ImpsWbsContrato));

              //Agregar las unidades de medida a la configuracion en automatico...
              CodErr1 := 'Al registrar datos de programa de trabajo';
              CodErr2 := 'Al actualizar información de configuracion';
              x := pos(ImpsMedida, ValidaMat);
              if (x < 1) and (trim(ImpsMedida) <> '')  then
              begin
                  ValidaMat := ValidaMat + ImpsMedida + '|';
                  Connection.zCommand.Active := False;
                  Connection.zCommand.SQL.Clear;
                  Connection.zCommand.SQL.Add('Update configuracion set txtValidaMaterial = :Medidas where sContrato = :Contrato');
                  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
                  Connection.zCommand.Params.ParamByName('Medidas').DataType  := ftString;
                  Connection.zCommand.Params.ParamByName('Medidas').Value     := ValidaMat;
                  Connection.zCommand.ExecSQL;
              end;

              x := pos(ImpsMedida, MaterialAuto);
              if (x < 1) and (trim(ImpsMedida) <> '')  then
              begin
                  MaterialAuto := MaterialAuto + ImpsMedida + '|';
                  Connection.zCommand.Active := False;
                  Connection.zCommand.SQL.Clear;
                  Connection.zCommand.SQL.Add('Update configuracion set txtMaterialAutomatico = :Medidas where sContrato = :Contrato');
                  Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
                  Connection.zCommand.Params.ParamByName('Medidas').DataType  := ftString;
                  Connection.zCommand.Params.ParamByName('Medidas').Value     := MaterialAuto ;
                  Connection.zCommand.ExecSQL;
              end;

              ImpdVentaMN  := '0';
              ImpdVentaDLL := '0';

              ProgressBar1.Max      := ProgressBar1.Max + 1;
              ProgressBar1.Position := ProgressBar1.Position + 1 ;
              fila := fila + 1 ;
              sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);
          end;// Termino del While

          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.ParamByName('Convenio').AsString := Global_Convenio;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
              Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                                 '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
              if Resp = mrCancel then
                Raise Exception.Create('Proceso Cancelado por el Usuario.');

              if Resp = mrYes then
              begin
                  connection.zCommand.First;
                  while Not connection.zCommand.Eof do
                  begin
                    if Not Existir.Locate('sNumeroOrden;sWbs;sPaquete;sNumeroActividad;sTipoActividad', VarArrayOf([connection.zCommand.FieldByName('sNumeroOrden').AsString, connection.zCommand.FieldByName('sWbs').AsString, connection.zCommand.FieldByName('sPaquete').AsString, connection.zCommand.FieldByName('sNumeroActividad').AsString, connection.zCommand.FieldByName('sTipoActividad').AsString]), []) then
                       Connection.zCommand.Delete;
                    connection.zCommand.Next;
                  end;
              end;
          end;


          if BotonSelec = mrYes then
          begin
              try
                Kardex('Importacion de Datos','Termina Proceso', 'Frente de Trabajo', '', '', '','' );
              except
                  on e : exception do
                  begin
                    // Aquí si se debe dejar independiente esta excepción debido a que si no se puede registrar el kardex tampoco se quiere que se cancele todo el proceso.
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al registrar en kardex Importacion de Frente de Trabajo', 0);
                  end;
              end;
          end;

          {Se manda mensaje al usuario para informar sobre las difernecias..}
          if Assigned(ListaActividades) then
          begin
              CalcDiferenciasOT(ListaActividades);
              if RxMDValida.RecordCount > 0 then
              begin
                  MessageDlg('Existen diferencias. Oprima aceptar para ver el reporte.' , mtInformation, [mbOk], 0) ;
                  frxReporte.LoadFromFile (global_files + 'validaActOrden.fr3') ;
                  frxReporte.PreviewOptions.MDIChild := True ;
                  frxReporte.PreviewOptions.Modal := False ;
                  try
                    frxReporte.PreviewOptions.Maximized := lCheckMaximized ;
                  except
                    on e : exception do
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al verificar reporte al importar programa de trabajo', 0);
                  end;
                  frxReporte.PreviewOptions.ShowCaptions := False ;
                  frxReporte.Previewoptions.ZoomMode := zmPageWidth ;
                  frxReporte.ShowReport;
              end;
          end;
      end;
      {$ENDREGION}

      {$REGION 'ANEXO C'}
      //Aqui se importa el  Anexo "C" ...
      //*******************************************************************************************
      if rAnexoC.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosC('AnexoC') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        BotonSelec := MessageDlg('¿Desea remplazar el catalogo de partidas anexo existente?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
        if BotonSelec = mrCancel then
          Raise Exception.Create('Proceso Cancelado por el usuario');

        Fila := 2;
        sValue := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

        // Se elimina el catalogo de Anexo..
        if BotonSelec = mrYes then
        begin
           {Ahora llamamos la funcion que verifica si se puede eliinar el Anexo..}
           cadena := AntesEliminarAnexo(sValue, sValue +'.%', 'Paquete');
           if  cadena <> '' then
           begin
                MessageDlg('No se puede Eliminar!. El Anexo C contine Partidas registradas en: '+ #13+ cadena, mtWarning, [mbOk], 0);
                exit;
           end
           else
              //Sino se encontraron datos se procede a eliminar..
              chkBorrar.Checked := True;
        end;

        if chkBorrar.Checked then
        begin
          CodErr1 := 'Al importar anexo "C"';
          CodErr2 := 'Al tratar de eliminar registros de actividadesxanexo existentes';

          iNivel              := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          ImpsNumeroActividad := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

          //Eliminamos las distribuciones,,
          DistribucionesAnexo(ImpsNumeroActividad, 'Paquete', iNivel);

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM actividadesxanexo Where sContrato = :contrato And sIdConvenio = :Convenio');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
          connection.zCommand.ExecSQL();

          //Eliminamos avances,
          EliminaAvances('');
        end;

        CodErr1 := '';
        CodErr2 := '';

        //Preguntamos al usuario dese subir las partidas de acuerdo a Excel o que inteligent las ordene,,
        Application.CreateForm(TFrmPopUpImportacionC, FrmPopUpImportacionC);
        FrmPopUpImportacionC.Left := trunc((Screen.Width)/2)-trunc((FrmPopUpImportacionC.Width)/2);
        FrmPopUpImportacionC.Top := trunc((screen.Height)/2)-trunc((FrmPopUpImportacionC.Height)/2);

        if FrmPopUpImportacionC.ShowModal = mrOk then
        begin
            lMsExcel         := FrmPopUpImportacionC.chkExcel.Checked;
            lOrdenInteligent := FrmPopUpImportacionC.chkInteligent.Checked;
        end
        else
        begin
            FrmPopUpImportacion.Free;
            exit;
        end;

        I := 0;
        t := 1;
        //Procedemos a leer el archivo de Excel..
        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        while (sValue <> '') do
        begin
          CodErr1 := '';
          CodErr2 := '';

          ProgressBar1.Position := Fila - 1;
          if lContratoActual then
            ImpsContrato := global_contrato
          else
            ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          inc(I);
          iNivel              := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          ImpsNumeroActividad := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
          ImpsEspecificacion  := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
          ImpmDescripcion     := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
          ImpsMedida          := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
          ImpdCantidadAnexo   := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
          ImpdPonderado       := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
          ImpdVentaMN         := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
          ImpdVentaDLL        := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
          ImpsFase            := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
          FechaI              := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
          FechaF              := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
          ImpsAnexo           := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;
          ImpsTipo            := ExcelWorksheet1.Range['O' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila))].Value2;
          ImpdFechaInicio     := DateToStr(ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2);
          ImpdFechaFinal      := DateToStr(ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2);

          if Trim(ImpsMedida) = '' then
            sTipo := 'Paquete'
          else
            sTipo := 'Actividad' ;

          sWbs := '';
          if iNivel <> 0 then
          begin
            for x := 1 to t - 1 do
            begin
              if iNivel - 1 >= strToint(paquete[x][1]) then
              begin
                if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                  sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
                else
                  sWbs := paquete[x][2] + '.' ;
                ImpsWbsAnterior := paquete[x][2];
              end;
            end;

            {Obtenemos la Wbs Anterior si selccionamos la Opcion ordenar x inteligent..}
            if lOrdenInteligent then
            begin
              connection.QryBusca.Active := False ;
              connection.QryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add ('select iItemOrden from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and iNivel =:Nivel and sWbs =:WbsAnt order by iItemOrden ') ;
              connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
              connection.QryBusca.Params.ParamByName('Contrato').value    := global_contrato ;
              connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
              connection.QryBusca.Params.ParamByName('Convenio').value    := global_convenio ;
              connection.QryBusca.Params.ParamByName('WbsAnt').DataType   := ftString ;
              if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                connection.QryBusca.Params.ParamByName('WbsAnt').value   := copy(sWbs, 1, length(sWbs) -(length(ImpsAnexo)+2))
              else
                connection.QryBusca.Params.ParamByName('WbsAnt').value   := copy(sWbs, 1, length(sWbs) -1) ;
              connection.QryBusca.Params.ParamByName('Nivel').DataType    := ftInteger ;
              connection.QryBusca.Params.ParamByName('Nivel').value       := iNivel - 1;
              connection.QryBusca.Open ;

              if connection.QryBusca.RecordCount > 0 then
                sItemOrdenAnterior := connection.QryBusca.FieldValues['iItemOrden']
              else
                sItemOrdenAnterior := '';
            End;

            sWbs := sWbs + ImpsNumeroActividad;
            if lMsExcel then
              ImpiItemOrden :=  sFnInsertaItem(ImpsNumeroActividad, ImpsWbsAnterior, '', sTipo, 'actividadesxanexo', '', ImpsAnexo, iNivel);
            if lOrdenInteligent then
              ImpiItemOrden :=  sItemOrdenAnterior + sFnBuscaItem(ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior, sTipo, '', 'actividadesxanexo', iNivel);

          end
          else
          begin
            if lMsExcel then
              ImpiItemOrden   := sFnInsertaItem(ImpsNumeroActividad, ImpsWbsAnterior, '', sTipo, 'actividadesxanexo', '', ImpsAnexo, iNivel);
            if lOrdenInteligent then
              ImpiItemOrden   :=  sFnBuscaItem(ImpsNumeroActividad, ImpsWbsAnterior, sItemOrdenAnterior,sTipo, '', 'actividadesxanexo', iNivel);

            ImpsWbsAnterior := '';
            sWbs            :=  ImpsNumeroActividad;
          end;

          if  sTipo = 'Paquete' then
          begin
            paquete[t][1] := inttostr(iNivel);
            paquete[t][2] := sWbs;
            paquete[t][3] := ImpiItemOrden ;
            t := t + 1 ;
          end;

          //Checo si existe la partida o paquete en el contrato ....
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sWbsAnterior, dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio '+
                                      'And sNumeroActividad = :Actividad and sWbs = :Wbs');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
          Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
          Connection.qryBusca.Params.ParamByName('Wbs').DataType       := ftString;
          Connection.qryBusca.Params.ParamByName('Wbs').Value          := sWbs;
          Connection.qryBusca.Open;

          if (Connection.QryBusca.RecordCount > 0) then
          begin
              ImpsWbsAnterior := connection.QryBusca.FieldValues['sWbsAnterior'];
              lActualiza := True
          end
          else
              lActualiza := False;

          //Se actualiza informacion en caso de que y exista la partida en el mismo paquete...
          CodErr1 := 'Al importar anexo "C"';
          CodErr2 := 'Al registrar actividadesxanexo';
          if lActualiza then
          begin
            if Not SobreTodos then
              Resp := MessageDlg('La partida de orden de trabajo identificada en EXCEL ya existe en la base de datos:' + #10 +
                                 ImpsContrato + ' - ' + ImpsNumeroOrden + ' - ' + Global_Convenio + ' - ' + sWbs + ' Partida -> ' + ImpsNumeroActividad +' Fila ['+IntToStr(Fila)+'] '+ #10 + #10 +
                                 '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

            if Resp = mrYesToAll then
              SobreTodos := True;

            if (Resp = mrYes) or SobreTodos then
              Resp := mrYes;

            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              CodErr1 := 'Al importar anexo "C"';
              CodErr2 := 'Al tratar de actualizar registros en la tabla actividadesxanexo';

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET sWbsAnterior = :WbsAnterior, dCantidadAnexo = :Cantidad, dFechaInicio = :Inicio, dFechaFinal = :Final, dVentaMN = :VentaMN, dVentaDLL = :VentaDLL ' +
                                          'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroActividad = :Actividad And sTipoActividad = "Actividad" ');
              Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value := ImpsContrato;
              Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
              Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
              Connection.zCommand.Params.ParamByName('WbsAnterior').DataType := ftString;
              Connection.zCommand.Params.ParamByName('WbsAnterior').value := Trim(ImpsWbsAnterior);
              Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
              Connection.zCommand.Params.ParamByName('actividad').value := Trim(ImpsNumeroActividad);
              Connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
              Connection.zCommand.Params.ParamByName('Inicio').value := StrToDate(ImpdFechaInicio);
              Connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
              Connection.zCommand.Params.ParamByName('Final').value := StrToDate(ImpdFechaFinal);
              Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
              Connection.zCommand.Params.ParamByName('Cantidad').value := ImpdCantidadAnexo + connection.QryBusca.FieldValues['dCantidadAnexo'];
              Connection.zCommand.Params.ParamByName('VentaMN').DataType := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaMN').value := ImpdVentaMN;
              Connection.zCommand.Params.ParamByName('VentaDLL').DataType := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaDLL').value := ImpdVentaDLL;
              connection.zCommand.ExecSQL;
            end;
          end
          else
          begin
            CodErr1 := 'Al importar anexo "C"';
            CodErr2 := 'Al tratar de insertar registros en la tabla actividadesxanexo';

            connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('INSERT INTO actividadesxanexo ( sContrato , sIdConvenio, iNivel,sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, sActividadAnterior, sEspecificacion, iItemOrden , mDescripcion, dFechaInicio, dDuracion, dFechaFinal, ' +
                                        'dVentaMN, dVentaDLL, sMedida, dCantidadAnexo, dPonderado, sAnexo, iColor,sSimbolo, sTipoAnexo, sIdFase ) ' +
                                        'VALUES (:contrato, :convenio, :nivel ,:tipo, :anterior, :wbs, :actividad, :actividad, :Especifica, :Item, :Descripcion, :Inicio, :Duracion, :Final, :MN, :DLL, :Medida, :CantidadAnexo, :Ponderado, :Anexo, :Color ,"+", :TipoA, :Fase)');
            Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
            Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
            Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;

            if Trim(ImpsMedida) = '' then
              Connection.zCommand.Params.ParamByName('tipo').value         := 'Paquete'
            else
              Connection.zCommand.Params.ParamByName('tipo').value         := 'Actividad';
            Connection.zCommand.Params.ParamByName('anterior').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('anterior').value       := Trim(ImpsWbsAnterior);
            Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;

            if Trim(ImpsWbsAnterior) <> '' then
              Connection.zCommand.Params.ParamByName('wbs').value          := sWbs
            else
              Connection.zCommand.Params.ParamByName('wbs').value          := Trim(ImpsNumeroActividad);

            Connection.zCommand.Params.ParamByName('nivel').DataType       := ftInteger;
            Connection.zCommand.Params.ParamByName('nivel').value          := iNivel;

            Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;

            Connection.zCommand.Params.ParamByName('actividad').value      := Trim(ImpsNumeroActividad);
            Connection.zCommand.Params.ParamByName('Especifica').DataType  := ftString;
            Connection.zCommand.Params.ParamByName('Especifica').value     := Trim(ImpsEspecificacion);
            Connection.zCommand.Params.ParamByName('Item').DataType        := ftString;
            Connection.zCommand.Params.ParamByName('Item').value           :=  ImpiItemOrden;
            Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
            Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
            Connection.zCommand.Params.ParamByName('Inicio').DataType      := ftDate;
            Connection.zCommand.Params.ParamByName('Inicio').value         := StrToDate(ImpdFechaInicio);
            Connection.zCommand.Params.ParamByName('Duracion').DataType    := ftInteger;
            Connection.zCommand.Params.ParamByName('Duracion').value       := (StrToDate(ImpdFechaFinal) - StrToDate(ImpdFechaInicio)) + 1;  //DaysBetween(StrToDate(ImpdFechaInicio),StrToDate(ImpdFechaFinal)) + 1;
            Connection.zCommand.Params.ParamByName('Final').DataType       := ftDate;
            Connection.zCommand.Params.ParamByName('Final').value          := StrToDate(ImpdFechaFinal);
            Connection.zCommand.Params.ParamByName('MN').DataType          := ftFloat;
            Connection.zCommand.Params.ParamByName('MN').value             := ImpdVentaMN;
            Connection.zCommand.Params.ParamByName('DLL').DataType         := ftFloat;
            Connection.zCommand.Params.ParamByName('DLL').value            := ImpdVentaDLL;
            Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
            Connection.zCommand.Params.ParamByName('Medida').value         := Trim(ImpsMedida);
            Connection.zCommand.Params.ParamByName('CantidadAnexo').DataType := ftFloat;
            if Trim(ImpsMedida) = '' then
               Connection.zCommand.Params.ParamByName('CantidadAnexo').value := 1
            else
               Connection.zCommand.Params.ParamByName('CantidadAnexo').value := ImpdCantidadAnexo;
            Connection.zCommand.Params.ParamByName('Ponderado').DataType   := ftFloat;
            Connection.zCommand.Params.ParamByName('Ponderado').value      := ImpdPonderado;
            Connection.zCommand.Params.ParamByName('Anexo').DataType       := ftString;
            Connection.zCommand.Params.ParamByName('Anexo').value          := ImpsAnexo;
            Connection.zCommand.Params.ParamByName('TipoA').DataType       := ftString;
            if sTipo = 'Paquete' then
               Connection.zCommand.Params.ParamByName('TipoA').value       := ''
            else
               Connection.zCommand.Params.ParamByName('TipoA').value       := ImpsTipo;
            Connection.zCommand.Params.ParamByName('Fase').DataType        := ftString;
            if sTipo = 'Paquete' then
               Connection.zCommand.Params.ParamByName('Fase').value        := ''
            else
               Connection.zCommand.Params.ParamByName('Fase').value        := ImpsFase;
            Connection.zCommand.Params.ParamByName('Color').DataType       := ftInteger;

            if Trim(ImpsMedida) = '' then
              Connection.zCommand.Params.ParamByName('Color').value        := 12
            else
              Connection.zCommand.Params.ParamByName('Color').value        := 0;
            connection.zCommand.ExecSQL;

            //Agregar las unidades de medida a la configuracion en automatico...
            CodErr1 := 'Al importar anexo "C"';
            CodErr2 := 'Al tratar de actualizar unidades de medida en tabla de configuración';

            x := pos(ImpsMedida, ValidaMat);
            if (x < 1) and (trim(ImpsMedida) <> '')  then
            begin
              ValidaMat := ValidaMat + ImpsMedida + '|';
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('Update configuracion set txtValidaMaterial = :Medidas where sContrato = :Contrato');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
              Connection.zCommand.Params.ParamByName('Medidas').DataType  := ftString;
              Connection.zCommand.Params.ParamByName('Medidas').Value     := ValidaMat;
              Connection.zCommand.ExecSQL;
            end;

            x := pos(ImpsMedida, MaterialAuto);
            if (x < 1) and (trim(ImpsMedida) <> '')  then
            begin
              MaterialAuto := MaterialAuto + ImpsMedida + '|';
              Connection.zCommand.Active := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('Update configuracion set txtMaterialAutomatico = :Medidas where sContrato = :Contrato');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
              Connection.zCommand.Params.ParamByName('Medidas').DataType  := ftString;
              Connection.zCommand.Params.ParamByName('Medidas').Value     := MaterialAuto ;
              Connection.zCommand.ExecSQL;
            end;
          end;   //Fin else Actualiza....

          Fila := Fila + 1;
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          ProgressBar1.Max      := ProgressBar1.Max + 1;
          ProgressBar1.Position := ProgressBar1.Position + 1 ;
        end; // Fin del while..

        try
          //Kardex('Importacion de Datos','Termina Proceso', 'Anexo C', '', '', '', '' );
          Kardex('Importacion de Datos','Termina Proceso', 'Anexo C', '', '', '', '' );
        except
          on e : exception do
            // Esta parte debe validarse por separado para evitar que si se encuentra un error en esta parte se cancele todo lo demas
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al registrar en kardex Importacion de Anexo C', 0);
        end;
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DT'}
      //Para Subir el anexo DT
      if rAnexoDT.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosDT('AnexoDT') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        iColumna := 4;
        progressBar1.Max  := 0;
        sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
        while (DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]) <> '30/12/1899') and (iColumna <= 100) do
        begin
          dFecha := ExcelWorkSheet1.Cells.Item[1, iColumna];
          //sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
          DecodeDate(dFecha, myYear, myMonth, myDay);
          if myDay > 1 then
            dFecha := EncodeDate(myYear, myMonth, 1);
          sFecha := DateToStr(dFecha);

          ArrFechas[iColumna - 3] := sFecha;
          iColumna := iColumna + 1;
        end;

        iColumna := iColumna - 4;
        Fila := Fila + 1;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        if MessageDlg('Desea actualizar el anexo DT?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          {Consultamos si existen la distribucion del Anexo DT..}
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select * from anexosmensuales Where sContrato = :contrato And sIdConvenio = :Convenio');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
          Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Convenio').Value    := Global_Convenio;
          Connection.zCommand.Open;

          if connection.zCommand.RecordCount > 0  then
            If MessageDlg('Desea reemplzar la Distribucion Existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              chkBorrar.Checked := True;

          // Se elimina el anexo DT..
          if chkBorrar.Checked then
          begin
            CodErr1 := 'Importacion de Plantillas de Anexo DT';
            CodErr2 := 'Al Eliminar registro de anexosmensuales';

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('delete from anexosmensuales Where sContrato = :contrato And sIdConvenio = :Convenio');
            Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
            Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Convenio').Value    := Global_Convenio;
            connection.zCommand.ExecSQL();
          end
          else
          begin
            {Sino Actualizamos en 0 las cantidades..}
            CodErr1 := 'Importacion de Plantillas de Anexo DT';
            CodErr2 := 'Al inicializar a 0 el campos DT en anexosmensuales';

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update anexosmensuales SET dt = 0 Where sContrato = :contrato And sIdConvenio = :Convenio');
            Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Contrato').Value    := global_contrato;
            Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Convenio').Value    := Global_Convenio;
            connection.zCommand.ExecSQL();
          end;

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsWbs := '';
            ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 2];
            ImpsAnexo           := ExcelWorkSheet1.Cells.Item[Fila, 3];

            ImpsWbsAnterior := '';
            dVentaMN := 0;
            dVentaDLL := 0;

            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sWbs, dVentaMN, dVentaDLL From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad" and sAnexo =:Anexo ');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Actividad').Value  := ImpsNumeroActividad;
            Connection.qryBusca.Params.ParamByName('Anexo').DataType   := ftString;
            Connection.qryBusca.Params.ParamByName('Anexo').value      := ImpsAnexo;
            Connection.qryBusca.Open;

            if Connection.QryBusca.RecordCount > 0 then
            begin
              ImpsWbsAnterior := Connection.QryBusca.FieldValues['sWbs'];
              dVentaMN := Connection.QryBusca.FieldValues['dVentaMN'];
              dVentaDLL := Connection.QryBusca.FieldValues['dVentaDLL'];
            end;

            for iRegistros := 1 to iColumna do
            begin
              CodErr1 := '';
              CodErr2 := '';

              sRecorrido := ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 3];
              if (sRecorrido = ' ') or (sRecorrido = '  ') or (sRecorrido = '   ') or (sRecorrido = '    ') then
                MessageDlg('PDA ' + ImpsNumeroActividad + ' CON ESPACIOS EN LA COLUMNA ' + IntToStr(iRegistros), mtInformation, [mbOk], 0)
              else
                ImpfValor := ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 3];

              if ImpfValor <> 0 then
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dt From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :wbs ' +
                                            'And sNumeroActividad = :Actividad And dIdFecha = :Fecha AND sAnexo = :Anexo');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := ImpsNumeroActividad;
                Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                Connection.qryBusca.Params.ParamByName('Fecha').Value := StrToDate(ArrFechas[iRegistros]);
                Connection.qryBusca.Params.ParamByName('Anexo').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Anexo').Value := ImpsAnexo;
                Connection.qryBusca.Open;

                if Connection.qryBusca.RecordCount = 0 then
                begin
                  CodErr1 := 'Importación de Plantilla de Anexo DT';
                  CodErr2 := 'Al Insetar registro en anexosmensuales';

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO anexosmensuales ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, DT, DEmn, DEdll, sAnexo) ' +
                                              ' VALUES (:contrato, :convenio, :fecha, :Wbs, :actividad, :dt, :DEmn, :DEdll, :Anexo)');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                  Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                  Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('DT').value := ImpfValor;
                  Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor * dVentaMN;
                  Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('DEdll').value := ImpfValor * dVentaDLL;
                  Connection.zCommand.Params.ParamByName('Anexo').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Anexo').value := ImpsAnexo;
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  if Not SobreTodos then
                    Resp := MessageDlg('La partida de la Orden de Trabajo identificada en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroOrden + ' - ' + Global_Convenio + ' - ' + sWbs + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                       '¿Desea sobreescribirla?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    CodErr1 := 'Importación de Plantilla de Anexo DT';
                    CodErr2 := 'Al Actualizar registro en anexosmensuales';

                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE anexosmensuales SET DT = :dt, DEmn = :DEmn, DEdll = :DEdll, sAnexo = :Anexo Where sContrato = :Contrato And ' +
                                                'sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha');
                    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                    Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                    Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                    Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('DT').value := ImpfValor;
                    Connection.zCommand.Params.ParamByName('DT').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('DT').value := ImpfValor + Connection.qryBusca.FieldValues['dt'];
                    Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('DEmn').value := (ImpfValor + Connection.qryBusca.FieldValues['dt']) * dVentaMN;
                    Connection.zCommand.Params.ParamByName('DEdll').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('DEdll').value := (ImpfValor + Connection.qryBusca.FieldValues['dt']) * dVentaDLL;
                    Connection.zCommand.Params.ParamByName('Anexo').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Anexo').value := ImpsAnexo;
                    connection.zCommand.ExecSQL;
                  end;
                end
              end
            end;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DMA, DMO, DME'}
      //Para Subir el anexo DMA, DMO o DME
      if (rAnexoDMA.Checked) or (rAnexoDMO.Checked) or(rAnexoDME.Checked) then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if rAnexoDMA.Checked then
        begin
          if ValidaAnexosDME('Material', 'insumos', 'sIdInsumo') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla := 'distribuciondematerial';
          ImpsWbs := 'sIdMaterial';
          ImpsAnexo := 'DMA';
        end;

        if rAnexoDMO.Checked then
        begin
          if ValidaAnexosDME('Personal', 'personal', 'sIdPersonal') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla := 'distribuciondepersonal';
          ImpsWbs := 'sIdPersonal';
          ImpsAnexo := 'DMO';
        end;

        if rAnexoDME.Checked then
        begin
          if ValidaAnexosDME('Equipo', 'equipos', 'sIdEquipo') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'distribuciondeequipos';
          ImpsWbs   := 'sIdEquipo';
          ImpsAnexo := 'DME';
        end;

        iColumna := 3;
        sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
        while (DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]) <> '30/12/1899') and (iColumna <= 100) do
        begin
          sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
          ArrFechas[iColumna - 2] := sFecha;
          iColumna := iColumna + 1;
        end;

        iColumna := iColumna - 3;
        progressBar1.Max  := 0;
        Fila := Fila + 1;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        //chkBorrar.Checked := True;
        if MessageDlg('Desea Actualizar el anexo ' + ImpsAnexo + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          // Se elimina el DMA existente
          if chkBorrar.Checked then
          begin
              CodErr1 := 'Importación de plantillas de anexos DMA, DMO, DME';
              CodErr2 := 'Al borrar registros en ' + sTabla;

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('delete from ' + sTabla + ' Where sContrato = :contrato');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.ExecSQL();
          end;

//**********************************************************
          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdConvenio', ftString, 100);
          Existir.FieldDefs.Add(ImpsWbs, ftString, 25);
          Existir.FieldDefs.Add('dIdFecha', ftDate, 0);
          Existir.Open;
          Existir.EmptyTable;
//**********************************************************

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 2];

            for iRegistros := 1 to iColumna do
            begin
                CodErr1 := '';
                CodErr2 := '';

                ImpfValor :=  ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 2];

                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select dCantidad From ' + sTabla + ' Where sContrato = :Contrato ' +
                            'And ' + ImpsWbs + ' = :idDistribucion And dIdFecha = :Fecha');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                Connection.qryBusca.Params.ParamByName('idDistribucion').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('idDistribucion').Value := ImpsNumeroActividad;
                Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                Connection.qryBusca.Params.ParamByName('Fecha').Value := StrToDate(ArrFechas[iRegistros]);
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount = 0 then
                begin
                    CodErr1 := 'Importación de plantillas de anexos DMA, DMO, DME';
                    CodErr2 := 'Al insertar registros en ' + sTabla;

                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('INSERT INTO ' + sTabla + ' ( sContrato, dIdFecha, ' + ImpsWbs + ', dCantidad) ' +
                                    ' VALUES (:contrato, :fecha, :idDistribucion, :cantidad)');
                    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    Connection.zCommand.Params.ParamByName('idDistribucion').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('idDistribucion').value := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                    Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('cantidad').value := ImpfValor;
                    connection.zCommand.ExecSQL;
                end
                else
                begin
                    if Not SobreTodos then
                       Resp := MessageDlg('El Recurso '+ImpsAnexo+' identificado en EXCEL ya existe en la base de datos:' + #10 +
                                         ImpsContrato + ' - ' + ImpsIsometrico + ' - ' + ImpiRevision + #10 + #10 +
                                         '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                    if Resp = mrYesToAll then
                       SobreTodos := True;

                    if (Resp = mrYes) or SobreTodos then
                       Resp := mrYes;

                    if Resp = mrCancel then
                       Raise Exception.Create('Proceso Cancelado por el Usuario.');

                    if Resp = mrYes then
                    begin
                        CodErr1 := 'Importación de plantillas de anexos DMA, DMO, DME';
                        CodErr2 := 'Al actualizar registros en ' + sTabla;

                        connection.zCommand.Active := False;
                        connection.zCommand.SQL.Clear;
                        connection.zCommand.SQL.Add('UPDATE ' + sTabla + ' SET dCantidad = :cantidad Where sContrato = :Contrato And ' +
                                        ' ' + ImpsWbs + ' = :idDistribucion And dIdFecha = :Fecha');
                        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                        Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                        Connection.zCommand.Params.ParamByName('idDistribucion').DataType := ftString;
                        Connection.zCommand.Params.ParamByName('idDistribucion').value := ImpsNumeroActividad;
                        Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                        Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                        Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                        Connection.zCommand.Params.ParamByName('cantidad').value := ImpfValor;
                        connection.zCommand.ExecSQL;
                    end;
                end;
                // Cargar la lista de registros procesados
                Existir.Append;
                Existir.FieldByName('sContrato').AsString := ImpsContrato;
                Existir.FieldByName('sIdConvenio').AsString := Global_Convenio;
                Existir.FieldByName(ImpsWbs).AsString := ImpsNumeroActividad;
                Existir.FieldByName('dIdFecha').AsDateTime := StrToDate(ArrFechas[iRegistros]);
                Existir.Post;
            end;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
          end;
        end;
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DE'}
      //Anexo DE Moneda Nacional....
      if rAnexoDE.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosDT('AnexoDEMN') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        iColumna := 4;
        progressBar1.Max := 0;
        sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
        while (DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]) <> '30/12/1899') and (iColumna <= 100) do
        begin
          sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
          ArrFechas[iColumna - 3] := sFecha;
          iColumna := iColumna + 1;
        end;
        iColumna := iColumna - 4;
        Fila := Fila + 1;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        if MessageDlg('Desea actualizar el anexo DE en Moneda Nacional?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if chkBorrar.Checked then
          begin
            CodErr1 := 'Importación de Plantilla de Anexo DE';
            CodErr2 := 'Al inicializar a 0 registros en anexosmensuales';

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update anexosmensuales SET DEmn = 0 Where sContrato = :contrato And sIdConvenio = :Convenio');
            Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
            connection.zCommand.ExecSQL();
          end;

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsWbs := '';
            ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 2];
            ImpsAnexo           := ExcelWorkSheet1.Cells.Item[Fila, 3];

            ImpsWbsAnterior := '';
            dVentaMN  := 0;
            dVentaDLL := 0;

            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sWbs, dVentaMN, dVentaDLL From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad" and sAnexo =:Anexo ');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
            Connection.qryBusca.Params.ParamByName('Anexo').DataType     := ftString;
            Connection.qryBusca.Params.ParamByName('Anexo').value        := ImpsAnexo;
            Connection.qryBusca.Open;
            if Connection.QryBusca.RecordCount > 0 then
            begin
              ImpsWbsAnterior := Connection.QryBusca.FieldValues['sWbs'];
              dVentaMN        := Connection.QryBusca.FieldValues['dVentaMN'];
              dVentaDLL       := Connection.QryBusca.FieldValues['dVentaDLL'];
            end;

            for iRegistros := 1 to iColumna do
            begin
              CodErr1 := '';
              CodErr2 := '';

              ImpfValor := ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 3];
              if ImpfValor <> 0 then
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select DEmn From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :wbs ' +
                              'And sNumeroActividad = :Actividad And dIdFecha = :Fecha and sAnexo =:Anexo ');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value     := global_Contrato;
                Connection.qryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                Connection.qryBusca.Params.ParamByName('Convenio').Value     := global_Convenio;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType       := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').value          := ImpsWbsAnterior;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
                Connection.qryBusca.Params.ParamByName('Fecha').DataType     := ftDate;
                Connection.qryBusca.Params.ParamByName('Fecha').Value        := StrToDate(ArrFechas[iRegistros]);
                Connection.qryBusca.Params.ParamByName('Anexo').DataType     := ftString;
                Connection.qryBusca.Params.ParamByName('Anexo').value        := ImpsAnexo;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount = 0 then
                begin
                  CodErr1 := 'Importación de Plantilla de Anexo DE';
                  CodErr2 := 'Al insertar registros en anexosmensuales';

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO anexosmensuales ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, DEmn, sAnexo) ' +
                                    ' VALUES (:contrato, :convenio, :fecha, :Wbs, :actividad, :DEmn, :Anexo)');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value  := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('convenio').value  := Global_Convenio;
                  Connection.zCommand.Params.ParamByName('Wbs').DataType    := ftString;
                  Connection.zCommand.Params.ParamByName('Wbs').value       := ImpsWbsAnterior;
                  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                  Connection.zCommand.Params.ParamByName('fecha').DataType  := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value     := StrToDate(ArrFechas[iRegistros]);
                  Connection.zCommand.Params.ParamByName('DEmn').DataType   := ftFloat;
                  Connection.zCommand.Params.ParamByName('DEmn').value      := ImpfValor;
                  Connection.zCommand.Params.ParamByName('Anexo').DataType  := ftString;
                  Connection.zCommand.Params.ParamByName('Anexo').value     := ImpsAnexo;
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  if Not SobreTodos then
                    Resp := MessageDlg('La partida de la Orden de Trabajo identificada en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsIsometrico + ' - ' + ImpiRevision + #10 + #10 +
                                       '¿Desea sobreescribirla?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    CodErr1 := 'Importación de Plantilla de Anexo DE';
                    CodErr2 := 'Al actualizar registros en anexosmensuales';

                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE anexosmensuales SET DEmn = :DEmn Where sContrato = :Contrato And ' +
                                      'sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha and sAnexo =:Anexo ');
                    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                    Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                    Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                    Connection.zCommand.Params.ParamByName('fecha').value := StrToDate(ArrFechas[iRegistros]);
                    Connection.zCommand.Params.ParamByName('DEmn').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('DEmn').value := ImpfValor + connection.QryBusca.FieldValues['DEmn'];
                    Connection.zCommand.Params.ParamByName('Anexo').DataType  := ftString;
                    Connection.zCommand.Params.ParamByName('Anexo').value     := ImpsAnexo;
                    connection.zCommand.ExecSQL;
                  end;
                end
              end;
            end;
            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DE DLL'}
      //Anexo DE DLL
      if rAnexoDEDLL.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosDT('AnexoDEDLL') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        iColumna := 4;
        progressBar1.Max  := 0;
        sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
        while (DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]) <> '30/12/1899') and (iColumna <= 100) do
        begin
          sFecha := DateToStr(ExcelWorkSheet1.Cells.Item[1, iColumna]);
          ArrFechas[iColumna - 3] := sFecha;
          iColumna := iColumna + 1;
        end;
        iColumna := iColumna - 4;
        Fila := Fila + 1;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        if MessageDlg('Desea actualizar el anexo DE en Moneda Extranjera?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if chkBorrar.Checked then
          begin
            CodErr1 := 'Importación de Plantilla de Anexo DE (Dolares)';
            CodErr2 := 'Al poner a 0 el campo DEdll en la tabla anexosmensuales';

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update anexosmensuales SET DEdll = 0 Where sContrato = :contrato And sIdConvenio = :Convenio');
            Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Convenio').Value := Global_Convenio;
            connection.zCommand.ExecSQL();
          end;

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorkSheet1.Cells.Item[Fila, 1];

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsWbs := '';
            ImpsNumeroActividad := ExcelWorkSheet1.Cells.Item[Fila, 2];
            ImpsAnexo           := ExcelWorkSheet1.Cells.Item[Fila, 3];

            ImpsWbsAnterior := '';
            dVentaMN := 0;
            dVentaDLL := 0;
            Connection.qryBusca.Active := False;
            Connection.qryBusca.SQL.Clear;
            Connection.qryBusca.SQL.Add('Select sWbs, dVentaMN, dVentaDLL From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad" and sAnexo =:Anexo ');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Actividad').Value := ImpsNumeroActividad;
            Connection.qryBusca.Params.ParamByName('Anexo').DataType  := ftString;
            Connection.qryBusca.Params.ParamByName('Anexo').value     := ImpsAnexo;
            Connection.qryBusca.Open;
            if Connection.QryBusca.RecordCount > 0 then
            begin
              ImpsWbsAnterior := Connection.QryBusca.FieldValues['sWbs'];
              dVentaMN := Connection.QryBusca.FieldValues['dVentaMN'];
              dVentaDLL := Connection.QryBusca.FieldValues['dVentaDLL'];
            end;

            for iRegistros := 1 to iColumna do
            begin
              CodErr1 := '';
              CodErr2 := '';

              ImpfValor := ExcelWorkSheet1.Cells.Item[Fila, iRegistros + 3];
              if ImpfValor <> 0 then
              begin
                Connection.qryBusca.Active := False;
                Connection.qryBusca.SQL.Clear;
                Connection.qryBusca.SQL.Add('Select DEdll From anexosmensuales Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :wbs ' +
                              'And sNumeroActividad = :Actividad And dIdFecha = :Fecha and sAnexo =:Anexo');
                Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio;
                Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
                Connection.qryBusca.Params.ParamByName('Actividad').Value := ImpsNumeroActividad;
                Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                Connection.qryBusca.Params.ParamByName('Fecha').Value := StrToDate(ArrFechas[iRegistros]);
                Connection.qryBusca.Params.ParamByName('Anexo').DataType  := ftString;
                Connection.qryBusca.Params.ParamByName('Anexo').value     := ImpsAnexo;
                Connection.qryBusca.Open;
                if Connection.qryBusca.RecordCount = 0 then
                begin
                  CodErr1 := 'Importación de Plantilla de Anexo DE (Dolares)';
                  CodErr2 := 'Al insertar registros en la tabla anexosmensuales';

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO anexosmensuales ( sContrato , sIdConvenio, dIdFecha, sWbs, sNumeroActividad, DEdll, sAnexo) ' +
                                                              ' VALUES (:contrato, :convenio, :fecha, :Wbs, :actividad, :DEdll, :Anexo)');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('convenio').value := Global_Convenio;
                  Connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Wbs').value := ImpsWbsAnterior;
                  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                  Connection.zCommand.Params.ParamByName('fecha').DataType  := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value     := StrToDate(ArrFechas[iRegistros]);
                  Connection.zCommand.Params.ParamByName('DEdll').DataType  := ftFloat;
                  Connection.zCommand.Params.ParamByName('DEdll').value     := ImpfValor;
                  Connection.zCommand.Params.ParamByName('Anexo').DataType  := ftString;
                  Connection.zCommand.Params.ParamByName('Anexo').value     := ImpsAnexo;
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  if Not SobreTodos then
                    Resp := MessageDlg('La partida de la Orden de Trabajo identificada en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsIsometrico + ' - ' + ImpiRevision + #10 + #10 +
                                       '¿Desea sobreescribirla?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    CodErr1 := 'Importación de Plantilla de Anexo DE (Dolares)';
                    CodErr2 := 'Al actualizar registros en la tabla anexosmensuales';

                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE anexosmensuales SET DEdll = :DEdll Where sContrato = :Contrato And ' +
                                                'sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Actividad And dIdFecha = :Fecha and sAnexo =:Anexo ');
                    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('convenio').value  := Global_Convenio;
                    Connection.zCommand.Params.ParamByName('Wbs').DataType    := ftString;
                    Connection.zCommand.Params.ParamByName('Wbs').value       := ImpsWbsAnterior;
                    Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('actividad').value := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('fecha').DataType  := ftDate;
                    Connection.zCommand.Params.ParamByName('fecha').value     := StrToDate(ArrFechas[iRegistros]);
                    Connection.zCommand.Params.ParamByName('DEdll').DataType  := ftFloat;
                    Connection.zCommand.Params.ParamByName('DEdll').value     := ImpfValor + connection.QryBusca.FieldValues['DEdll'];
                    Connection.zCommand.Params.ParamByName('Anexo').DataType  := ftString;
                    Connection.zCommand.Params.ParamByName('Anexo').value     := ImpsAnexo;
                    connection.zCommand.ExecSQL;
                  end;
                end
              end;
            end;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorkSheet1.Cells.Item[Fila, 1];
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DE PERSONAL'}
      //ANEXO DE PERSONAL..
      If rAnexoPersonal.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosPE('Personal') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        Fila := 2 ;
        ProgressBar1.Max := 0;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if sValue <> global_contrato then
           Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        //if MessageDlg('Desea remplazar el catalogo de personal existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if ValidaDeleteAnexosP('personal', 'sIdPersonal', 'bitacoradepersonal', 'recursospersonal') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          {Solucion Integridad referencial grupospersonal _ personal... 11 Junio 2011..}
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select * from grupospersonal where sIdGrupo ="S/C"');
          connection.zCommand.Open;

          if connection.zCommand.RecordCount = 0 then
          begin
              try
                 connection.zCommand.Active := False;
                 connection.zCommand.SQL.Clear;
                 connection.zCommand.SQL.Add('insert into grupospersonal (sIdGrupo, sDescripcion, iOrden) values ("S/C", "SIN CATEGORIA", 0)');
                 connection.zCommand.ExecSQL;
              Except
              end;
          end;

          {Solucion Integridad referencial tipodepersonal _ personal... 11 Junio 2011..}
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select * from tiposdepersonal where sIdTipoPersonal ="PE-C"');
          connection.zCommand.Open;

          if connection.zCommand.RecordCount = 0 then
          begin
              try
                 connection.zCommand.Active := False;
                 connection.zCommand.SQL.Clear;
                 connection.zCommand.SQL.Add('insert into tiposdepersonal (sIdTipoPersonal, sDescripcion, sMascara) values ("PE-C", "PERSONAL DE CONSTRUCCION", "PC-")');
                 connection.zCommand.ExecSQL;
              Except
              end;
          end;
          {Termina solucion integridad..}

          {Se insertan los datos de personal..}
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('INSERT INTO personal ( sContrato, sIdPersonal, iItemOrden, sDescripcion, sIdTipoPersonal, sMedida, dCantidad, ' +
                                      'dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, dFechaInicio, dFechaFinal, lProrrateo, lCobro, lImprime, lAplicaTM, iJornada, lDistribuye, sAgrupaPersonal ) ' +
                                      ' VALUES (:contrato, :Personal, :Orden, :Descripcion, :Tipo, :Medida, :Cantidad, :CostoMN, :CostoDLL, :VentaMN, :VentaDLL, :FechaI, :FechaF, "Si", "Si", "Si", "Si" , :Jornada, "Si", :AgrupaP )');

//**********************************************************
          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdPersonal', ftString, 25);
          Existir.FieldDefs.Add('sIdTipoPersonal', ftString, 4);
          Existir.Open;
          Existir.EmptyTable;
//**********************************************************

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsNumeroActividad := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpiItemOrden       := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpmDescripcion     := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpdCantidadAnexo   := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoMN         := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoDLL        := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaMN         := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaDLL        := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
            ImpdFechaInicio     := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
            ImpdFechaFinal      := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
            ImpsTipo            := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
            ImpsGrupo           := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;

            // Inserto Datos a la Tabla .....
            CodErr1 := 'Importación de Plantilla de Anexo de Personal';
            CodErr2 := 'Al tratar de insertar registros en la tabla personal';

            Try
              connection.zCommand.Active := False;
              Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
              Connection.zCommand.Params.ParamByName('Personal').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('Personal').value       := ImpsNumeroActividad;
              Connection.zCommand.Params.ParamByName('Tipo').DataType        := ftString;
              Connection.zCommand.Params.ParamByName('Tipo').value           := ImpsTipo;
              Connection.zCommand.Params.ParamByName('Orden').DataType       := ftInteger;
              Connection.zCommand.Params.ParamByName('Orden').value          := ImpiItemOrden;
              Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
              Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
              Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Medida').value         := ImpsMedida;
              Connection.zCommand.Params.ParamByName('Cantidad').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('Cantidad').value       := ImpdCantidadAnexo;
              Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoMN').value        := ImpdCostoMN;
              Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoDLL').value       := ImpdCostoDLL;
              Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaMN').value        := ImpdVentaMN;
              Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaDLL').value       := ImpdVentaDLL;
              Connection.zCommand.Params.ParamByName('FechaI').DataType      := ftDate ;
              Connection.zCommand.Params.ParamByName('FechaI').value         := ImpdFechaInicio ;
              Connection.zCommand.Params.ParamByName('FechaF').DataType      := ftDate;
              Connection.zCommand.Params.ParamByName('FechaF').value         := ImpdFechaFinal ;
              Connection.zCommand.Params.ParamByName('Jornada').DataType     := ftInteger ;
              Connection.zCommand.Params.ParamByName('Jornada').value        := ImpsGrupo;
              Connection.zCommand.Params.ParamByName('AgrupaP').DataType     := ftString;
              Connection.zCommand.Params.ParamByName('AgrupaP').value        := 'S/C';
              Connection.zCommand.ExecSQL;
//**********************************************************
            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                  // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                  if Not SobreTodos then
                    Resp := MessageDlg('El registro de personal identificado en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                       '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    connection.QryBusca2.Active := False;
                    connection.QryBusca2.SQL.Clear;
                    connection.QryBusca2.SQL.Add('UPDATE personal SET iItemOrden = :Orden, sDescripcion = :Descripcion, sMedida = :Medida, ' +
                                                'dCantidad = :Cantidad, dCostoMN = :CostoMN, dCostoDLL = :CostoDLL, dVentaMN =:VentaMN, ' +
                                                'dVentaDLL = :VentaDLL, iJornada = :Jornada ' +
                                                'WHERE sContrato = :Contrato and sIdPersonal = :Personal and sIdTipoPersonal =:Tipo and sAgrupaPersonal =:Agrupa ');
                    Connection.QryBusca2.Params.ParamByName('contrato').DataType    := ftString;
                    Connection.QryBusca2.Params.ParamByName('contrato').AsString    := ImpsContrato;
                    Connection.QryBusca2.Params.ParamByName('Personal').DataType    := ftString;
                    Connection.QryBusca2.Params.ParamByName('Personal').AsString    := ImpsNumeroActividad;
                    Connection.QryBusca2.Params.ParamByName('Orden').DataType       := ftString;
                    Connection.QryBusca2.Params.ParamByName('Orden').AsString       := ImpiItemOrden;
                    Connection.QryBusca2.Params.ParamByName('Tipo').DataType        := ftString;
                    Connection.QryBusca2.Params.ParamByName('Tipo').AsString        := ImpsTipo;
                    Connection.QryBusca2.Params.ParamByName('Descripcion').DataType := ftMemo;
                    Connection.QryBusca2.Params.ParamByName('Descripcion').AsString := Trim(ImpmDescripcion);
                    Connection.QryBusca2.Params.ParamByName('Medida').DataType      := ftString;
                    Connection.QryBusca2.Params.ParamByName('Medida').AsString      := ImpsMedida;
                    Connection.QryBusca2.Params.ParamByName('Cantidad').DataType    := ftFloat;
                    Connection.QryBusca2.Params.ParamByName('Cantidad').AsString    := ImpdCantidadAnexo;
                    Connection.QryBusca2.Params.ParamByName('CostoMN').DataType     := ftFloat;
                    Connection.QryBusca2.Params.ParamByName('CostoMN').AsString     := ImpdCostoMN;
                    Connection.QryBusca2.Params.ParamByName('CostoDLL').DataType    := ftFloat;
                    Connection.QryBusca2.Params.ParamByName('CostoDLL').AsString    := ImpdCostoDLL;
                    Connection.QryBusca2.Params.ParamByName('VentaMN').DataType     := ftFloat;
                    Connection.QryBusca2.Params.ParamByName('VentaMN').AsString     := ImpdVentaMN;
                    Connection.QryBusca2.Params.ParamByName('VentaDLL').DataType    := ftFloat;
                    Connection.QryBusca2.Params.ParamByName('VentaDLL').AsString    := ImpdVentaDLL;
                    Connection.QryBusca2.Params.ParamByName('Jornada').DataType     := ftInteger;
                    Connection.QryBusca2.Params.ParamByName('Jornada').AsString     := ImpsGrupo;
                    Connection.QryBusca2.Params.ParamByName('Agrupa').DataType      := ftString;
                    Connection.QryBusca2.Params.ParamByName('Agrupa').AsString      := 'S/C';
                    Connection.QryBusca2.ExecSQL;
                  end;
                end
                else
                  Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString       := ImpsContrato;
            Existir.FieldByName('sIdPersonal').AsString     := ImpsNumeroActividad;
            Existir.FieldByName('sIdTipoPersonal').AsString := ImpsTipo;
            Existir.Post;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;
//**********************************************************
          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from personal where sContrato = :Contrato ');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
            Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                               '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              connection.zCommand.First;
              while Not connection.zCommand.Eof do
              begin
                if Not Existir.Locate('sIdPersonal', connection.zCommand.FieldByName('sIdPersonal').AsString, []) then
                  Connection.zCommand.Delete;
                connection.zCommand.Next;
              end;
            end;
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO EQUIPO'}
      //ANEXO DE EQUIPO
      If rAnexoEquipo.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosPE('Equipo') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        Fila := 2 ;
        ProgressBar1.Max := 0;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        //if MessageDlg('Desea remplazar el catalogo de Equipos Existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if ValidaDeleteAnexosP('equipos', 'sIdEquipo', 'bitacoradeequipos', 'recursosequipo') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          {Solucion Integridad referencial tipodeequipo _ equipos... 11 Junio 2011..}
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select * from tiposdeequipo where sIdTipoEquipo ="EQ-C"');
          connection.zCommand.Open;

          if connection.zCommand.RecordCount = 0 then
          begin
              try
                 connection.zCommand.Active := False;
                 connection.zCommand.SQL.Clear;
                 connection.zCommand.SQL.Add('insert into tiposdeequipo (sIdTipoEquipo, sDescripcion, sMascara) values ("EQ-C", "EQUIPO DE CONSTRUCCION", "EC-")');
                 connection.zCommand.ExecSQL;
              Except
              end;
          end;
          {Termina solucion integridad..}

          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdEquipo', ftString, 25);
          Existir.Open;
          Existir.EmptyTable;
//**********************************************************

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsNumeroActividad := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpiItemOrden       := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpmDescripcion     := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpdCantidadAnexo   := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoMN         := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoDLL        := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaMN         := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaDLL        := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
            ImpdFechaInicio     := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
            ImpdFechaFinal      := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
            ImpsTipo            := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
            ImpsGrupo           := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;

            // Inserto Datos a la Tabla .....
            CodErr1 := 'Importación de Plantilla de Anexo de Equipos';
            CodErr2 := 'Al tratar de insertar registros en la tabla equipos';

            Try
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('INSERT INTO equipos ( sContrato, sIdEquipo, iItemOrden, sDescripcion, sIdTipoEquipo, sMedida, dCantidad, ' +
                                          'dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, dFechaInicio, dFechaFinal, lProrrateo, lCobro, lImprime, iJornada, lDistribuye ) ' +
                                          ' VALUES (:contrato, :Equipo, :Orden, :Descripcion, :Tipo, :Medida, :Cantidad, :CostoMN, :CostoDLL, :VentaMN, :VentaDLL, :FechaI, :FechaF, "Si", "Si", "Si", :Jornada, "Si" )');
              Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
              Connection.zCommand.Params.ParamByName('Equipo').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Equipo').value         := ImpsNumeroActividad;
              Connection.zCommand.Params.ParamByName('Tipo').DataType        := ftString;
              Connection.zCommand.Params.ParamByName('Tipo').value           := ImpsTipo;
              Connection.zCommand.Params.ParamByName('Orden').DataType       := ftInteger;
              Connection.zCommand.Params.ParamByName('Orden').value          := ImpiItemOrden;
              Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
              Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
              Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Medida').value         := ImpsMedida;
              Connection.zCommand.Params.ParamByName('Cantidad').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('Cantidad').value       := ImpdCantidadAnexo;
              Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoMN').value        := ImpdCostoMN;
              Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoDLL').value       := ImpdCostoDLL;
              Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaMN').value        := ImpdVentaMN;
              Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaDLL').value       := ImpdVentaDLL;
              Connection.zCommand.Params.ParamByName('FechaI').DataType      := ftDate ;
              Connection.zCommand.Params.ParamByName('FechaI').value         := ImpdFechaInicio ;
              Connection.zCommand.Params.ParamByName('FechaF').DataType      := ftDate;
              Connection.zCommand.Params.ParamByName('FechaF').value         := ImpdFechaFinal ;
              Connection.zCommand.Params.ParamByName('Jornada').DataType     := ftInteger ;
              Connection.zCommand.Params.ParamByName('Jornada').value        := ImpsGrupo;
              Connection.zCommand.ExecSQL;
//**********************************************************
            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                  // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                  if Not SobreTodos then
                    Resp := MessageDlg('El registro de equipo identificado en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                       '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE equipos SET iItemOrden = :Orden, sDescripcion = :Descripcion, sIdTipoEquipo =:Tipo, ' +
                                                'sMedida = :Medida, dCantidad = :Cantidad, dCostoMN = :CostoMN, dCostoDLL = :CostoDLL, ' +
                                                'dVentaMN = :VentaMN, dVentaDLL = :VentaDLL, dFechaInicio = :FechaI, dFechaFinal = :FechaF, ' +
                                                'lProrrateo = "Si", lCobro = "Si", lImprime = "Si", iJornada = :Jornada, lDistribuye = "Si" ' +
                                                'WHERE sContrato = :Contrato and sIdEquipo = :Equipo');
                    Connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString;
                    Connection.zCommand.Params.ParamByName('Contrato').Value       := ImpsContrato;
                    Connection.zCommand.Params.ParamByName('Equipo').DataType      := ftString;
                    Connection.zCommand.Params.ParamByName('Equipo').Value         := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('Tipo').DataType        := ftString;
                    Connection.zCommand.Params.ParamByName('Tipo').Value           := ImpsTipo;
                    Connection.zCommand.Params.ParamByName('Orden').DataType       := ftString;
                    Connection.zCommand.Params.ParamByName('Orden').Value          := ImpiItemOrden;
                    Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                    Connection.zCommand.Params.ParamByName('Descripcion').Value    := Trim(ImpmDescripcion);
                    Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
                    Connection.zCommand.Params.ParamByName('Medida').Value         := ImpsMedida;
                    Connection.zCommand.Params.ParamByName('Cantidad').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('Cantidad').Value       := ImpdCantidadAnexo;
                    Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoMN').Value        := ImpdCostoMN;
                    Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoDLL').Value       := ImpdCostoDLL;
                    Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaMN').Value        := ImpdVentaMN;
                    Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaDLL').Value       := ImpdVentaDLL;
                    Connection.zCommand.Params.ParamByName('FechaI').DataType      := ftDate;
                    Connection.zCommand.Params.ParamByName('FechaI').Value         := ImpdFechaInicio;
                    Connection.zCommand.Params.ParamByName('FechaF').DataType      := ftDate;
                    Connection.zCommand.Params.ParamByName('FechaF').Value         := ImpdFechaFinal;
                    Connection.zCommand.Params.ParamByName('Jornada').DataType     := ftInteger;
                    Connection.zCommand.Params.ParamByName('Jornada').Value        := ImpsGrupo;
                    Connection.zCommand.ExecSQL;
                  end;
                end
                else
                  Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString := ImpsContrato;
            Existir.FieldByName('sIdEquipo').AsString := ImpsNumeroActividad;
            Existir.Post;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;
//**********************************************************
          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from equipos where sContrato = :Contrato');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
            Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                               '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              connection.zCommand.First;
              while Not connection.zCommand.Eof do
              begin
                if Not Existir.Locate('sIdEquipo', connection.zCommand.FieldByName('sIdEquipo').AsString, []) then
                  Connection.zCommand.Delete;
                connection.zCommand.Next;
              end;
            end;
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DE BASICOS'}
      //ANEXO DE BASICOS..
      If rAnexoBasicos.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosBasicos('Basico') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        Fila := 2 ;
        ProgressBar1.Max := 0;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        //if MessageDlg('Desea remplazar el catalogo de Basicos existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if ValidaDeleteAnexosP('basicos', 'sIdBasico', '', 'recursosbasicos') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

//**********************************************************
          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdBasico', ftString, 25);
          Existir.Open;
          Existir.EmptyTable;
//**********************************************************

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsNumeroActividad := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpmDescripcion     := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoMN         := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoDLL        := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaMN         := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaDLL        := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;

            Try
              {Se insertan los datos de personal..}
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('INSERT INTO basicos ( sContrato, sIdBasico, sDescripcion, sMedida, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sSimbolo) ' +
                                          ' VALUES (:contrato, :Basico, :Descripcion, :Medida, :CostoMN, :CostoDLL, :VentaMN, :VentaDLL, "")');

              // Inserto Datos a la Tabla .....
              CodErr1 := 'Importación de Plantilla de Anexo de Básicos';
              CodErr2 := 'Al tratar de insertar registros en la tabla basicos';

              connection.zCommand.Active := False;
              Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
              Connection.zCommand.Params.ParamByName('Basico').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Basico').value         := ImpsNumeroActividad;
              Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
              Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
              Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Medida').value         := ImpsMedida;
              Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoMN').value        := ImpdCostoMN;
              Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoDLL').value       := ImpdCostoDLL;
              Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaMN').value        := ImpdVentaMN;
              Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaDLL').value       := ImpdVentaDLL;
              Connection.zCommand.ExecSQL;
            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                  // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                  if Not SobreTodos then
                    Resp := MessageDlg('El registro de basicos identificado en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                       '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE basicos SET sDescripcion = :Descripcion, sMedida = :Medida, dCostoMN = :CostoMN, ' +
                                                'dCostoDLL = :CostoDLL, dVentaMN = :VentaMN, dVentaDLL = :VentaDLL, sSimbolo = :Simbolo ' +
                                                'WHERE sContrato = :Contrato and sIdBasico = :Basico');
                    Connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString;
                    Connection.zCommand.Params.ParamByName('Contrato').Value       := ImpsContrato;
                    Connection.zCommand.Params.ParamByName('Basico').DataType      := ftString;
                    Connection.zCommand.Params.ParamByName('Basico').Value         := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                    Connection.zCommand.Params.ParamByName('Descripcion').Value    := Trim(ImpmDescripcion);
                    Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
                    Connection.zCommand.Params.ParamByName('Medida').Value         := ImpsMedida;
                    Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoMN').Value        := ImpdCostoMN;
                    Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoDLL').Value       := ImpdCostoDLL;
                    Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaMN').Value        := ImpdVentaMN;
                    Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaDLL').Value       := ImpdVentaDLL;
                    Connection.zCommand.Params.ParamByName('Simbolo').DataType     := ftString;
                    Connection.zCommand.Params.ParamByName('Simbolo').Value        := '';
                    Connection.zCommand.ExecSQL;
                  end;
                end
                else
                  Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString := ImpsContrato;
            Existir.FieldByName('sIdBasico').AsString := ImpsNumeroActividad;
            Existir.Post;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;

//**********************************************************
          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from basicos where sContrato = :Contrato');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
            Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                               '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              connection.zCommand.First;
              while Not connection.zCommand.Eof do
              begin
                if Not Existir.Locate('sIdBasico', connection.zCommand.FieldByName('sIdBasico').AsString, []) then
                  Connection.zCommand.Delete;
                connection.zCommand.Next;
              end;
            end;
          end;
        end
      end;
      {$ENDREGION}

      {$REGION 'ANEXO DE HERRAMIENTAS'}
      //ANEXO DE HERRAMIENTAS..
      If rAnexoHerr.Checked then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if ValidaAnexosBasicos('Herramienta') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        Fila := 2 ;
        ProgressBar1.Max := 0;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        //if MessageDlg('Desea remplazar el catalogo de Herramientas existente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if ValidaDeleteAnexosP('herramientas', 'sIdHerramientas', '', 'recursosherramientas') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

//**********************************************************
          // Generar una lista de registros que deben existir
          Existir.Close;
          Existir.FieldDefs.Add('sContrato', ftString, 15);
          Existir.FieldDefs.Add('sIdHerramientas', ftString, 25);
          Existir.Open;
          Existir.EmptyTable;
//**********************************************************

          while (sValue <> '') do
          begin
            CodErr1 := '';
            CodErr2 := '';

            if lContratoActual then
              ImpsContrato := global_contrato
            else
              ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

            if ImpsContrato <> global_contrato then
              Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

            ImpsNumeroActividad := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpmDescripcion     := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoMN         := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoDLL        := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaMN         := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaDLL        := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;

            // Inserto Datos a la Tabla .....
            CodErr1 := 'Importación de Plantilla de Anexo de Herramientas';
            CodErr2 := 'Al tratar de insertar registros en la tabla herramientas';

            {Se insertan los datos de personal..}
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('INSERT INTO herramientas ( sContrato, sIdHerramientas, sDescripcion, sMedida, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sSimbolo, fFecha) ' +
                                        ' VALUES (:contrato, :Herramienta, :Descripcion, :Medida, :CostoMN, :CostoDLL, :VentaMN, :VentaDLL, "", :Fecha)');

            Try
              connection.zCommand.Active := False;
              Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
              Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
              Connection.zCommand.Params.ParamByName('Herramienta').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Herramienta').value    := ImpsNumeroActividad;
              Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
              Connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
              Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
              Connection.zCommand.Params.ParamByName('Medida').value         := ImpsMedida;
              Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoMN').value        := ImpdCostoMN;
              Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('CostoDLL').value       := ImpdCostoDLL;
              Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaMN').value        := ImpdVentaMN;
              Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
              Connection.zCommand.Params.ParamByName('VentaDLL').value       := ImpdVentaDLL;
              Connection.zCommand.Params.ParamByName('Fecha').DataType       := ftDate;
              Connection.zCommand.Params.ParamByName('Fecha').value          := Date;
              Connection.zCommand.ExecSQL;
            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                  // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                  if Not SobreTodos then
                    Resp := MessageDlg('El registro de herramientas identificado en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroActividad + ' - ' + Trim(ImpmDescripcion) + #10 + #10 +
                                       '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE herramientas SET sDescripcion = :Descripcion, sMedida = :Medida, dCostoMN = :CostoMN, ' +
                                                'dCostoDLL = :CostoDLL, dVentaMN = :VentaMN, dVentaDLL = :VentaDLL, sSimbolo = :Simbolo, fFecha = :Fecha ' +
                                                'WHERE sContrato = :Contrato and sIdHerramientas = :Herramienta');
                    Connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString;
                    Connection.zCommand.Params.ParamByName('Contrato').Value       := ImpsContrato;
                    Connection.zCommand.Params.ParamByName('Herramienta').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Herramienta').Value    := ImpsNumeroActividad;
                    Connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
                    Connection.zCommand.Params.ParamByName('Descripcion').Value    := Trim(ImpmDescripcion);
                    Connection.zCommand.Params.ParamByName('Medida').DataType      := ftString;
                    Connection.zCommand.Params.ParamByName('Medida').Value         := ImpsMedida;
                    Connection.zCommand.Params.ParamByName('CostoMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoMN').Value        := ImpdCostoMN;
                    Connection.zCommand.Params.ParamByName('CostoDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('CostoDLL').Value       := ImpdCostoDLL;
                    Connection.zCommand.Params.ParamByName('VentaMN').DataType     := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaMN').Value        := ImpdVentaMN;
                    Connection.zCommand.Params.ParamByName('VentaDLL').DataType    := ftFloat;
                    Connection.zCommand.Params.ParamByName('VentaDLL').Value       := ImpdVentaDLL;
                    Connection.zCommand.Params.ParamByName('Simbolo').DataType     := ftString;
                    Connection.zCommand.Params.ParamByName('Simbolo').Value        := '';
                    Connection.zCommand.Params.ParamByName('fecha').DataType       := ftDate;
                    Connection.zCommand.Params.ParamByName('fecha').Value          := Date;
                    Connection.zCommand.ExecSQL;
                  end;
                end
                else
                  Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString := ImpsContrato;
            Existir.FieldByName('sIdHerramientas').AsString := ImpsNumeroActividad;
            Existir.Post;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;

//**********************************************************
          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from herramientas where sContrato = :Contrato');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
            Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                               '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              connection.zCommand.First;
              while Not connection.zCommand.Eof do
              begin
                if Not Existir.Locate('sIdHerramientas', connection.zCommand.FieldByName('sIdHerramientas').AsString, []) then
                  Connection.zCommand.Delete;
                connection.zCommand.Next;
              end;
            end;
          end;
        end
      end;
      {$ENDREGION}    

      {$REGION 'ALCANCES X PARTIDA'}
      //IMPORTACION DE LOS ALCANCES X PARTIDA...
      if rbAlcances.Checked then
      begin
        CodErr1 := '';
        CodErr1 := '';

        Fila     := 1;
        iColumna := 0;
        sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
        while sValue <> '' do
        begin
          sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
          if (sValue <> '') then
            Inc(iColumna);

          Fila := Fila + 1;
        end;

        if iColumna <> 6 then
          Raise Exception.Create('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar los Alcances x Partida.');

        fila := 2 ;
        ProgressBar1.Max := 0;
        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sTipo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

        {Validacione de Contrato..}
        Fila       := 2;
        MiValor    := global_contrato;
        sValue     := global_contrato;
        lEncuentra := False;

        EliminaCuadro('H', 0);

        {Si se elige contrato de Excel o contrato actual..}
        if lContratoActual then
           sValue := global_contrato
        else
           sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        while MiValor <> '' do
        begin
          MiValor  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          {Si el contrro es Diferente a Caracter en Blanco..}
          if MiValor <> '' then
          begin
            if (sValue <> MiValor) then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            DatoE  := 'Texto';
            MiAnexo   := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            cadena    := 'C' ;
            ValidaCampo( DatoE, cadena, Fila, 'Actividad', false, '');
            ImpsNumeroActividad  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

            DatoE  := 'Numero';
            cadena    := 'D' ;
            ValidaCampo( DatoE, cadena, Fila, 'Id_Alcance', false, '');

            DatoE  := 'Texto';
            cadena    := 'E' ;
            ValidaCampo( DatoE, cadena, Fila, 'Descripcion', false, '');

            DatoE  := 'Decimal';
            cadena    := 'F' ;
            ValidaCampo( DatoE, cadena, Fila, 'Alcance', false, '');

            {Verificamos si existe las partidas en el anexo C}
            connection.QryBusca.Active := False;
            Connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select * from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio and sNumeroActividad =:Actividad and sAnexo =:Anexo ');
            Connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
            Connection.QryBusca.Params.ParamByName('Contrato').Value     := Global_Contrato;
            Connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
            Connection.QryBusca.Params.ParamByName('Convenio').Value     := Global_Convenio;
            Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.QryBusca.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
            Connection.QryBusca.Params.ParamByName('Anexo').DataType     := ftString;
            Connection.QryBusca.Params.ParamByName('Anexo').Value        := MiAnexo;
            connection.QryBusca.Open;

            {Registramos partidas no permitidas..}
            if connection.QryBusca.RecordCount = 0 then
               ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Actividad');

            {Verificamos si existen las anexos}
            connection.QryBusca.Active := False;
            Connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select sAnexo from anexos where sAnexo =:Anexo');
            Connection.QryBusca.Params.ParamByName('Anexo').DataType  := ftString;
            Connection.QryBusca.Params.ParamByName('Anexo').Value     := MiAnexo;
            connection.QryBusca.Open;

            if connection.QryBusca.RecordCount = 0 then
               ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Anexo');

          end;
          Fila := Fila + 1;
        end;


        {Validaciones  de Alcances Permitirdos..}
        Fila       := 2;
        sValue     := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
        sTipo      := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
        dmpiAvance := 0;
        MiValor    := 'Iniciando..';
        cadena     := '';
        DatoE      := '';
        while MiValor <> '' do
        begin
          MiValor  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
          MiAnexo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          MiValor2 := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          try
              if (sValue = MiValor) and (sTipo = MiAnexo) then
              begin
                ImpfValor  := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                dmpiAvance := dmpiAvance + ImpfValor;
              end
              else
              begin
                ImpfValor := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                if dmpiAvance <> 100 then
                begin
                    sValue    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila-1)), 'C' + Trim(IntToStr(Fila-1))].Value2;
                    sTipo     := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila-1)), 'B' + Trim(IntToStr(Fila-1))].Value2;
                    ColoresErrorExcel('F' + Trim(IntToStr(Fila -1)), 'F' + Trim(IntToStr(Fila-1)), 3, 'Alcances');
                    dmpiAvance := ImpfValor;
                end
                else
                    dmpiAvance := ImpfValor;
                sValue := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
                sTipo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
              end;
          Except
          end;
          Fila := Fila + 1;
        end;

        CuadroColores ('H','I','J','M');

        {Generamos cuadro de codigo de colores}
        if (CodigoColor[2] <> '') or (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
        begin
            ExcelApplication1.UserControl       := False;
            ExcelApplication1.Interactive[flcid]:= True;
            ExcelApplication1.Disconnect;
            messageDLG('Proceso Cancelado por el Sistema', mtInformation,[mbOk],0);
            exit;
        end;

        {Temrina Validacion contrato..}
        if lContratoActual then
           sValue := global_contrato;

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        {Validacion de Anexos..}
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select sAnexo from anexos');
        connection.zCommand.Open;

        if connection.zCommand.RecordCount = 0 then
          Raise Exception.Create('No se pueden Cargar los Alcances no Existen Anexos en el Sistema!');

        {Validaciones  de Alcances Permitirdos..}
        Fila       := 2;
        sValue     := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
        sTipo      := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
        dmpiAvance := 0;
        MiValor    := 'Iniciando..';
        cadena     := '';
        DatoE      := '';
        while MiValor <> '' do
        begin
          MiValor  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
          MiAnexo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          MiValor2 := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          if (sValue = MiValor) and (sTipo = MiAnexo) then
          begin
            ImpfValor  := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            dmpiAvance := dmpiAvance + ImpfValor;
          end
          else
          begin
            ImpfValor := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            if dmpiAvance > 0 then
              if dmpiAvance <> 100 then
              begin
                sValue    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila-1)), 'C' + Trim(IntToStr(Fila-1))].Value2;
                sTipo     := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila-1)), 'B' + Trim(IntToStr(Fila-1))].Value2;
                cadena := cadena + '  Anexo ' + sTipo+ ' Part. '+ sValue + ',';
                dmpiAvance := ImpfValor;
              end
              else
                dmpiAvance := ImpfValor;
              sValue := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
              sTipo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          end;

          Fila := Fila + 1;
        end;

        lEncuentra := False;
        if cadena2 <> '' then
          Raise Exception.Create('No existen los Anexos '+ cadena2 + ' Registrados en el Catalogo de Anexos!');

        if cadena <> '' then
          Raise Exception.Create('Existen Partidas con Alcances Fuera de los Rangos permitidos (100%), Favor de Verificar!' + #13 + cadena);

        fila := 2 ;
        ProgressBar1.Max := 0;
        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sTipo  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
        if MessageDlg('Desea remplazar Los Alcances existente?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Raise Exception.Create('Proceso Cancelado por el Usuario');

        // Se elimina el catalogo de ALCANCES
        try
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM alcancesxactividad Where sContrato = :contrato');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
          connection.zCommand.ExecSQL();
        except
          on e : exception do
          begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importacion de Plantillas', 'Al Eliminar registro', 0);
            exit;
          end;
        end;

        lEncuentra := True;
        if lContratoActual then
          ImpsContrato := global_contrato
        else
          ImpsContrato  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO alcancesxactividad ( sContrato, sAnexo, sNumeroActividad, iFase, sDescripcion, dAvance) ' +
                                    ' VALUES (:contrato, :Anexo, :Partida, :Fase, :Descripcion, :Avance )');

        CodErr1 := 'Importacion de Plantillas de Alcances por partida';
        CodErr2 := 'Al insertar registros en la tabla alcancesxactividad';

        while (sValue <> '') do
        begin
          MiAnexo              := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          ImpsNumeroActividad  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
          ImpiFase             := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
          ImpmDescripcion      := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
          dmpiAvance           := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;

          // Inserto Datos a la Tabla .....
          connection.zCommand.Active := False;
          connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
          connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
          connection.zCommand.Params.ParamByName('Anexo').DataType       := ftString;
          connection.zCommand.Params.ParamByName('Anexo').value          := MiAnexo;
          connection.zCommand.Params.ParamByName('Partida').DataType     := ftString;
          connection.zCommand.Params.ParamByName('Partida').value        := ImpsNumeroActividad;
          connection.zCommand.Params.ParamByName('Fase').DataType        := ftInteger;
          connection.zCommand.Params.ParamByName('Fase').value           := ImpiFase;
          connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
          connection.zCommand.Params.ParamByName('Descripcion').value    := Trim(ImpmDescripcion);
          connection.zCommand.Params.ParamByName('Avance').DataType      := ftFloat;
          connection.zCommand.Params.ParamByName('Avance').value         := dmpiAvance;
          connection.zCommand.ExecSQL;
          ProgressBar1.Max      := ProgressBar1.Max + 1;
          ProgressBar1.Position := ProgressBar1.Position + 1 ;

          Fila := Fila + 1;
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        end;
      end;
      {$ENDREGION}

      {$REGION 'CARGA DE INSUMOS( MATERIALES )'}
      //carga de Insumos
      if rbInsumos.Checked then
      begin

        //zQuery Para buscar Id de Almacen asignado al material( insumo ), Sam.
           zBuscaAlmacen := TZReadOnlyQuery.Create( nil );
           zBuscaAlmacen.Connection := connection.zConnection;
           zBuscaAlmacen.SQL.Text := 'select sIdAlmacen from almacenes where lower(sIdAlmacen) = lower(trim( :id_almacen )) limit 1;';

           CodErr1 := '';
           CodErr2 := '';
           sIdAlmacen := ExcelWorksheet1.Range['Q' + Trim(IntToStr(Fila+1)), 'Q' + Trim(IntToStr(Fila+1))].Value2;
           zBuscaAlmacen.Active := False;
           zBuscaAlmacen.ParamByName( 'id_almacen' ).AsString := sIdAlmacen;
           zBuscaAlmacen.Open;

    if zBuscaAlmacen.RecordCount > 0 then
      begin
        if ValidaAnexosInsumo() then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        //************************RBRITO 09/06/11*******************************
        //Definir el almacen al cual se van asociar los insumos
        //************************RBRITO 09/06/11*******************************

        fila := 2 ;
        ProgressBar1.Max := 0;
        sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if MessageDlg('¿Desea Eliminar los Materiales Existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
          Raise Exception.Create('Proceso Cancelado por el Usuario');
        end else begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Text := 'SET FOREIGN_KEY_CHECKS = 0;';
          connection.zCommand.ExecSQL;
        end;

        if ValidaDeleteAnexosP('insumos', 'sIdInsumo', 'bitacorademateriales', 'recursosanexo') then
          Raise Exception.Create('Proceso Cancelado por el Sistema');

        ImpsContrato := global_contrato;

        CodErr1 := 'Importación de Plantilla de Insumos';
        CodErr2 := 'Al tratar de insertar registros en tabla insumos';

//**********************************************************
          // Generar una lista de registros que deben existir
        Existir.Close;
        Existir.FieldDefs.Add('sContrato', ftString, 15);
        Existir.FieldDefs.Add('sIdInsumo', ftString, 25);
        Existir.FieldDefs.Add('sIdAlmacen', ftString, 20);
        Existir.Open;
        Existir.EmptyTable;
//**********************************************************

        while (sValue <> '') do
        begin
            ImpsNumeroActividad  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
            sTipoActividad       := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpmDescripcion      := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida           := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpdCantidadAnexo    := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;
            ImpdInstalado        := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            FechaI               := ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoMN          := ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2;
            ImpdCostoDLL         := ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaMN          := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
            ImpdVentaDLL         := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
            ImpsIdFase           := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
            ImpsModelo           := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;
            ImpsIdMarca          := ExcelWorksheet1.Range['O' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila))].Value2;
            ImpsUbicacion        := ExcelWorksheet1.Range['P' + Trim(IntToStr(Fila)), 'P' + Trim(IntToStr(Fila))].Value2;
            sIdAlmacen           := ExcelWorksheet1.Range['Q' + Trim(IntToStr(Fila)), 'Q' + Trim(IntToStr(Fila))].Value2;

            zBuscaAlmacen.Active := False;
            zBuscaAlmacen.ParamByName( 'id_almacen' ).AsString := sIdAlmacen;
            zBuscaAlmacen.Open;

            if zBuscaAlmacen.RecordCount = 0 then
            begin
              Fila := Fila + 1;
              sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
              Continue;
            end;


            // Inserto Datos a la Tabla .....
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Text := 'INSERT INTO insumos ( sContrato, sIdInsumo, sIdProveedor, sIdAlmacen, sTipoActividad, mDescripcion, dFechaInicio, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, '+
                                        'sMedida, dCantidad, dInstalado, sIdGrupo, '+
                                        'dNuevoPrecio, sIdFase, dExistencia, sModelo, sIdMarca, sUbicacion) ' +
                                        ' VALUES (:contrato, :insumo, null, :almacen, :tipoactividad, :Descripcion, :fechai, :costoMN, :costoDLL, :ventaMN, :ventaDLL, '+
                                        '( select sub1.sNombre from medidas as sub1 where lower( sub1.sNombre ) = lower( trim( :medida ) ) limit 1), :cantidad, :instalado, :Familia, :ventaMN, null, :Existencia, :Modelo, :Marca, :Ubicacion)';
            Try
              connection.zCommand.Params.ParamByName('contrato').DataType       := ftString;
              connection.zCommand.Params.ParamByName('contrato').value          := ImpsContrato;
              connection.zCommand.Params.ParamByName('insumo').DataType         := ftString;
              connection.zCommand.Params.ParamByName('insumo').value            := ImpsNumeroActividad;
              connection.zCommand.Params.ParamByName('almacen').DataType        := ftString;
              connection.zCommand.Params.ParamByName('almacen').value           := sIdAlmacen;
              connection.zCommand.Params.ParamByName('tipoactividad').DataType  := ftString;
              connection.zCommand.Params.ParamByName('tipoactividad').value     := sTipoActividad;
              connection.zCommand.Params.ParamByName('Descripcion').DataType    := ftString;
              connection.zCommand.Params.ParamByName('Descripcion').value       := Trim(ImpmDescripcion);
              connection.zCommand.Params.ParamByName('fechai').DataType         := ftDate;
              connection.zCommand.Params.ParamByName('fechai').value            := FechaI;
              connection.zCommand.Params.ParamByName('costoMN').DataType        := ftFloat;
              connection.zCommand.Params.ParamByName('costoMN').value           := ImpdCostoMN;
              connection.zCommand.Params.ParamByName('costoDLL').DataType       := ftFloat;
              connection.zCommand.Params.ParamByName('costoDLL').value          := ImpdCostoDLL;
              connection.zCommand.Params.ParamByName('ventaMN').DataType        := ftFloat;
              connection.zCommand.Params.ParamByName('ventaMN').value           := ImpdVentaMN;
              connection.zCommand.Params.ParamByName('ventaDLL').DataType       := ftFloat;
              connection.zCommand.Params.ParamByName('ventaDLL').value          := ImpdVentaDLL;
              connection.zCommand.Params.ParamByName('medida').DataType         := ftString;
              connection.zCommand.Params.ParamByName('medida').value            := ImpsMedida;
              connection.zCommand.Params.ParamByName('cantidad').DataType       := ftInteger;
              connection.zCommand.Params.ParamByName('cantidad').value          := ImpdCantidadAnexo;
              connection.zCommand.Params.ParamByName('instalado').DataType      := ftFloat;
              connection.zCommand.Params.ParamByName('instalado').value         := ImpdInstalado;
              connection.zCommand.Params.ParamByName('Familia').DataType        := ftString;
              connection.zCommand.Params.ParamByName('Familia').value           := ImpsIdFase;
              connection.zCommand.Params.ParamByName('Existencia').DataType     := ftString;
              connection.zCommand.Params.ParamByName('Existencia').value        := ImpdCantidadAnexo;
              connection.zCommand.Params.ParamByName('Modelo').DataType         := ftString;
              connection.zCommand.Params.ParamByName('Modelo').value            := ImpsModelo;
              connection.zCommand.Params.ParamByName('Marca').DataType          := ftString;
              connection.zCommand.Params.ParamByName('Marca').value             := ImpsIdMarca;
              connection.zCommand.Params.ParamByName('Ubicacion').DataType      := ftString;
              connection.zCommand.Params.ParamByName('Ubicacion').value         := ImpsUbicacion;
              connection.zCommand.ExecSQL;
            Except
              on e:exception do
              begin
                // Verificar si se encontró una duplicidad de registros
                if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
                begin
                  // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                  if Not SobreTodos then
                    Resp := MessageDlg('El registro de insumos identificado en EXCEL ya existe en la base de datos:' + #10 +
                                       ImpsContrato + ' - ' + ImpsNumeroActividad + #10 + #10 +
                                       '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                  if Resp = mrYesToAll then
                    SobreTodos := True;

                  if (Resp = mrYes) or SobreTodos then
                    Resp := mrYes;

                  if Resp = mrCancel then
                    Raise Exception.Create('Proceso Cancelado por el Usuario.');

                  if Resp = mrYes then
                  begin
                    connection.zCommand.Active := False;
                    connection.zCommand.SQL.Clear;
                    connection.zCommand.SQL.Add('UPDATE insumos SET sIdProveedor = null, sTipoActividad = :tipoactividad, mDescripcion = :Descripcion, ' +
                                                'dFecha = :Fechai, dCostoMN = :CostoMN, dCostoDLL = :CostoDLL, dVentaMN = :VentaMN, dVentaDLL = :VentaDLL, ' +
                                                'sMedida = :medida, dCantidad = :Cantidad, dInstalado = :Instalado and sIdGrupo =:Familia ' +
                                                'WHERE sContrato = :Contrato and sIdInsumo = :Insumo and sIdAlmacen = :Almacen');
                    connection.zCommand.Params.ParamByName('contrato').DataType       := ftString;
                    connection.zCommand.Params.ParamByName('contrato').value          := ImpsContrato;
                    connection.zCommand.Params.ParamByName('insumo').DataType         := ftString;
                    connection.zCommand.Params.ParamByName('insumo').value            := ImpsNumeroActividad;
                    connection.zCommand.Params.ParamByName('almacen').DataType        := ftString;
                    connection.zCommand.Params.ParamByName('almacen').value           := sIdAlmacen;
                    connection.zCommand.Params.ParamByName('tipoactividad').DataType  := ftString;
                    connection.zCommand.Params.ParamByName('tipoactividad').value     := sTipoActividad;
                    connection.zCommand.Params.ParamByName('Descripcion').DataType    := ftString;
                    connection.zCommand.Params.ParamByName('Descripcion').value       := Trim(ImpmDescripcion);
                    connection.zCommand.Params.ParamByName('fechai').DataType         := ftDate;
                    connection.zCommand.Params.ParamByName('fechai').value            := FechaI;
                    connection.zCommand.Params.ParamByName('costoMN').DataType        := ftFloat;
                    connection.zCommand.Params.ParamByName('costoMN').value           := ImpdCostoMN;
                    connection.zCommand.Params.ParamByName('costoDLL').DataType       := ftFloat;
                    connection.zCommand.Params.ParamByName('costoDLL').value          := ImpdCostoDLL;
                    connection.zCommand.Params.ParamByName('ventaMN').DataType        := ftFloat;
                    connection.zCommand.Params.ParamByName('ventaMN').value           := ImpdVentaMN;
                    connection.zCommand.Params.ParamByName('ventaDLL').DataType       := ftFloat;
                    connection.zCommand.Params.ParamByName('ventaDLL').value          := ImpdVentaDLL;
                    connection.zCommand.Params.ParamByName('medida').DataType         := ftString;
                    connection.zCommand.Params.ParamByName('medida').value            := ImpsMedida;
                    connection.zCommand.Params.ParamByName('cantidad').DataType       := ftInteger;
                    connection.zCommand.Params.ParamByName('cantidad').value          := ImpdCantidadAnexo;
                    connection.zCommand.Params.ParamByName('instalado').DataType      := ftFloat;
                    connection.zCommand.Params.ParamByName('instalado').value         := ImpdInstalado;
                    connection.zCommand.Params.ParamByName('Familia').DataType        := ftString;
                    connection.zCommand.Params.ParamByName('Familia').value           := ImpsIdFase;
                    Connection.zCommand.ExecSQL;
                  end;
                end
                else
                  Raise;
              end;
            End;

            // Cargar la lista de registros procesados
            Existir.Append;
            Existir.FieldByName('sContrato').AsString := ImpsContrato;
            Existir.FieldByName('sIdInsumo').AsString := ImpsNumeroActividad;
            Existir.FieldByName('sIdAlmacen').AsString := '';
            Existir.Post;

            ProgressBar1.Max      := ProgressBar1.Max + 1;
            ProgressBar1.Position := ProgressBar1.Position + 1 ;
            Fila := Fila + 1;
            sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;

          try
            Kardex('Importacion de Datos','Materiales', 'Frente de Trabajo', '', '', '','' );
          except
            on e : exception do
            begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al registrar en kardex Carga de Insumos', 0);
            end;
          end;

//**********************************************************
          // Verificar los registros que debería ser eliminados
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Select * from insumos where sContrato = :Contrato and sIdAlmacen = :almacen');
          Connection.zCommand.ParamByName('Contrato').AsString := ImpsContrato;
          Connection.zCommand.ParamByName('almacen').AsString  := sIdAlmacen;
          Connection.zCommand.Open;

          if Connection.zCommand.RecordCount > Existir.RecordCount then
          begin
            Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                               '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
            if Resp = mrCancel then
              Raise Exception.Create('Proceso Cancelado por el Usuario.');

            if Resp = mrYes then
            begin
              connection.zCommand.First;
              while Not connection.zCommand.Eof do
              begin
                if Not Existir.Locate('sIdInsumo', connection.zCommand.FieldByName('sIdInsumo').AsString, []) then
                  Connection.zCommand.Delete;
                connection.zCommand.Next;
              end;
            end;
        end;
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Text := 'SET FOREIGN_KEY_CHECKS = 1;';
        connection.zCommand.ExecSQL ;
      end
      else
       MessageDlg('Ese almacen no Existe, No se Pueden Agregar los Insumos', mtInformation, [mbOk],0) ;
      
      end;
      {$ENDREGION}

      {$REGION 'Insumos x Partida'}
      //Carga de Personal x Partida, Equipo x Partida, Basicos x Partida, Herramientas x Partida, Material x Partida..
      if (rbPersonalxP.Checked) or (rbEquipoxP.Checked) or (rbInsumosxP.Checked) or (rHerrxPartida.Checked) or (rBasicosxPart.Checked) then
      begin
        CodErr1 := '';
        CodErr2 := '';

        if rbPersonalxP.Checked then
        begin
          if ValidaAnexosPERxP('Personal', 'personal', 'sIdpersonal') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'recursospersonalnuevos';
          ImpsWbs   := 'sIdPersonal';
          ImpsAnexo := 'Personal x Partida';
          DatoE     := 'personal';
          cadena    := 'p.dCantidad*0';
        end;

        if rbEquipoxP.Checked then
        begin
          if ValidaAnexosPERxP('Equipo', 'equipos', 'sIdEquipo') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'recursosequiposnuevos';
          ImpsWbs   := 'sIdEquipo';
          ImpsAnexo := 'Equipo x Partida';
          DatoE     := 'equipos';
          cadena    := 'p.dCantidad*0';
        end;

        if rbInsumosxP.Checked then
        begin
          if ValidaAnexosPERxP('Insumo', 'insumos', 'sIdInsumo') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'recursosanexosnuevos';
          ImpsWbs   := 'sIdInsumo';
          ImpsAnexo := 'Insumos x Partida';
          DatoE     := 'insumos';
          cadena    := 'p.dCantidad*0';
        end;

        if rHerrxPartida.Checked then
        begin
          if ValidaAnexosPERxP('Herramienta', 'herramientas', 'sIdHerramientas') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'recursosherramientasnuevos';
          ImpsWbs   := 'sIdHerramientas';
          ImpsAnexo := 'Herramienta x Partida';
          DatoE     := 'herramientas';
          cadena    := '';
        end;

        if rBasicosxPart.Checked then
        begin
          if ValidaAnexosPERxP('Basico', 'basicos', 'sIdBasico') then
            Raise Exception.Create('Proceso Cancelado por el Sistema');

          sTabla    := 'recursosbasicosnuevos';
          ImpsWbs   := 'sIdBasico';
          ImpsAnexo := 'Basico x Partida';
          DatoE     := 'basicos';
          cadena    := '';
        end;

        fila   := 2 ;
        cadena := '';
        ProgressBar1.Max := 0;
        if lContratoActual then
          sValue := global_contrato
        else
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        if sValue <> global_contrato then
          Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

        {if MessageDlg('¿Desea remplazar el '+ImpsAnexo+' existente?', mtConfirmation, [mbYes, mbNo], 0) = mrnO then
          Raise Exception.Create('Proceso Cancelado por el Usuario');

        // Se elimina el catalogo de Insumos
        CodErr1 := 'Importación de Plantilla de Insumos por Partida';
        CodErr2 := 'Al Eliminar registros en la tabla ' + sTabla;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM '+sTabla+' Where sContrato = :contrato');
        Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.ExecSQL();

        CodErr1 := '';
        CodErr2 := '';}

//**********************************************************
        // Generar una lista de registros que deben existir
        Existir.Close;
        Existir.FieldDefs.Add('sContrato', ftString, 15);
        Existir.FieldDefs.Add('sWbs', ftString, 30);
        Existir.FieldDefs.Add('sNumeroActividad', ftString, 20);
        Existir.FieldDefs.Add(ImpsWbs, ftString, 25);
        Existir.Open;
        Existir.EmptyTable;
//**********************************************************
        Cadena2 := '';
        while (sValue <> '') do
        begin
          CodErr1 := '';
          CodErr2 := '';

          if lContratoActual then
            ImpsContrato := global_contrato
          else
            ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          if ImpsContrato <> global_contrato then
            Raise Exception.Create('El archivo que desea importar pertenece a otro contrato');

          ImpsAnexo            := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
          ImpsNumeroActividad  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
          sIdRecurso           := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
          dCantidad            := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

          // Consultamos datos del anexos C
          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select sWbs, dCostoMN, dCostoDLL from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroActividad =:Actividad '+
                                       'and sTipoActividad = "Actividad" and sAnexo =:Anexo ');
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType  := ftString;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value     := Global_Contrato;
          Connection.QryBusca2.Params.ParamByName('Convenio').DataType  := ftString;
          Connection.QryBusca2.Params.ParamByName('Convenio').Value     := Global_Convenio;
          Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
          Connection.QryBusca2.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
          Connection.QryBusca2.Params.ParamByName('Anexo').DataType     := ftString;
          Connection.QryBusca2.Params.ParamByName('Anexo').Value        := ImpsAnexo;
          connection.QryBusca2.Open;

          // Inserto Datos a la Tabla .....
          CodErr1 := 'Importación de Plantilla de Insumos por Partida';
          CodErr2 := 'Al tratar de insertar registros en la tabla ' + sTabla;

          Try
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('insert into '+sTabla+' (sContrato,sWbs,sNumeroActividad,'+ImpsWbs+',dCantidad, dCostoMN, dCostoDLL) '+
                                        'values (:Contrato, :wbs, :Actividad, :Id, :cantidad, :CostoMN, :CostoDLL)');

            connection.zCommand.Params.ParamByName('contrato').DataType  := ftString;
            connection.zCommand.Params.ParamByName('contrato').value     := ImpsContrato;
            connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
            connection.zCommand.Params.ParamByName('Wbs').value          := connection.QryBusca2.FieldValues['sWbs'];
            connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('actividad').value    := ImpsNumeroActividad;
            connection.zCommand.Params.ParamByName('id').DataType        := ftString;
            connection.zCommand.Params.ParamByName('id').value           := sIdRecurso;
            connection.zCommand.Params.ParamByName('cantidad').DataType  := ftFloat;
            connection.zCommand.Params.ParamByName('cantidad').value     := StrToFloat(dCantidad);
            connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat;
            connection.zCommand.Params.ParamByName('CostoMN').value      := connection.QryBusca2.FieldValues['dCostoMN'];
            connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
            connection.zCommand.Params.ParamByName('CostoDLL').value     := connection.QryBusca2.FieldValues['dCostoDLL'];
            connection.zCommand.ExecSQL;
          Except
            on e:exception do
            begin
              // Verificar si se encontró una duplicidad de registros
              if (CompareText(e.ClassName, 'EZSQLException') = 0) and (Pos('Duplicate entry', e.Message) > 0) then
              begin
                // Si se trata de un registro duplicado entonces solo tratar de actualizar el registro
                if Not SobreTodos then
                  Resp := MessageDlg('El registro de ' + ImpsAnexo + ' identificado en EXCEL ya existe en la base de datos:' + #10 +
                                     ImpsContrato + ' - ' + connection.QryBusca2.FieldValues['sWbs'] + ' - ' + ImpsNumeroActividad + ' - ' + sIdRecurso + #10 + #10 +
                                     '¿Desea sobreescribirlo?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbCancel], 0);

                if Resp = mrYesToAll then
                  SobreTodos := True;

                if (Resp = mrYes) or SobreTodos then
                  Resp := mrYes;

                if Resp = mrCancel then
                  Raise Exception.Create('Proceso Cancelado por el Usuario.');

                if Resp = mrYes then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE ' + sTabla + ' SET dCantidad = :Cantidad, dCostoMN = :CostoMN, dCostoDLL = :CostoDLL ' +
                                              'WHERE sContrato = :Contrato and sWbs = :Wbs and sNumeroActividad = :Actividad and ' + ImpsWbs + ' = :Id');
                  Connection.zCommand.Params.ParamByName('Contrato').DataType  := ftString;
                  Connection.zCommand.Params.ParamByName('Contrato').Value     := ImpsContrato;
                  Connection.zCommand.Params.ParamByName('Wbs').DataType       := ftString;
                  Connection.zCommand.Params.ParamByName('Wbs').Value          := connection.QryBusca2.FieldValues['sWbs'];
                  Connection.zCommand.Params.ParamByName('Actividad').DataType := ftMemo;
                  Connection.zCommand.Params.ParamByName('Actividad').Value    := ImpsNumeroActividad;
                  Connection.zCommand.Params.ParamByName('Id').DataType        := ftString;
                  Connection.zCommand.Params.ParamByName('Id').Value           := sIdRecurso;
                  Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('Cantidad').Value    := StrToFloat(dCantidad);
                  Connection.zCommand.Params.ParamByName('CostoMN').DataType   := ftFloat;
                  Connection.zCommand.Params.ParamByName('CostoMN').Value      := connection.QryBusca2.FieldValues['dCostoMN'];
                  Connection.zCommand.Params.ParamByName('CostoDLL').DataType  := ftFloat;
                  Connection.zCommand.Params.ParamByName('CostoDLL').Value     := connection.QryBusca2.FieldValues['dCostoDLL'];
                  Connection.zCommand.ExecSQL;
                end;
              end
              else
                Raise;
            end;
          End;

          CodErr1 := '';
          CodErr2 := '';

          {Ahora informamos al usuario que ids no se encontraron en cada catalogo,, y no se guardaron..}
          connection.QryBusca.Active := False;
          Connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select '+ImpsWbs+' from '+sTabla+' Where sContrato = :contrato and '+ImpsWbs+' =:Id ');
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Contrato').Value    := Global_Contrato;
          Connection.QryBusca.Params.ParamByName('Id').DataType       := ftString;
          Connection.QryBusca.Params.ParamByName('Id').Value          := sIdRecurso;
          connection.QryBusca.Open;

          {Registramos los Ids no encontrados..}
          if connection.QryBusca.RecordCount = 0 then
            cadena2 := Cadena2 + sIdRecurso +' , ';

          // Cargar la lista de registros procesados
          Existir.Append;
          Existir.FieldByName('sContrato').AsString := ImpsContrato;
          Existir.FieldByName('sWbs').AsString := connection.QryBusca2.FieldValues['sWbs'];
          Existir.FieldByName('sNumeroActividad').AsString := ImpsNumeroActividad;
          Existir.FieldByName(ImpsWbs).AsString := sIdRecurso;
          Existir.Post;

          ProgressBar1.Max      := ProgressBar1.Max + 1;
          ProgressBar1.Position := ProgressBar1.Position + 1 ;
          Fila := Fila + 1;
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        end;

        if Cadena2 <> '' then
          Raise Exception.Create('No se encontraron los siguientes Ids en el Catalogo de '+DatoE+'. Para que se puedan Guardar, favor de darlos de alta.');


//**********************************************************
        // Verificar los registros que debería ser eliminados
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Select * from ' + sTabla + ' where sContrato = :Contrato');
        Connection.zCommand.ParamByName('Contrato').AsString  := ImpsContrato;
        Connection.zCommand.Open;

        if Connection.zCommand.RecordCount > Existir.RecordCount then
        begin
          Resp := MessageDlg('Existen ' + IntToStr(Connection.zCommand.RecordCount - Existir.RecordCount) + ' registros en la base de datos que no fueron obtenidos de la tabla de EXCEL.' + #10 + #10 +
                             '¿Desea eliminar estos registros ahora?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
          if Resp = mrCancel then
            Raise Exception.Create('Proceso Cancelado por el Usuario.');

          if Resp = mrYes then
          begin
            connection.zCommand.First;
            while Not connection.zCommand.Eof do
            begin
              if Not Existir.Locate('sWbs;sNumeroActividad;' + ImpsWbs, vararrayof([connection.zCommand.FieldByName('sWbs').AsString, connection.zCommand.FieldByName('sNumeroActividad').AsString, connection.zCommand.FieldByName(ImpsWbs).AsString]), []) then
                Connection.zCommand.Delete;
              connection.zCommand.Next;
            end;
          end;
        end;
      end;
      {$ENDREGION}

      Connection.zConnection.Commit;      // Si todo ha sido correcto se deberá generar físicamente la información en la base de datos
      MessageDlg('Proceso Terminado con exito...', mtInformation, [mbOk], 0);
    except
        on E: Exception do
        begin
            Connection.zConnection.RollBack; // Ante un error, cancelar todos los cambios realizados

            //MessageDlg(e.ClassName + ' - ' + e.Message, mtInformation, [mbOk], 0)
            if (CompareText(e.ClassName, 'Exception') = 0) then
               MessageDlg(e.ClassName + '   ' + e.Message, mtInformation, [mbOk], 0)
            else
               if CodErr1 = '' then
                  MessageDlg(e.Message, mtInformation, [mbOk], 0)
               else
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, CodErr1, CodErr2, 0);
        end;
    end;
  Finally
      //Termina Exception para subir anexos...
      Existir.Destroy;
      ProgressBar1.Max := 0;
      Try
        ExcelApplication1.Quit;
      Except
        // No Hacer nada, solamente es para evitar los errores cuando excel se encuentre ocupado
      End;
      ExcelApplication1.Disconnect;
  End;
end;

procedure TfrmImportaciondeDatos.tsArchivoEnter(Sender: TObject);
begin
tsarchivo.Color:=global_color_entradaERP;
end;

procedure TfrmImportaciondeDatos.tsArchivoExit(Sender: TObject);
begin
tsarchivo.Color:=global_color_salidaERP;
end;

procedure TfrmImportaciondeDatos.btnSalirClick(Sender: TObject);
begin
  Close
end;

procedure TfrmImportaciondeDatos.Button1Click(Sender: TObject);
var
    lista: TStringList;
    sSQL, ss: string;
    ii: integer;
begin
try
    lista := TStringList.Create;
    sSQL := 'SELECT * ' +
          'FROM actividadesxorden a ' +
          'WHERE a.sContrato = :contrato ' +
          'AND a.sIdConvenio = :convenio ' +
          'AND a.sTipoActividad = "Actividad" '+
          'GROUP BY a.sNumeroActividad '+
          'ORDER BY a.sNumeroActividad';

          connection.QryBusca.Active := false;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add(sSQL);
          connection.QryBusca.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.ParamByName('convenio').Value := global_convenio;
          connection.QryBusca.Open;

          while not connection.QryBusca.Eof do begin
              lista.Add(connection.QryBusca.FieldByName('sNumeroActividad').AsString);
              connection.QryBusca.Next;
          end;

          self.CalcDiferenciasOT(lista);
          RxMDValida.First;
          ss := '';
          while not RxMDValida.Eof do begin
              ss := ss + RxMDValida.FieldByName('sNumeroActividad').AsString + #13;
              RxMDValida.Next;
          end;
          showmessage(ss);

      MessageDlg('Existen diferencias. Oprima aceptar para ver el reporte.' , mtInformation, [mbOk], 0) ;
      frxReporte.LoadFromFile (global_files + 'validaActOrden.fr3') ;
      frxReporte.PreviewOptions.MDIChild := True ;
      frxReporte.PreviewOptions.Modal := False ;
      frxReporte.PreviewOptions.Maximized := lCheckMaximized ;
      frxReporte.PreviewOptions.ShowCaptions := False ;
      frxReporte.Previewoptions.ZoomMode := zmPageWidth ;
      frxReporte.ShowReport;
except
    on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al hacer clic en el boton 1', 0);
    end;
end;

end;

                             
procedure TfrmImportaciondeDatos.Button2Click(Sender: TObject);
begin
    try
        //MessageDlg('Existen diferencias. Oprima aceptar para ver el reporte.' , mtInformation, [mbOk], 0) ;
        frxReporte.LoadFromFile (global_files + 'validaActOrden.fr3') ;
        frxReporte.PreviewOptions.MDIChild := True ;
        frxReporte.PreviewOptions.Modal := False ;
        frxReporte.PreviewOptions.Maximized := lCheckMaximized ;
        frxReporte.PreviewOptions.ShowCaptions := False ;
        frxReporte.Previewoptions.ZoomMode := zmPageWidth ;
        frxReporte.ShowReport;
    except
        on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importacion de Plantillas', 'Al hacer clic en el Button2', 0);
        end;
    end;
end;

procedure TfrmImportaciondeDatos.formatoEncabezado;
begin
      Excel.Selection.MergeCells := False;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Bold := False;
      Excel.Selection.Font.Name := 'Calibri';
end;

{$REGION 'ANEXO DT,DE MN, DE DLL (VALIDA)'}

function TfrmImportaciondedatos.ValidaAnexosDT(dParamTipo :string): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel, campo  : string;
   lContinua, lExiste,
   lEncuentra, lEncuentraAnexo : boolean;
   cadena, cadena2,
   Cadena3, cadena4   : string;
   Actividad, Anexo,
   AnexoAux,
   sFecha, TipoDato   : string;
   CantidadDT         : currency;
   dTotalDT           : currency;
   dIdFecha           : tDate;
   dTotalAnexo        : currency;

   {Decalracion de Querys,,}
   zAnexos, zAnexosC : TZReadonlyQuery;
begin
    {Primero las validaciones de las Columnas de Fehcas..}
    ValidaAnexosDT := False;
    iColumna := 4;

    zAnexos := TZReadOnlyQuery.Create(self);
    zAnexos.Connection := connection.zConnection;

    zAnexosC := TZReadOnlyQuery.Create(self);
    zAnexosC.Connection := connection.zConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    zAnexosC.Active := False;
    zAnexosC.SQL.Clear;
    zAnexosC.SQL.Add('select min(dFechaInicio) as dFechaInicio, max(dFechaFinal) as dFechaFinal from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio group by sContrato');
    zAnexosC.Params.ParamByName('Contrato').DataType  := ftString;
    zAnexosC.Params.ParamByName('Contrato').Value     := Contrato;
    zAnexosC.Params.ParamByName('Convenio').DataType  := ftString;
    zAnexosC.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zAnexosC.Open;

    Fila := 1;
    try
       sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
    Except
        ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
    end;

    while (sFecha <> '') and (sFecha <> '30/12/1899') do
    begin
         cadena   := columnas[iColumna];

         TipoDato := 'Fecha';
         try            
            if (sFecha <> '') and (sFecha <> '30/12/1899') then
                dIdFecha := StrToDate(sFecha);
         Except
             ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;

         if zAnexosC.RecordCount > 0 then
         begin
             {Primero los años..}           
             if ((StrToInt(copy(sFecha,7,4))) < (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),7,4)))) then
                ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin  {Ahora por meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),7,4)))) then
                     if ((StrToInt(copy(sFecha,4,2))) < (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaInicio']),4,2)))) then
                         ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
             {Cotinuamos con los años.}
             if ((StrToInt(copy(sFecha,7,4))) > (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),7,4)))) then
                 ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin {Continuamos con los meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),7,4))))  then
                    if ((StrToInt(copy(sFecha,4,2))) > (StrToInt(copy(dateToStr(zAnexosC.FieldValues['dFechaFinal']),4,2)))) then
                       ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
         end;
         Inc(iColumna);
         try
            sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
    end;
    {Verificamos si existen los grupos en fasesxproyecto}
    zAnexos.Active := False;
    zAnexos.SQL.Clear;
    zAnexos.SQL.Add('select sAnexo from anexos ');
    zAnexos.Open;

    zAnexosC.Active := False;
    zAnexosC.SQL.Clear;
    zAnexosC.SQL.Add('select sNumeroActividad, sAnexo, dCantidadAnexo, dVentaMN, dVentaDLL from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad"');
    zAnexosC.Params.ParamByName('Contrato').DataType  := ftString;
    zAnexosC.Params.ParamByName('Contrato').Value     := Contrato;
    zAnexosC.Params.ParamByName('Convenio').DataType  := ftString;
    zAnexosC.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zAnexosC.Open;

    {Validacione de Contrato..}
    Fila           := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua      := False;
    lExiste        := False;
    AnexoExcel  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro(columnas[iColumna], iColumna);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            {Existen datos..}
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            TipoDato := 'Texto';
            campo    := 'Anexo';
            cadena   := 'C' ;
            Anexo    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

            campo      := 'Actividad';
            cadena     := 'B' ;
            Actividad  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            iColumna := 4;
            dTotalAnexo := 0;
            sFecha := ExcelWorksheet1.Range[columnas[iColumna] +'1', columnas[iColumna] + '1'].Value2;
            while (trim(sFecha) <> '') and (sFecha <> '30/12/1899') and (sFecha <> '34425') do
            begin
                cadena     := columnas[iColumna];
                campo      := 'Cantidad DT';
                TipoDato   := 'Decimal';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');
                try
                    CantidadDT  := ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2;
                    dTotalAnexo := dTotalAnexo + CantidadDT;
                Except
                end;
                Inc(iColumna);
                try
                    sFecha := ExcelWorksheet1.Range[columnas[iColumna] +'1', columnas[iColumna] + '1'].Value2;
                Except
                end;
            end;

            {Verificamos si existe las partidas en el anexo C}
            zAnexosC.First;
            lEncuentra := False;
            {Buscamos los partidas en Catalogo..}
            while not zAnexosC.Eof do
            begin
                if (Anexo = zAnexosC.FieldValues['sAnexo']) and (Actividad = zAnexosC.FieldValues['sNumeroActividad']) then
                begin
                    lEncuentra := True;

                    {Registramos las cantidades de Anexo Diferentes..}
                    if dParamTipo = 'AnexoDT' then
                       if RoundTo(dTotalAnexo, -5) <> RoundTo(zAnexosC.FieldValues['dCantidadAnexo'],-5) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');

                    if dParamTipo = 'AnexoDEMN' then
                       if (dTotalAnexo) <> (zAnexosC.FieldValues['dCantidadAnexo'] * zAnexosC.FieldValues['dVentaMN']) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');

                    if dParamTipo = 'AnexoDEDLL' then
                       if (dTotalAnexo) <> (zAnexosC.FieldValues['dCantidadAnexo'] * zAnexosC.FieldValues['dVentaDLL']) then
                          ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DT');
                end;
                zAnexosC.Next;
                if lEncuentra  then
                   zAnexosC.Last;
            end;

            {Validamos los anexos}
            zAnexos.First;
            lEncuentraAnexo := False;
            {Buscamos los anexos..}
            while not zAnexos.Eof do
            begin
                if Anexo = zAnexos.FieldValues['sAnexo'] then
                   lEncuentraAnexo := True;
                zAnexos.Next;
            end;

            if lEncuentraAnexo = False then
               ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Anexo');

            if lEncuentraAnexo = True then
               if lEncuentra = False then
                  ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Actividad');

        end;
        Fila := Fila + 1;
    end;

    CuadroColores (columnas[iColumna + 1],columnas[iColumna + 2],columnas[iColumna + 3],columnas[iColumna + 6]);

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosDT := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXOS DME, DMO, MDA (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosDME(dParamTipo: string; dParamTabla: string; dParamId: string) : boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel, campo : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena          : string;
   Actividad, Anexo,
   AnexoAux,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   dTotalAnexo      : double;

   {Decalracion de Querys,,}
   zRecurso : TZReadonlyQuery;
begin
    {Primero las validaciones de las Columnas de Fehcas..}
    zRecurso := TZReadOnlyQuery.Create(self);
    zRecurso.Connection := connection.zConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    zRecurso.Active := False;
    zRecurso.SQL.Clear;
    zRecurso.SQL.Add('select min(dFechaInicio) as dFechaInicio, max(dFechaFinal) as dFechaFinal from actividadesxanexo Where sContrato = :contrato and sIdConvenio =:Convenio group by sContrato');
    zRecurso.Params.ParamByName('Contrato').DataType  := ftString;
    zRecurso.Params.ParamByName('Contrato').Value     := Contrato;
    zRecurso.Params.ParamByName('Convenio').DataType  := ftString;
    zRecurso.Params.ParamByName('Convenio').Value     := Global_Convenio;
    zRecurso.Open;

    ValidaAnexosDME := False;
    Fila := 1;
    iColumna := 3;
    try
       sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
    Except
        ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
    end;
    
    while (sFecha <> '') and (sFecha <> '30/12/1899') do
    begin
         cadena   := columnas[iColumna];

         TipoDato := 'Fecha';
         try
            if (sFecha <> '') and (sFecha <> '30/12/1899') then
                dIdFecha := StrToDate(sFecha);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
         if zRecurso.RecordCount > 0 then
         begin
             {Primero los años..}           
             if ((StrToInt(copy(sFecha,7,4))) < (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),7,4)))) then
                ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin  {Ahora por meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),7,4)))) then
                     if ((StrToInt(copy(sFecha,4,2))) < (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaInicio']),4,2)))) then
                         ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
             {Cotinuamos con los años.}
             if ((StrToInt(copy(sFecha,7,4))) > (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),7,4)))) then
                 ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor')
             else
             begin {Continuamos con los meses..}
                 if ((StrToInt(copy(sFecha,7,4))) = (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),7,4))))  then
                    if ((StrToInt(copy(sFecha,4,2))) > (StrToInt(copy(dateToStr(zRecurso.FieldValues['dFechaFinal']),4,2)))) then
                       ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'dtFechaMayor');
             end;
         end;
         Inc(iColumna);
         try
            sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
         Except
            ColoresErrorExcel(columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila)), 4, 'fIncorrecto');
         end;
    end;

    {Verificamos si existen los grupos en fasesxproyecto}
    zRecurso.Active := False;
    zRecurso.SQL.Clear;
    zRecurso.SQL.Add('select '+dParamId+', dCantidad from '+dParamTabla+' Where sContrato = :contrato ');
    zRecurso.ParamByName('Contrato').AsString := contrato;
    zRecurso.Open;

    {Validacione de Contrato..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    AnexoExcel  := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro(columnas[iColumna], iColumna);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin                                             
            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            TipoDato   := 'Texto';
            cadena := 'B' ;
            Actividad  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            iColumna    := 3;
            dTotalAnexo := 0;
            sFecha := ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2;
            if sFecha = '' then
              sFecha := '0';
            while (sFecha <> '') and (sFecha <> '30/12/1899') do
            begin
                cadena     := columnas[iColumna];
                TipoDato   := 'Decimal';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');
                try
                   CantidadDT  := StrToFloat(ExcelWorksheet1.Range[columnas[iColumna] + Trim(IntToStr(Fila)), columnas[iColumna] + Trim(IntToStr(Fila))].Value2);
                   dTotalAnexo := dTotalAnexo + CantidadDT;
                except
                end;
                Inc(iColumna);
                try
                    sFecha := DateToStr(ExcelWorksheet1.Range[columnas[iColumna] + '1', columnas[iColumna] + '1'].Value2);
                except
                end;
            end;

            {Validamos los recursos}
            zRecurso.First;
            lEncuentra := False;
            {Buscamos los recursos..}
            while not zRecurso.Eof do
            begin
                if Actividad = zRecurso.FieldValues[dParamId] then
                begin
                   lEncuentra := True;
                   if comparevalue(dTotalAnexo,zRecurso.Fieldbyname('dCantidad').AsFloat,0.02)<>0 then
                   //if (dTotalAnexo) <> (zRecurso.FieldValues['dCantidad']) then    //lobo
                       ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 3, 'DMOEA');
                end;
                zRecurso.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, dParamTipo);
        end;

        Fila := Fila + 1;
    end;

    CuadroColores (columnas[iColumna + 1],columnas[iColumna + 2],columnas[iColumna + 3],columnas[iColumna + 6]);

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
       ValidaAnexosDME := True;

       ExcelApplication1.UserControl       := False;
       ExcelApplication1.Interactive[flcid]:= True;
       ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'MATERIALES (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosInsumo(): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo   : string;
   Actividad, Anexo, Familia,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena      : string;
   Cantidad, Costos : double;
   zFamilias        : TZReadOnlyQuery;
begin

    ValidaAnexosInsumo := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 17 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de Materiales.', mtInformation, [mbOk], 0);
        ValidaAnexosInsumo := True;
        exit;
    end;

    zFamilias := TZReadOnlyQuery.Create(self);
    zFamilias.Connection := connection.zConnection;

    zFamilias.Active := False;
    zFamilias.SQL.Clear;
    zFamilias.SQL.Add('select * from familias');
    zFamilias.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('R', 0);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;
            {Validaciones de Campos..}

            TipoDato    := 'Texto';
            Campo       := 'Insumo';
            cadena      := 'A' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'B' ;
            TipoDato    := 'Cadena';
            Campo       := 'Tipo';
            DatosCadena := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            if (DatosCadena <> 'Material') and (DatosCadena <> 'Consumible') and (DatosCadena <> 'Auxiliares') then
                ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');

            cadena      := 'E' ;
            TipoDato    := 'Decimal';
            Campo       := 'Cantidad';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'F' ;
            Campo       := 'Cantidad Inst.';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Texto';
            cadena      := 'C' ;
            Campo       := 'Descripcion';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'D' ;
            Campo       := 'Medida';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            TipoDato    := 'Fecha';
            Campo       := 'Fecha';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            TipoDato    := 'Decimal';
            Campo       := 'Costo MN';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'I' ;
            Campo       := 'Costo DLL';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'J' ;
            Campo       := 'Venta MN';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'K' ;
            Campo       := 'Venta DLL';
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Familia     := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;

            {Buscamos las Familias de Materiales..}
            lEncuentra  := False;
            zFamilias.First;
            while not zFamilias.Eof do
            begin
                if Familia = zFamilias.FieldValues['sIdFamilia'] then
                   lEncuentra := True;
                zFamilias.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila)), 2, 'Familia');

        end;
        Fila := Fila + 1;
    end;
    CuadroColores ('R', 'S', 'T', 'W');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosInsumo := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;


    //freeandnil(QrBusca);
    {Temrina Validacion contrato..}
end;

{$REGION 'PERSONAL Y EQUIPO (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosPE(dParamTipo : string): boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo, sTipoPerEq   : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;

   zTiposEQPER : TZReadonlyQuery;
begin

    ValidaAnexosPE := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 14 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosPE := True;
        exit;
    end;

    zTiposEQPER := TZReadOnlyQuery.Create(self);
    zTiposEQPER.Connection := connection.zConnection;

    {Verificamos si existen los grupos en fasesxproyecto}
    zTiposEQPER.Active := False;
    zTiposEQPER.SQL.Clear;
    if dParamTipo = 'Personal' then
       zTiposEQPER.SQL.Add('select sIdTipoPersonal from tiposdepersonal ')
    else
       zTiposEQPER.SQL.Add('select sIdTipoEquipo from tiposdeequipo ');
    zTiposEQPER.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('O', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        sTipoPerEq     := ExcelWorksheet1.Range['M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;
            {Validaciones de Campos..}

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'B' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'C' ;
            TipoDato    := 'Numero';
            Campo       := 'Ordenamiento';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Texto';
            Campo       := 'Descripcion';
            cadena      := 'D' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Medida';
            cadena      := 'E' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Decimal';
            Campo       := 'Cantiad';
            cadena      := 'F' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            Campo       := 'Costo MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            Campo       := 'Costo DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'I' ;
            Campo       := 'Venta MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'J' ;
            Campo       := 'Venta DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Fecha';
            Campo       := 'Fecha Inicio';
            cadena      := 'K' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'L' ;
            Campo       := 'Fecha Final';
            ValidaCampo(TipoDato, cadena, Fila, campo, True, 'K');

            TipoDato    := 'Texto';
            Campo       := 'Id Tipo Personal';
            cadena      := 'M' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Numero';
            Campo       := 'Jornada';
            cadena      := 'N' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            if ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2 > 24 then
               ColoresErrorExcel('N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila)), 3, 'Jornada');

            zTiposEQPER.First;
            lEncuentra := False;
            {Buscamos los frentes de trabajo..}
            while not zTiposEQPER.Eof do
            begin
                if dParamTipo = 'Personal' then
                   if sTipoPerEq = zTiposEQPER.FieldValues['sIdTipoPersonal'] then
                      lEncuentra := True;

                if dParamTipo = 'Equipo' then
                   if sTipoPerEq = zTiposEQPER.FieldValues['sIdTipoEquipo'] then
                      lEncuentra := True;
                zTiposEQPER.Next;
            end;

            if lEncuentra = False then
            begin
                if dParamTipo = 'Personal' then
                   ColoresErrorExcel('M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila)), 2, 'TipoPersonal');

                if dParamTipo = 'Equipo' then
                   ColoresErrorExcel('M' + Trim(IntToStr(Fila)), 'M' + Trim(IntToStr(Fila)), 2, 'TipoEquipo')
            end;
        end;

        Fila := Fila + 1;
    end;
    CuadroColores ('P','Q','R','U');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosPE := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'BASICOS Y HERRAMIENTAS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosBasicos(dParamTipo : string): boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo      : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;
begin

    ValidaAnexosBasicos := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 8 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosBasicos := True;
        exit;
    end;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := True;

   {Borramos Cuadro de Colores..}
    EliminaCuadro('J', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

             if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}

            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'B' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Descripcion';
            cadena      := 'C' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            Campo       := 'Medida';
            cadena      := 'D' ;
            ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Decimal';
            Campo       := 'Costo MN';
            cadena      := 'E' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'F' ;
            Campo       := 'Costo DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'G' ;
            Campo       := 'Venta MN';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            cadena      := 'H' ;
            Campo       := 'Venta DLL';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');
        end;

        Fila := Fila + 1;
    end;
    CuadroColores ('J','K','L','O');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosBasicos := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'PERSONAL X PARTIDA, EQUIPO, HERRMIENTA, BASICOS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosPERxP(dParamTipo: string; sParamTabla: string; dParamCampo: string) : boolean;
var
   Fila, iColumna, Orden : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, campo      : string;
   Actividad, Anexo,
   AnexoAux, sValue,
   sFecha, TipoDato : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;

   {Decalracion de Querys,,}
   zAnexo, zAnexoC, zPersonal : TZReadonlyQuery;
begin

    ValidaAnexosPERxP := False;

    Fila     := 1;
    iColumna := 0;
    sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
    while sValue <> '' do
    begin
         sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
         if (sValue <> '') then
            Inc(iColumna);

         Fila := Fila + 1;
    end;

    if iColumna <> 5 then
    begin
        MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo de '+dParamTipo, mtInformation, [mbOk], 0);
        ValidaAnexosPERxP := True;
        exit;
    end;

    zAnexo := TZReadOnlyQuery.Create(self);
    zAnexo.Connection := connection.zConnection;

    zAnexoC := TZReadOnlyQuery.Create(self);
    zAnexoC.Connection := connection.zConnection;

    zPersonal := TZReadOnlyQuery.Create(self);
    zPersonal.Connection := connection.zConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    {Verificamos si existen anexos}
    zAnexo.Active := False;
    zAnexo.SQL.Clear;
    zAnexo.SQL.Add('select sAnexo from anexos');
    zAnexo.Open;

    {Verificamos si existen partidas en anexo C}
    zAnexoC.Active := False;
    zAnexoC.SQL.Clear;
    zAnexoC.SQL.Add('select sAnexo, sNumeroActividad from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad"');
    zAnexoC.ParamByName('Contrato').AsString := Contrato;
    zAnexoC.ParamByName('Convenio').AsString := global_convenio;
    zAnexoC.Open;

    {Verificamos si existen el personal, equipo, material, basico, herramienta.}
    zPersonal.Active := False;
    zPersonal.SQL.Clear;
    zPersonal.SQL.Add('select '+dParamCampo+' from '+sParamTabla+' where sContrato =:Contrato ');
    zPersonal.ParamByName('Contrato').AsString := Contrato;
    zPersonal.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := False;
    AnexoExcel  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    EliminaCuadro('G', 0);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            Anexo       := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            DatosCadena := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            TipoDato    := 'Texto';
            Campo       := 'Id_'+dParamTipo;
            cadena      := 'D' ;
            Actividad   := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            TipoDato    := 'Decimal';
            Campo       := 'Cantidad';
            cadena      := 'E' ;
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            zAnexo.First;
            lEncuentra := False;
            {Buscamos las anexos..}
            while not zAnexo.Eof do
            begin
                if anexo = zAnexo.FieldValues['sAnexo'] then
                   lEncuentra := True;
                zAnexo.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Anexo');

            zPersonal.First;
            lEncuentra := False;
            {Buscamos las personal..}
            while not zPersonal.Eof do
            begin
                if Actividad = zPersonal.FieldValues[dParamCampo] then
                   lEncuentra := True;
                zPersonal.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila)), 2, dParamTipo);

            {Verificamos si existe las partidas en el anexo C}
            zAnexoC.First;
            lEncuentra := False;
            {Buscamos los partidas en Catalogo..}
            while not zAnexoC.Eof do
            begin
                if (anexo = zAnexoC.FieldValues['sAnexo']) and (DatosCadena = zAnexoC.FieldValues['sNumeroActividad']) then
                   lEncuentra := True;

                zAnexoC.Next;
                if lEncuentra  then
                   zAnexoC.Last;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila)), 2, 'Actividad');

        end;
        Fila := Fila + 1;
    end;
    CuadroColores ('G','H','I','L');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosPERxP := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXO A (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosA(): boolean;
var
   Fila, iColumna : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra : boolean;
   cadena, Campo          : string;
   Actividad, Anexo, sValue,
   AnexoAux, TipoDato,
   grupo, plataforma : string;
   CantidadDT       : double;
   dIdFecha         : tDate;
   //Datos
   DatosCadena : string;
   Cantidad, Costos : double;
   {Decalracion de Querys,,}
   zGrupo, zPlataforma : TZReadonlyQuery;

begin
    ValidaAnexosA := False;

     Fila     := 1;
     iColumna := 0;
     sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
     while sValue <> '' do
     begin
          sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
          if (sValue <> '') then
             Inc(iColumna);

          Fila := Fila + 1;
     end;

     if iColumna <> 5 then
     begin
         MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo A.', mtInformation, [mbOk], 0);
         ValidaAnexosA := True;
         exit;
     end;

    zGrupo := TZReadOnlyQuery.Create(self);
    zGrupo.Connection := connection.zConnection;

    zPlataforma := TZReadOnlyQuery.Create(self);
    zPlataforma.Connection := connection.zConnection;

    {Verificamos si existen los grupos de isometricos}
    zGrupo.Active := False;
    zGrupo.SQL.Clear;
    zGrupo.SQL.Add('select sIdGrupo from gruposisometrico');
    zGrupo.Open;

    {Verificamos si existen plataformas}
    zPlataforma.Active := False;
    zPlataforma.SQL.Clear;
    zPlataforma.SQL.Add('select sIdPlataforma from plataformas ');
    zPlataforma.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    ContratoExcel  := global_contrato;
    lContinua := False;
    lExiste     := False;
    lContinua   := False;
    AnexoExcel  := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
    
    {Borramos Cuadro de Colores..}
    EliminaCuadro('G', 0);

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            TipoDato    := 'Texto';
            cadena      := 'B' ;
            Campo       := 'No. Plano';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            TipoDato    := 'Numero';
            cadena      := 'C' ;
            Campo       := 'Revision';
            ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

            grupo       := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            plataforma  := ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2;

            zGrupo.First;
            lEncuentra := False;
            {Buscamos los grupos..}
            while not zGrupo.Eof do
            begin
                if grupo = zGrupo.FieldValues['sIdGrupo'] then
                   lEncuentra := True;
                zGrupo.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila)), 2, 'Grupo');

            zPlataforma.First;
            lEncuentra := False;
            {Buscamos las plataformas..}
            while not zPlataforma.Eof do
            begin
                if plataforma = zPlataforma.FieldValues['sIdPlataforma'] then
                   lEncuentra := True;
                zPlataforma.Next;
            end;

            if lEncuentra = False then
               ColoresErrorExcel('E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila)), 2, 'Plataforma');
        end;

        Fila := Fila + 1;
    end;

    CuadroColores ('G','H','I','L');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        ValidaAnexosA := True;
        ExcelApplication1.UserControl       := False;
        ExcelApplication1.Interactive[flcid]:= True;
        ExcelApplication1.Disconnect;
    end;
    {Temrina Validacion contrato..}
end;

{$REGION 'ANEXO C (VALIDACION)'}

function TfrmImportaciondedatos.ValidaAnexosC( dParamAnexo : string): boolean;
var
   Fila, iColumna, Nivel, iDato : integer;
   Contrato, ContratoExcel,
   AnexoExcel : string;
   lContinua, lExiste, lEncuentra, lValidaAnexo  : boolean;
   campo, cadena, sValue, medida   : string;
   Actividad, Anexo,
   TipoDato,
   grupo, tipo       : string;
   dIdFecha          : tDate;
   //Datos
   DatosCadena, Frente : string;
   Cantidad, Costos    : double;
   {Decalracion de Querys,,}
   zFases, zAnexos : TZReadonlyQuery;

begin
    Application.ProcessMessages;
    ValidaAnexosC := False;
    lValidaAnexo  := False;
    //Validamos antes de reemplazar Anexo C..
     Fila     := 1;
     iColumna := 0;
     sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
     while sValue <> '' do
     begin
          sValue := ExcelWorksheet1.Range[columnas[Fila] + '1', columnas[Fila] + '1'].Value2;
          if (sValue <> '') then
             Inc(iColumna);

          Fila := Fila + 1;
     end;

     if dParamAnexo = 'AnexoC' then
     begin
         if iColumna <> 15 then
         begin
             MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Anexo C.', mtInformation, [mbOk], 0);
             ValidaAnexosC := True;
             lValidaAnexo  := True;
             exit;
         end;
     end
     else
     begin
         if iColumna <> 12 then
         begin
             MessageDlG('El Archivo de Excel Seleccionado no Corresponde al Formato (Plantilla) para Importar el Programa de Trabajo.', mtInformation, [mbOk], 0);
             ValidaAnexosC := True;
             lValidaAnexo  := True;
             exit;
         end;
     end;

    zFases := TZReadOnlyQuery.Create(self);
    zFases.Connection := connection.zConnection;

    zAnexos := TZReadOnlyQuery.Create(self);
    zAnexos.Connection := connection.zConnection;

    {Si se elige contrato de Excel o contrato actual..}
    if lContratoActual then
       Contrato := global_contrato
    else
       Contrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    {Cosnultamos Fases, Anexos o Frentes}
    if dParamAnexo = 'AnexoC' then
    begin
        {Verificamos si existen los grupos en fasesxproyecto}
        zFases.Active := False;
        zFases.SQL.Clear;
        zFases.SQL.Add('select sIdFase from fasesxproyecto ');
        zFases.Open;
    end
    else
    begin
        {Verificamos si existen los grupos en fasesxproyecto}
        zFases.Active := False;
        zFases.SQL.Clear;
        zFases.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato ');
        zFases.Params.ParamByName('Contrato').DataType := ftString;
        zFases.Params.ParamByName('Contrato').Value    := contrato;
        zFases.Open;
    end;

    {Verificamos si existen las anexos}
    zAnexos.Active := False;
    zAnexos.SQL.Clear;
    zAnexos.SQL.Add('select sAnexo from anexos ');
    zAnexos.Open;

    {Validaciones de Datos..}
    Fila       := 2;
    Contrato       := global_contrato;
    ContratoExcel  := global_contrato;
    lContinua      := False;
    lExiste        := False;
    AnexoExcel     := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;

    {Borramos Cuadro de Colores..}
    if dParamAnexo = 'AnexoC' then
       EliminaCuadro('R', 0)
    else
       EliminaCuadro('O', 0);

    while ContratoExcel <> '' do
    begin
        ContratoExcel  := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        {Si el contrro es Diferente a Caracter en Blanco..}
        if ContratoExcel <> '' then
        begin
            {Existen datos..}
            lExiste := True;

            if contrato <> ContratoExcel then
               ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila)), 2, 'Contrato');

            {Validaciones de Campos..}
            if dParamAnexo = 'AnexoC' then
            begin
                TipoDato    := 'Numero';
                Campo       := 'Nivel';
                cadena      := 'B' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Texto';
                Campo       := 'Actividad';
                cadena      := 'C' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Descripcion';
                cadena      := 'E' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Medida';
                cadena      := 'F' ;
                medida      := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Decimal';
                Campo       := 'Cantidad';
                cadena      := 'G' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'H' ;
                Campo       := 'Ponderado';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'I' ;
                Campo       := 'Precio MN';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'J' ;
                Campo       := 'Precio DLL';
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Fecha';
                Campo       := 'Fecha Inicio';
                cadena      := 'L' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Fecha Final';
                cadena      := 'M' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, true, 'L');

                grupo       := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
                Anexo       := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;

                TipoDato    := 'Texto';
                Campo       := 'Tipo(PU/ADM)';
                cadena      := 'O' ;
                tipo        := ExcelWorksheet1.Range['O' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila))].Value2;
                if (trim(medida) = '')  and (trim(tipo) <> '')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'TipoPaq');

                if (trim(medida) <> '') and (tipo <> 'PU') and (tipo <> 'ADM')  then
                       ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');
            end
            else
            begin  {Frentes de trabajo o actividadesxorden..}
                Frente      := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
                TipoDato    := 'Numero';
                Campo       := 'Nivel';
                cadena      := 'C' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Texto';
                Campo       := 'Actividad';
                cadena      := 'D' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Descripcion';
                cadena      := 'E' ;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                Campo       := 'Medida';
                cadena      := 'F' ;
                medida      := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
                ValidaCampo( TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Decimal';
                Campo       := 'Cantidad';
                cadena      := 'G' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'H' ;
                Campo       := 'Ponderado';
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                TipoDato    := 'Fecha';
                Campo       := 'Fecha Inicio';
                cadena      := 'I' ;
                ValidaCampo(TipoDato, cadena, Fila, campo, false, '');

                cadena      := 'J' ;
                Campo       := 'Fecha Final';
                ValidaCampo(TipoDato, cadena, Fila, campo, True, 'I');

                Anexo       := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
                TipoDato    := 'Texto';
                Campo       := 'Tipo(PU/ADM)';
                cadena      := 'K' ;
                tipo        := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
                 if (trim(medida) = '')  and (trim(tipo) <> '')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'TipoPaq');

                if  (trim(medida) <> '') and (tipo <> 'PU') and (tipo <> 'ADM')  then
                   ColoresErrorExcel(cadena + Trim(IntToStr(Fila)), cadena + Trim(IntToStr(Fila)), 2, 'Tipo');
            end;

            if dParamAnexo = 'AnexoC' then
            begin
                {Buscamos las fases..}
                zFases.First;
                lEncuentra := False;
                while not zFases.Eof do
                begin
                    if grupo = zFases.FieldValues['sIdFase'] then
                       lEncuentra := True;
                    zFases.Next;
                end;

                if (trim(medida) = '') and (trim(grupo) <> '') then
                   ColoresErrorExcel('K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila)), 2, 'FasePaq');

                if trim(medida) <> '' then
                   if lEncuentra = False then
                       ColoresErrorExcel('K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila)), 2, 'Fase');
            end
            else
            begin
                zFases.First;
                lEncuentra := False;
                {Buscamos los frentes de trabajo..}
                while not zFases.Eof do
                begin
                    if Frente = zFases.FieldValues['sNumeroOrden'] then
                       lEncuentra := True;
                    zFases.Next;
                end;

                if lEncuentra = False then
                   ColoresErrorExcel('B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila)), 2, 'Frente');
            end;

            zAnexos.First;
            lEncuentra := False;
            {Buscamos los anexos..}
            while not zAnexos.Eof do
            begin
                if Anexo = zAnexos.FieldValues['sAnexo'] then
                   lEncuentra := True;
                zAnexos.Next;
            end;

            if lEncuentra = False then
            begin
                if dParamAnexo = 'AnexoC'  then
                   ColoresErrorExcel('N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila)), 2, 'Anexo')
                else
                   ColoresErrorExcel('L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila)), 2, 'Anexo')
            end;

        end;
        Fila := Fila + 1;
    end;

    if lExiste = False then
    begin
       MessageDlg('No se encontraron Datos para Importar!', mtInformation, [mbOk], 0);
       ValidaAnexosC := True;
       lValidaAnexo  := True;
    end;

     if lValidaAnexo = False then
      if PartidasRepetidas(dParamAnexo) then
         ValidaAnexosC := True;

    if dParamAnexo = 'AnexoC' then
       CuadroColores ('R','S','T','W')
    else
       CuadroColores ('O','P','Q','T');

    {Generamos cuadro de codigo de colores}
    if (CodigoColor[2] <> '') or  (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
       ValidaAnexosC := True;
       lValidaAnexo  := True;

       ExcelApplication1.UserControl       := False;
       ExcelApplication1.Interactive[flcid]:= True;
       ExcelApplication1.Disconnect;
    end;

    Fila := 2;
    lContinua := False;
    if dParamAnexo = 'AnexoC' then
       Nivel := StrToInt(ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2)
    else
       Nivel := StrToInt(ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2);

    if Nivel = 0 then
       lContinua := True;

    if lContinua = False then
    begin
        messageDLG('No se encontro en la Fila 2 el Nivel 0 del Paquete Principal en el Archivo de Excel.', mtInformation, [mbOk], 0);
        ValidaAnexosC := True;
        lValidaAnexo  := True;
    end;

    {Temrina Validacion inicial..}
end;

{$REGION 'ELIMINA PERSONAL, EQUIPO, MATERIALES, HERRAMIENTAS, BASICOS (VALIDACION)'}

function TfrmImportaciondedatos.ValidaDeleteAnexosP(dParamTabla, dParamId, dParamBuscaTabla, dParamBuscaTabla2 : string): boolean;
var
   Fila : integer;
   Id, cadena, cadena2, sValue :string;
begin
    //Validaciones antes de insertar..
      ValidaDeleteAnexosP := False;
      Fila   := 2;
      sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
      while (sValue <> '') do
      begin
          {Validamos que los ids no se encuentren reportados...}
          Id := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

          if (dParamTabla <> 'basicos') and (dParamTabla <> 'herramientas') and (dParamTabla <> 'isometricos')then
          begin
              if dParamBuscaTabla = 'bitacorademateriales' then
                 dParamId := 'sIdMaterial';

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('select '+dParamId+' from '+dParamBuscaTabla+' Where sContrato = :contrato and '+dParamId+' =:Id limit 1 ');
              Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
              Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
              Connection.zCommand.Params.ParamByName('Id').Value          := Id;
              connection.zCommand.Open;

              if connection.zCommand.RecordCount > 0 then
                 cadena := cadena + Id + ' , ';

              if dParamBuscaTabla = 'bitacorademateriales' then
                 dParamId := 'sIdInsumo';
          end;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('select '+dParamId+' from '+dParamBuscaTabla2+' Where sContrato = :contrato and '+dParamId+' =:Id limit 1 ');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
          Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
          Connection.zCommand.Params.ParamByName('Id').Value          := Id;
          connection.zCommand.Open;

          if connection.zCommand.RecordCount > 0 then
             cadena2 := cadena2 + Id + ' , ';

          Fila := Fila + 1;
          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
      end;

      if cadena <> '' then
      begin
         messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' Reportados. '+#13+'Id : '+ cadena, mtInformation, [mbOk], 0);
         ValidaDeleteAnexosP := True;
      end
      else
      if cadena2 <> '' then
      begin
         if dParamTabla <> 'isometricos' then
            messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' en Recursos por Partida. '+#13+'Id : '+ cadena2, mtInformation, [mbOk], 0)
         else
            messageDLG('No se puede continuar, Existen Ids de '+dParamTabla+' en Generadores de Obra. '+#13+'Id : '+ cadena2, mtInformation, [mbOk], 0);
         ValidaDeleteAnexosP := True;
      end
      else
      begin
          Fila := 2 ;
          if dParamTabla = 'isometricos' then
             dParamId := 'sIsometrico';

          sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          while (sValue <> '') do
          begin
              Id := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
              // Se elimina el catalogo de Anexo
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('DELETE FROM '+dParamTabla+' Where sContrato = :contrato and '+dParamId+' =:Id ');
                Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                Connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato;
                Connection.zCommand.Params.ParamByName('Id').DataType       := ftString;
                Connection.zCommand.Params.ParamByName('Id').Value          := Id;
                connection.zCommand.ExecSQL();
              except
                  on e : exception do begin
                     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Importación de Plantilla de Anexos', 'Al eliminar registro', 0);
                     ValidaDeleteAnexosP := True;
                     exit;
                  end;
              end;
              Fila := Fila + 1;
              sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
          end;
      end;
end;

{$REGION 'MENSAJES CODIGO COLORES'}

procedure TfrmImportaciondeDatos.ColoresErrorExcel(sFila: string; sColumna: string; iTipo: Integer; sMensaje: string);
var
    color : array[1..5] of integer;
begin
    color[1] := 2;  {Blanco}
    color[2] := 6;  {Amarillo}
    color[3] := 3;  {Rojo}
    color[4] := 5;  {Azul}
    color[5] := 6;  {no se}

    if (iTipo = 3) or (iTipo = 4) then
       ExcelApplication1.Range[sFila,sColumna].font.Color       := clWhite
    else
       ExcelApplication1.Range[sFila,sColumna].font.Color       := clBlack;
    ExcelApplication1.Range[sFila,sColumna].font.Name           := 'Arial';
    ExcelApplication1.Range[sFila,sColumna].Interior.ColorIndex := color[iTipo];

    {Llenamos los mensajes al Array..}
    if sMensaje = 'Contrato' then
       if pos('CONTRATOS NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CONTRATOS NO PERMITIDOS, ' ;

    if sMensaje = 'Actividad' then
       if pos('PARTIDAS NO ENCONTRADAS EN CATALOGO DE ANEXO C', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS NO ENCONTRADAS EN CATALOGO DE ANEXO C, ';

    if sMensaje = 'DT' then
       if pos('PARTIDAS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD DE ANEXO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD DE ANEXO, ';

     if sMensaje = 'DMOEA' then
       if pos('RECURSOS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD TOTAL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'RECURSOS CON DISTRIBUCIONES DIFERENTES A LA CANTIDAD TOTAL, ';

    if sMensaje = 'Grupo' then
       if pos('GRUPOS NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'GRUPOS NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

     if sMensaje = 'Plataforma' then
       if pos('PLATAFORMAS NO ENCONTRADAS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PLATAFORMAS NO ENCONTRADAS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Tipo' then
       if pos('TIPOS NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TIPOS NO PERMITIDOS, ';

    if sMensaje = 'TipoPersonal' then
       if pos('IDS TIPOS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS TIPOS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'TipoEquipo' then
       if pos('IDS TIPOS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS TIPOS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'TipoPaq' then
       if pos('TIPOS NO PERMITIDOS EN PAQUETES', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TIPOS NO PERMITIDOS EN PAQUETES, ';

    if sMensaje = 'Anexo' then
       if pos('ANEXOS NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'ANEXOS NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Frente' then
       if pos('FRENTES NO ENCONTRADOS CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FRENTES NO ENCONTRADOS CATALOGOS MAESTROS, ';

    if sMensaje = 'Fase' then
       if pos('FASES NO ENCONTRADAS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FASES NO ENCONTRADAS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'FasePaq' then
       if pos('PAQUETES CON FASES PROYECTO ASIGNADAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'PAQUETES CON FASES PROYECTO ASIGNADAS, ';

    if sMensaje = 'Iguales' then
       if pos('PARTIDAS O PAQUETES DUPLICADOS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'PARTIDAS O PAQUETES DUPLICADOS, ';

    {Cantidades..}
    if sMensaje = 'dNulo' then
       if pos('CANTIDADES NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES NULL, ';

    if sMensaje = 'dIncorrecto' then
       if pos('CANTIDADES INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES INCORRECTAS, ';

    if sMensaje = 'dNegativo' then
       if pos('CANTIDADES NEGATIVAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES NEGATIVAS, ';

    if sMensaje = 'Jornada' then
       if pos('JORNADAS MAYORES A 24', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'JORNADAS MAYORES A 24, ';

    {Textos..}
    if sMensaje = 'tNulo' then
       if pos('TEXTOS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'TEXTOS NULL, ';

    if sMensaje = 'tMedidaError' then
       if pos('UNIDADES DE MEDIDA INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'UNIDADES DE MEDIDA INCORRECTAS, ';

    {Numeros..}
    if sMensaje = 'nNulo' then
       if pos('NUMEROS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS NULL, ';

    if sMensaje = 'nIncorrecto' then
       if pos('NUMEROS INCORRECTOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS INCORRECTOS, ';

    if sMensaje = 'nNegativo' then
       if pos('NUMEROS ENTEROS NEGATIVOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'NUMEROS ENTEROS NEGATIVOS, ';

    if sMensaje = 'nNivel' then
       if pos('SALTO DE NIVELES NO PERMITIDOS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'SALTO DE NIVELES NO PERMITIDOS, ';

    if sMensaje = 'nDecimal' then
       if pos('CANTIDADES DECIMALES EN NUMEROS ENTEROS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'CANTIDADES DECIMALES EN NUMEROS ENTEROS, ';

    if sMensaje = 'Alcances' then
       if pos('SUMATORIA DE ALCANCES POR PARTIDA NO PERMITIDA (DIFERENTE AL 100%)', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'SUMATORIA DE ALCANCES POR PARTIDA NO PERMITIDA (DIFERENTE AL 100%), ';

    {Fechas..}
    if sMensaje = 'fNulo' then
       if pos('FECHAS NULL', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS NULL, ';

    if sMensaje = 'fIncorrecto' then
       if pos('FECHAS INCORRECTAS', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS INCORRECTAS, ';

    if sMensaje = 'fMenores' then
       if pos('FECHAS DE TERMINO MENORES A FECHAS DE INICIO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS DE TERMINO MENORES A FECHAS DE INICIO, ';

    if sMensaje = 'dtFechaMayor' then
       if pos('FECHAS FUERA DEL RANGO DEL CONTRATO', CodigoColor[iTipo]) = 0 then
           CodigoColor[iTipo] := CodigoColor[iTipo] + 'FECHAS FUERA DEL RANGO DEL CONTRATO, ';

    {Insumos..}
    if sMensaje = 'Personal' then
       if pos('IDS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE PERSONAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Equipo' then
       if pos('IDS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE EQUIPO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if (sMensaje = 'Insumo') or (sMensaje = 'Material') then
       if pos('IDS DE MATERIAL NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE MATERIAL NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

    if sMensaje = 'Herramienta' then
       if pos('IDS DE HERRAMIENTA NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE HERRAMIENTA NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Basico' then
       if pos('IDS DE BASICO NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE BASICO NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Proveedor' then
       if pos('IDS DE PROVEEDOR NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE PROVEEDOR NO ENCONTRADOS EN CATALOGOS MAESTROS, ';

   if sMensaje = 'Familia' then
       if pos('IDS DE FAMILIA NO ENCONTRADOS EN CATALOGOS MAESTROS', CodigoColor[iTipo]) = 0 then
          CodigoColor[iTipo] := CodigoColor[iTipo] + 'IDS DE FAMILIA NO ENCONTRADOS EN CATALOGOS MAESTROS, ';


end;

{$REGION 'CUADRO CODIGO COLORES'}

procedure TfrmImportaciondeDatos.CuadroColores(sCodigoC1: string; sCodigoC2: string; sErrorC1: string; sErrorC2: string);
var
   Ren : integer;
begin
    {Creacion cuadro colores}
    if (CodigoColor[2] <> '') or (CodigoColor[3] <> '') or (CodigoColor[4] <> '') then
    begin
        {Encabezados}
        ExcelApplication1.Range[sErrorC2+'5' ,sErrorC2+'5'].value              := '';
        ExcelApplication1.Range[sErrorC1+'5' ,sErrorC1+'5'].value              := '';
        {Textos}
        ExcelApplication1.Range[sErrorC1+'6' ,sErrorC1+'6'].value              := '';
        ExcelApplication1.Range[sErrorC1+'11',sErrorC1+'11'].value             := '';
        ExcelApplication1.Range[sErrorC1+'16',sErrorC1+'16'].value             := '';
        {Titulos}
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC1+'5'].ColumnWidth       := 8.57;
        ExcelApplication1.Range[sCodigoC2+'5',sCodigoC2+'5'].ColumnWidth       := 7.45;
        ExcelApplication1.Range[sErrorC1+'5' ,sErrorC2+'5'].ColumnWidth        := 10;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC1+'5'].Value               := 'CODIGO COLORES';
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].MergeCells          := True;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].WrapText            := True;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Color          := clWhite;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Name           := 'Calibri';
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].font.Size           := 11;
        ExcelApplication1.Range[sCodigoC1+'5',sCodigoC2+'5'].Interior.ColorIndex := 56;

        ExcelApplication1.Range[sErrorC1+'5',sErrorC1+'5'].Value               := 'ERRORES ENCONTRADOS';
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].font.Color          := clWhite;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].MergeCells          := True;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].VerticalAlignment   := xlHAlignCenter;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].HorizontalAlignment := xlHAlignCenter;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].WrapText            := True;
        ExcelApplication1.Range[sErrorC1+'5',sErrorC2+'5'].Interior.ColorIndex := 56;
        ExcelApplication1.Range[sCodigoC1+'5',sErrorC2+'5'].borders.LineStyle  := 1;

        Ren := 1;
        if CodigoColor[2] <> ''then
        begin
             Ren := 6;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 6;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren )].Value                  := CodigoColor[2];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;

        if CodigoColor[3] <> ''then
        begin
             Ren := Ren + 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 3;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren)].Value                   := CodigoColor[3];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;

        if CodigoColor[4] <> ''then
        begin
             Ren := Ren + 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].Interior.ColorIndex     := 5;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren)].MergeCells              := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren + 1) ,sCodigoC2+ IntToStr(Ren + 4)].MergeCells      := True;
             ExcelApplication1.Range[sCodigoC1+IntToSTr(Ren) ,sCodigoC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].WrapText            := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].VerticalAlignment   := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].HorizontalAlignment := xlHAlignCenter;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC1+ IntToStr(Ren)].Value                   := CodigoColor[4];
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].MergeCells          := True;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].borders.LineStyle   := 1;
             ExcelApplication1.Range[sErrorC1+IntToSTr(Ren) ,sErrorC2+ IntToStr(Ren + 4)].Interior.ColorIndex := 15;
        end;
        messageDLG('Se encontraton Datos Erróneos en la Plantilla de Excel!', mtWarning, [mbOk], 0);
    end;
end;

{$REGION 'VALIDA TIPOS DE DATOS (TEXTOS, NUMEROS, FECHAS)'}

procedure TfrmImportaciondeDatos.ValidaCampo(sTipo: string; Columna: string; fila: Integer; Campo: string; lFechas: Boolean; sColAnt: string);
var
   Nivel, iDato, i : integer;
   Actividad, Cadena,
   AnexoAux, TipoDato,
   grupo, tipo, frente,
   sValor, sAux, sNivel : string;
   dIdFecha, dIdFechaF  : tDate;
   Cantidad, Costos     : double;
begin
    try
       if sTipo = 'Numero' then
       begin
           iDato := 3;
           {Datos vacios..}
           try
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                 sValor := 'nNulo';
                 ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';

                 raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           sValor := 'nIncorrecto';
           Nivel    := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           Cantidad := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if Nivel < 0 then
           begin
               sValor := 'nNegativo';
               raise exception.Create('-Excepcion por numero negativo..');
           end;

           if campo = 'Nivel' then
           begin
              if (Cantidad - Nivel) > 0 then
              begin
                  sValor := 'nDecimal';
                  raise exception.Create('-Excepcion por numero decimal..');
              end;
              {Validacion de niveles con valores muy altos..}
              if pos(IntToStr(Nivel)+',',sDatoNivel) = 0 then
              begin
                   sAux := sDatoNivel;
                   while (sAux <> '') do
                   begin
                       sNivel := copy(sAux,0,pos(',',sAux) - 1);
                       sAux   := copy(sAux,pos(',',sAux) + 1, length(sAux));
                   end;

                   if sDatoNivel <> '' then
                      if (Nivel - StrToInt(sNivel)) >= 2   then
                      begin
                          sValor     := 'nNivel';
                          sDatoNivel := sDatoNivel + IntToStr(Nivel)+ ',';
                          raise exception.Create('-Excepcion por nivel alto..');
                      end;

                   sDatoNivel := sDatoNivel + IntToStr(Nivel)+ ',';
              end;
           end;
       end;

       if sTipo = 'Texto' then
       begin
           iDato := 2;
           if campo = 'Medida' then
           begin
               try
                   sValor := 'tMedidaError';
                   Nivel := StrToInt(ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2);
                   if (Nivel < 0) or (Nivel >= 0) then
                   begin
                      sValor := 'tMedidaError';
                      ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
                   end;
               Except
                   //No hace nada.. es correcta la uniad de medida..
               end;
           end
           else
           begin
               Actividad := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
               if (trim(Actividad) = '') or (Actividad = 'Null') then
               begin
                   sValor := 'tNulo';
                   ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                   raise exception.Create('-Excepcion por espacio en blanco..');
               end;
           end;
       end;

       if sTipo = 'Decimal' then
       begin
           iDato := 3;
           {Datos vacios..}
           try
              sValor := 'dIncorrecto';
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                  sValor := 'dNulo';
                  ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                  raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           Cantidad  := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if Cantidad < 0 then
           begin
               sValor := 'dNegativo';
               raise exception.Create('-Excepcion por cantidades negativas..');
           end;
       end;

       if sTipo = 'Fecha' then
       begin
           iDato := 4;
           {Datos vacios..}
           try
              sValor := 'fIncorrecto';
              cadena := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if (trim(Cadena) = '') or (Cadena = 'Null') then
              begin
                 sValor := 'fNulo';
                 ExcelApplication1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].value := 'Null';
                 raise exception.Create('-Excepcion por espacio en blanco..');
              end;
           Except
           end;
           dIdFecha  := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
           if dIdFecha = 0 then
           begin
              sValor := 'fIncorrecto';
              raise exception.Create('-Excepcion por fechas nulas..');
           end;

           if lFechas then
           begin
              dIdFecha := ExcelWorksheet1.Range[sColAnt + Trim(IntToStr(Fila)), sColAnt + Trim(IntToStr(Fila))].Value2;
              if dIdFecha = 0 then
                 raise exception.Create('-Excepcion por fechas nulas..');

              dIdFechaF := ExcelWorksheet1.Range[columna + Trim(IntToStr(Fila)), columna + Trim(IntToStr(Fila))].Value2;
              if dIdFechaF = 0 then
                 raise exception.Create('-Excepcion por fechas nulas..');

              {Validando fechas Finales menores a las de incio..}
              if dIdFechaF < dIdFecha then
              begin
                  sValor := 'fMenores';
                  ColoresErrorExcel(sColAnt + Trim(IntToStr(fila)), sColAnt + Trim(IntToStr(fila)), iDato, sValor);
                  ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
              end;
           end;
       end;
    Except
         ColoresErrorExcel(columna + Trim(IntToStr(fila)), columna + Trim(IntToStr(fila)), iDato, sValor);
    end;
end;

{$REGION 'ELIMINA CUADRO COLORES'}

procedure TfrmImportaciondeDatos.EliminaCuadro(sPosicion: string; iIndice: Integer);
var
    cadena : string;
begin
    if iIndice = 0 then
       cadena := 'Z'
    else
       cadena := columnas[iIndice + 20];
    {Para no confundir al usuario ponemos todas las celdas en blanco...}
    ExcelApplication1.Range['A2',cadena+'10000'].Interior.ColorIndex := 2;
    ExcelApplication1.Range['A2',cadena+'10000'].font.Color          := clBlack;
    ExcelApplication1.Range['A2',cadena+'10000'].MergeCells          := False;
    {Quitamos todas las propiedades y datos..}
    ExcelApplication1.Range[sPosicion+'2',cadena+'10000'].borders.LineStyle   := 0;
    ExcelApplication1.Range[sPosicion+'2',cadena+'10000'].value      := '';
    sDatoNivel := '';
end;

procedure TfrmImportaciondeDatos.ConstruyeExplosion;
Var
  CadError, OrdenVigencia: String;
//////////////////////////////////// GENERA PROGRAMA DE TRABAJO //////////////////
Function GenerarPlantilla: Boolean;
Var
  Resultado: Boolean;

Procedure DatosPlantilla;
Var
  CadFecha, tmpNombre, cadena : String;
  fs: tStream;
  Alto : Extended;
  Ren, nivel, i : integer;
  Progreso, TotalProgreso : real;
Begin
    Ren := 2;

      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:F'].ColumnWidth := 20;

      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Clave';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Unidad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Tipo';
      FormatoEncabezado;

      i := 1;
      ProgressBar1.Max := registro;
      while i < registro do begin
        if (recursos[i,3] <> '') OR (recursos[i,1] <> '') then begin
           Hoja.Cells[Ren,1].Select;
           Excel.Selection.Value := recursos[i,1];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,2].Select;
           Excel.Selection.Value := recursos[i,2];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,3].Select;
           Excel.Selection.Value := recursos[i,3];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,4].Select;
           Excel.Selection.Value := recursos[i,4];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,5].Select;
           Excel.Selection.Value := recursos[i,5];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;

           Hoja.Cells[Ren,6].Select;
           Excel.Selection.Value := recursos[i,6];
           Excel.Selection.HorizontalAlignment := xlCenter;
           Excel.Selection.VerticalAlignment   := xlCenter;
           inc(Ren);
        end;
           inc(i);
           ProgressBar1.Position := ProgressBar1.Position + 1;
      end;
      ProgressBar1.Max := 0;
End;

Begin
  Resultado := True;
  Try
    Hoja := Libro.Sheets[1];
    Hoja.Select;
    try
       Hoja.Name := 'EXPLOSION DE INSUMOS ';
    Except
       Hoja.Name := 'EXPLOSION DE INSUMOS ';
    end;
    Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
    DatosPlantilla;
  Except
    on e:exception do
    Begin
       Resultado := False;
       CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
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

    If MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        Excel.Visible        := True;
        Excel.DisplayAlerts  := False;
        Excel.ScreenUpdating := True;
    end
    else
    begin
        Excel.Visible        := True;
        Excel.DisplayAlerts  := False;
        Excel.ScreenUpdating := False;
    end;

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
    begin
        // Grabar el archivo de excel con el nombre dado
        messageDlg('El Archivo se generó Correctamente!' , mtInformation, [mbOk], 0) ;
    end;

    Excel := '';

    if CadError <> '' then
       showmessage(CadError);
end;

{$REGION 'PARTIDAS IGUALES'}
function TfrmImportaciondedatos.PartidasRepetidas(sParamTipo : string) : boolean;
var
   i, t, fila, iNivel, x : integer;
   sValue, ImpsContrato, ImpsNumeroActividad,
   ImpsMedida, ImpsAnexo, sTipo, sWbs, ImpsWbsAnterior   : string;
   paquete    : array[1..3000,1..3 ] of String;
   lActualiza : boolean;
begin
    //Creamos la tabla temporal.
    PartidasRepetidas := False;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS `actividadesxanexo_temp` ( '+
                                '`sContrato` VARCHAR(15) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Contrato", '+
                                '`sIdConvenio` VARCHAR(5) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Convenio", '+
                                '`sWbs` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "sWbs", '+
                                '`sNumeroActividad` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Numero de Actividad", '+
                                '`sTipoActividad` ENUM("Paquete","Actividad") NOT NULL DEFAULT "Actividad" COMMENT "Tipo de Actividad", '+
                                'PRIMARY KEY (`sContrato`, `sIdConvenio`, `sWbs`, `sNumeroActividad`, `sTipoActividad`), '+
                                'KEY `actividadesxanexo_fk` (`sIdConvenio`), '+
                                'KEY `sContrato` (`sContrato`, `sWbs`), '+
                                'KEY `sContrato_2` (`sContrato`, `sIdConvenio`, `sWbs`), '+
                                'KEY `sContrato_3` (`sContrato`, `sWbs`, `sNumeroActividad`) '+
                                ')ENGINE=InnoDB '+
                                'CHARACTER SET "latin1" COLLATE "latin1_swedish_ci" '+
                                'COMMENT="Actividades x Anexo"');
    connection.QryBusca.ExecSQL;

    I := 0;
    t := 1;
    Fila := 2;
    sValue := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

    //Recorremos el archivo de Excel
    while (sValue <> '') do
    begin

        ImpsContrato := ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;

        inc(I);
        If sParamTipo = 'AnexoC' then
        begin
            iNivel              := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
            ImpsNumeroActividad := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpsAnexo           := ExcelWorksheet1.Range['N' + Trim(IntToStr(Fila)), 'N' + Trim(IntToStr(Fila))].Value2;
        end
        else
        begin
            iNivel              := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpsNumeroActividad := ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            ImpsMedida          := ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2;
            ImpsAnexo           := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
        end;

        if Trim(ImpsMedida) = '' then
           sTipo := 'Paquete'
        else
           sTipo := 'Actividad' ;

        sWbs := '';
        if iNivel <> 0 then
        begin
            for x := 1 to t - 1 do
            begin
                if iNivel - 1 >= strToint(paquete[x][1]) then
                begin
                    if (sTipo = 'Actividad') and (ImpsAnexo <> '') then
                       sWbs := paquete[x][2] + '.' + ImpsAnexo + '.'
                    else
                       sWbs := paquete[x][2] + '.' ;
                    ImpsWbsAnterior := paquete[x][2];
                end;
            end;
            sWbs := sWbs + ImpsNumeroActividad;
        end
        else
        begin
            ImpsWbsAnterior := '';
            sWbs            :=  ImpsNumeroActividad;
        end;

        if  sTipo = 'Paquete' then
        begin
            paquete[t][1] := inttostr(iNivel);
            paquete[t][2] := sWbs;
            t := t + 1 ;
        end;

        //Intentamos insertar registros,,
        try
            connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('INSERT INTO actividadesxanexo_temp ( sContrato, sIdConvenio, sTipoActividad, sWbs, sNumeroActividad) ' +
                                        'VALUES (:contrato, :convenio, :tipo, :wbs, :actividad)');
            Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
            Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
            Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
            Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;

            if Trim(ImpsMedida) = '' then
               Connection.zCommand.Params.ParamByName('tipo').value        := 'Paquete'
            else
               Connection.zCommand.Params.ParamByName('tipo').value        := 'Actividad';
            Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;

            if Trim(ImpsWbsAnterior) <> '' then
               Connection.zCommand.Params.ParamByName('wbs').value         := sWbs
            else
               Connection.zCommand.Params.ParamByName('wbs').value         := Trim(ImpsNumeroActividad);

            Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
            Connection.zCommand.Params.ParamByName('actividad').value      := Trim(ImpsNumeroActividad);
            connection.zCommand.ExecSQL;
        Except
             lActualiza := False;
             If sParamTipo = 'AnexoC' then
                ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'O' + Trim(IntToStr(Fila)), 2, 'Iguales')
             else
                ColoresErrorExcel('A' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila)), 2, 'Iguales');
             PartidasRepetidas := True;
        end;

       fila := fila + 1 ;
       sValue := trim(ExcelWorksheet1.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2);
    end;

    //Finalmente borramos la información..
    connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('delete from actividadesxanexo_temp where sContrato =:Contrato and sIdConvenio =:Convenio ');
    Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value       := ImpsContrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType    := ftString;
    Connection.zCommand.Params.ParamByName('convenio').value       := Global_Convenio;
    connection.zCommand.ExecSQL;

end;



end.

