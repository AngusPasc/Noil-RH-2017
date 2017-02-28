unit frm_GraficaGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, Buttons, ComCtrls, DBCtrls, DB, ADODB,
  ShellApi, global, RxMemDS, ExtCtrls,Math, jpeg, ExcelXP, OleServer,
  ZAbstractRODataset, ZDataset, Excel2000, sSkinProvider, ComObj, Grids,
  DBGrids, DateUtils, UnitExcel, Mask, rxToolEdit;

type
  TfrmGraficaGerencial = class(TForm)
    btnGraph: TBitBtn;
    btnExit: TBitBtn;
    Opciones: TRadioGroup;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    ra: TsSkinProvider;
    ProgressBar1: TProgressBar;
    qAnterior: TZReadOnlyQuery;
    Label3: TLabel;
    AvPaq: TRadioGroup;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    Label7: TLabel;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label8: TLabel;
    cbPeriodo: TComboBox;
    dInicio: TDateEdit;
    Label9: TLabel;
    dTermino: TDateEdit;
    cbTipo: TComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tdIdFecha: TDateTimePicker;
    tdFechaInicio: TDateTimePicker;
    tsNumeroOrden: TDBLookupComboBox;
    roqOrdenAntes: TZReadOnlyQuery;
    roqOrdenHoy: TZReadOnlyQuery;
    dsOrden: TDataSource;
    roqAnexo: TZReadOnlyQuery;
    dsAnexo: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsArchivoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure btnGraphClick(Sender: TObject);
    Procedure Encabezado(oGantt: Variant; oHoja: Variant);
    Function Ajuste(oGantt: Variant; Valor : Real) : Real;
    procedure ordenesdetrabajoAfterScroll(DataSet: TDataSet);
    procedure OpcionesClick(Sender: TObject);
    Procedure SeleccionaPeriodoReal(Modo: Boolean);
    procedure Label5Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GenerarNuevaGrafica;
    function cfnCalculaAvances1(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
    function cfnCalculaAvances2(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
    procedure cbPeriodoChange(Sender: TObject);
    procedure roqOrdenAntesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure roqOrdenHoyFilterRecord(DataSet: TDataSet; var Accept: Boolean);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
Const
  xlCenter = -4108;
  xlLeft = -4131;
  xlTop = -4160;
  xlGeneral = 1;
  xlSolid = 1;
  xlContinuous = 1;
  xlEdgeLeft = 7;
  xlThin = 2;
  xlEdgeTop = 8;
  xlEdgeBottom = 9;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;
  xlNormal = -4143;
  xlJustify = -4130;
  xlCellValue = 1;
  xlEqual = 3;
  msoFalse = 0;
  msoTrue = 1;
  msoShapeRoundedRectangle = 5;
  msoGradientHorizontal = 1;
  msoShapeRightTriangle = 8;
  rAlto = 11;       // Número de renglones correspondientes al encabezado
  rAncho = 16;      // Número de columnas correspondientes a datos generales de partidas
  IncHora = 1;
  MaxBloques = 240;
  ColorExced = 2;
  AnchoA = 58;
  OrAnchoColumnasGrafica = 6;

var
  OpcAnexo: Boolean;
  frmGraficaGerencial: TfrmGraficaGerencial;
  Lista: Array[1..14] Of Real;
  hTit: Real;     // Número de pixels que considera el ENCABEZADO
  lCol: Real;     // Número de pixels que consideran los titulos izquierdos
  nCol: Real;     // Número de columnas a graficar
  RangoInicio: Real;
  BarraRango: Real;
  wCol: Real;
  aCol: Integer;
  pFactor, pInicioP, pTerminoP: Real;
  AnchoColumasGrafica, xaCol: Integer;
  OrInicio, OrTermino: TDateTime;
  nMes: Array[1..12] Of String;
  Periodo: TZReadOnlyQuery;
  mdPeriodo: TrxMemoryData;

implementation

uses frm_ReporteDiarioTurno;

{$R *.dfm}

Procedure GeneraLineas(Objeto : Variant; Cadena : String);
Var
  Seccion, Rango : Variant;
Begin
    Rango := Objeto.Range[Cadena];
    Rango.Select;

    Seccion := Rango.Borders[xlEdgeLeft];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;

    Seccion := Rango.Borders[xlEdgeTop];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;

    Seccion := Rango.Borders[xlEdgeBottom];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;

    Seccion := Rango.Borders[xlEdgeRight];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;

    Seccion := Rango.Borders[xlInsideVertical];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;

    Seccion := Rango.Borders[xlInsideHorizontal];
    Seccion.LineStyle := xlContinuous;
    Seccion.Weight := xlThin;
End;

Procedure FormatoDatos(Objeto : Variant; Renglon : Integer);
Var
  Rango: Variant;
Begin
  Rango := Objeto.Columns['B:B'];
  Rango.WrapText := True;

  Rango := Objeto.Range['A9:A9'];
  Rango.WrapText := True;
  Rango.HorizontalAlignment := xlCenter;
  Rango := Objeto.Range['B9:B9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['C9:C9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['D9:D9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['E9:E9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['F9:F9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['G9:G9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['H9:H9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['I9:I9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['J9:J9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['K9:K9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['L9:L9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['M9:M9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['N9:N9'];
  Rango.WrapText := True;
  Rango := Objeto.Range['O9:O9'];
  Rango.WrapText := True;
End;

procedure TfrmGraficaGerencial.FormShow(Sender: TObject);
var
  Orig1, Orig2: TDate;

begin
  nMes[01] := 'ENERO';
  nMes[02] := 'FEBRERO';
  nMes[03] := 'MARZO';
  nMes[04] := 'ABRIL';
  nMes[05] := 'MAYO';
  nMes[06] := 'JUNIO';
  nMes[07] := 'JULIO';
  nMes[08] := 'AGOSTO';
  nMes[09] := 'SEPTIEMBRE';
  nMes[10] := 'OCTUBRE';
  nMes[11] := 'NOVIEMBRE';
  nMes[12] := 'DICIEMBRE';

  if global_OptGrafica = 'Frente' then
     opciones.ItemIndex := 1;

    // Obtener la fecha de inicio y termino
    Connection.zCommand.Close;
    Connection.zCommand.SQL.Text := 'select min(dfechainicio) as inicio, max(dfechafinal) as termino from actividadesxanexo ' +
    'where scontrato = ' + quotedstr(global_contrato) +
    ' and sidconvenio = ' + quotedstr(global_convenio);
    Connection.zCommand.Open;
    if Connection.zCommand.RecordCount > 0 then
    Begin
      if Connection.zCommand.FieldValues['inicio'] = Null then
         OrInicio :=  date
      else
         OrInicio :=  Connection.zCommand.FieldValues['inicio'];

      if  Connection.zCommand.FieldValues['termino'] = Null then
          OrTermino := date
      else
          OrTermino := Connection.zCommand.FieldValues['termino'];

    End
    Else
    Begin
      OrInicio := date;
      OrTermino := date;
    End;

    tdfechainicio.DateTime := OrInicio;
    tdIdfecha.DateTime := OrTermino + 1;

    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
    ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
    ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
    OrdenesdeTrabajo.Open ;
    tdidFecha.Date := Date ;
    If OrdenesdeTrabajo.RecordCount > 0 Then
    Begin
        tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        //tdFechaInicio.Date := OrdenesdeTrabajo.FieldValues['dFIProgramado'] ;
        tdIdFecha.SetFocus
    End
    Else
        tsNumeroOrden.SetFocus;

  Periodo := TZReadOnlyQuery.Create(Nil);
  Periodo.Connection := Connection.ConnTrx;
  Periodo.Sql.Text := 'select "PROGRAMADO" as sTipo, ' +
                      'IF((select min(dFechaInicio) from actividadesxanexo ' +
                      'where scontrato = :contrato and sIdConvenio = :convenio) > (select min(dFechaInicio) from actividadesxorden where scontrato = :contrato and sidconvenio = :convenio), ' +
                      '(select min(dFechaInicio) from actividadesxorden where scontrato = :contrato and sidconvenio = :convenio), ' +
                      '(select min(dFechaInicio) from actividadesxanexo where scontrato = :contrato and sIdConvenio = :convenio)) as dInicio, ' +
                      'IF((select Max(dFechaFinal) from actividadesxanexo ' +
                      'where scontrato = :contrato and sIdConvenio = :convenio) > (select Max(dFechaFinal) from actividadesxorden where scontrato = :contrato and sidconvenio = :convenio), ' +
                      '(select Max(dFechaFinal) from actividadesxorden where scontrato = :contrato and sidconvenio = :convenio), ' +
                      '(select Max(dFechaFinal) from actividadesxanexo where scontrato = :contrato and sIdConvenio = :convenio)) as dTermino ' +
                      'union ' +
                      'select "REAL" as sTipo, (select min(a.dIdFecha) from bitacoradeactividades a inner join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio) where a.scontrato = :contrato) as dInicio, ' +
                      '(select Max(a.dIdFecha) from bitacoradeactividades a inner join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio) where a.scontrato = :contrato) as dTermino';
  Periodo.ParamByName('contrato').AsString := global_contrato;
  Periodo.ParamByName('convenio').AsString := global_convenio;
  Periodo.Open;

  mdPeriodo := TrxMemoryData.Create(Self);
  mdPeriodo.FieldDefs.Add('sTipo', ftString, 30, True);
  mdPeriodo.FieldDefs.Add('dInicio', ftDate, 0, True);
  mdPeriodo.FieldDefs.Add('dTermino', ftDate, 0, True);
  mdPeriodo.Open;
  mdPeriodo.EmptyTable;

  // Agregar el periodo completo
  Periodo.RecNo := 1;
  Orig1 := Periodo.FieldByName('dInicio').AsDateTime;
  Orig2 := Periodo.FieldByName('dTermino').AsDateTime;
  Periodo.RecNo := 2;
  if Periodo.FieldByName('dInicio').AsDateTime < Orig1 then
    Orig1 := Periodo.FieldByName('dInicio').AsDateTime;
  if Periodo.FieldByName('dTermino').AsDateTime > Orig2 then
    Orig2 := Periodo.FieldByName('dTermino').AsDateTime;

  mdPeriodo.Append;
  mdPeriodo.FieldByName('sTipo').AsString := 'COMPLETO';
  mdPeriodo.FieldByName('dInicio').AsDateTime := Orig1;
  mdPeriodo.FieldByName('dTermino').AsDateTime := Orig2;
  mdPeriodo.Post;

  Periodo.First;
  while Not Periodo.Eof do
  begin
    mdPeriodo.Append;
    mdPeriodo.CopyFields(Periodo);
    mdPeriodo.Post;

    Periodo.Next;
  end;

  cbPeriodo.Items.Clear;
  mdPeriodo.First;
  while Not mdPeriodo.Eof do
  begin
    cbPeriodo.Items.Add(mdPeriodo.FieldByName('sTipo').AsString);
    mdPeriodo.Next;
  end;
  if cbPeriodo.Items.Count > 0 then
  begin
    cbPeriodo.ItemIndex := 0;
    cbPeriodo.OnChange(Self);
  end;

  // Llenar los tipos de reportes segun su periodicidad
  cbTipo.Items.Add('Diario');
  cbTipo.Items.Add('Semanal');
  cbTipo.Items.Add('Mensual');
  cbTipo.Items.Add('Anual');
  cbTipo.ItemIndex := 0 ;

end;

procedure TfrmGraficaGerencial.Label4Click(Sender: TObject);
begin
  tdfechainicio.DateTime := OrInicio;
  tdIdfecha.DateTime := OrTermino + 1;
end;

procedure TfrmGraficaGerencial.Label5Click(Sender: TObject);
begin
  SeleccionaPeriodoReal(False);
end;

procedure TfrmGraficaGerencial.OpcionesClick(Sender: TObject);
begin
  Panel3.Visible := Opciones.ItemIndex = 0;
  Panel1.Visible := Not Panel3.Visible;
  tsNumeroOrden.Enabled := Opciones.ItemIndex <> 0;
  RadioGroup1.Enabled := Opciones.ItemIndex = 0;
  if tsNumeroOrden.Enabled then
    OrdenesdeTrabajo.CursorPosChanged;
  if Opciones.ItemIndex = 1 then
    RadioGroup1.ItemIndex := 1;
end;

procedure TfrmGraficaGerencial.SeleccionaPeriodoReal(Modo: Boolean);
Var
  pasoInicio, pasoTermino: TDateTime;
  CadSql: String;
begin
  if Global_OPtGrafica = 'Frente' then
     Opciones.ItemIndex := 1;
  

  PasoInicio := 0;
  PasoTermino := 0;
  if ((Opciones.ItemIndex <> 0) And (Modo)) Or (Not Modo) then
  Begin
    CadSql := 'select MIN(didfecha) as inicio, MAX(didfecha) as termino from bitacoradeactividades where scontrato = ' + quotedstr(global_contrato);
    if tsNumeroOrden.Enabled then
      CadSql := CadSql + ' and snumeroorden = ' + quotedstr(ordenesdetrabajo.FieldValues['snumeroorden']);
    Connection.zCommand.Close;
    Connection.zCommand.SQL.Text := CadSql;


    Connection.zCommand.Open;

    if (Connection.zCommand.RecordCount > 0) And (Connection.zCommand.FieldValues['inicio'] <> Null) then
    Begin
      Label3.Visible := False;
      if (pasoInicio = 0) Or (Connection.zCommand.FieldValues['inicio'] < pasoInicio) then
        pasoInicio := Connection.zCommand.FieldValues['inicio'];

      if (pasoTermino = 0) Or (Connection.zCommand.FieldValues['termino'] > pasoTermino) then
        pasoTermino := Connection.zCommand.FieldValues['termino'];

      tdfechainicio.DateTime := pasoinicio;
      tdIdfecha.DateTime := pasotermino + 1;
    End
    Else
      Label3.Visible := True;
  End
  Else
  Begin
    tdfechainicio.DateTime := OrInicio;
    tdIdfecha.DateTime := OrTermino + 1;
  End;
end;

procedure TfrmGraficaGerencial.ordenesdetrabajoAfterScroll(DataSet: TDataSet);
begin
  SeleccionaPeriodoReal(True);
end;

procedure TfrmGraficaGerencial.roqOrdenAntesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  Cadena: String;
begin
  if OpcAnexo then
  begin
    Cadena := roqAnexo.FieldByName('sWbs').AsString + '.';
    Accept := (Copy(roqOrdenAntes.FieldByName('sWbsContrato').AsString, 1, Length(Cadena)) = Cadena);
              //and (roqOrdenAntes.FieldByName('dAvanceAnexoPondDirecto').AsFloat<>0);
  end
  else
    Accept := (roqOrdenAntes.FieldByName('sWbsContrato').AsString = roqAnexo.FieldByName('sWbs').AsString);
              //and (roqOrdenAntes.FieldByName('dAvanceAnexoPondDirecto').AsFloat<>0);
end;

procedure TfrmGraficaGerencial.roqOrdenHoyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  Cadena: String;
begin
  if OpcAnexo then
  begin
    Cadena := roqAnexo.FieldByName('sWbs').AsString + '.';
    Accept := (Copy(roqOrdenHoy.FieldByName('sWbsContrato').AsString,1,Length(Cadena)) = Cadena);
              //and (roqOrdenHoy.FieldByName('dAvanceAnexoPondDirecto').AsFloat<>0);
  end
  else
    Accept := (roqOrdenHoy.FieldByName('sWbsContrato').AsString = roqAnexo.FieldByName('sWbs').AsString);
              //and (roqOrdenHoy.FieldByName('dAvanceAnexoPondDirecto').AsFloat<>0);
end;

procedure TfrmGraficaGerencial.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tdIdFecha.SetFocus
end;

procedure TfrmGraficaGerencial.tsArchivoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsNumeroOrden.SetFocus
end;

procedure TfrmGraficaGerencial.btnExitClick(Sender: TObject);
begin
  close
end;

Function TfrmGraficaGerencial.Ajuste(oGantt: Variant; Valor: Real) : Real;
Var
  Resul : Real;
Begin
  if oGantt.Application.version >= 12 then
    Resul := Valor / 1.0070
  Else
    Resul := Valor;
  Ajuste := Resul
End;

Function Month(Fecha: TDateTime) : Word;
Var
  Anio, Mes, Dia : Word;
Begin
  DecodeDate(Fecha,Anio,Mes,Dia);
  Month := Mes;
End;

Function QuitarNoValidos(Cadena: String) : String;
Var
  X: Integer;
  Resultado: String;
Const
  NoValidos = '\/:*?"<>|';
Begin
  // Eliminar los caracteres no validos para un nombre de archivo
  X := 0;
  Resultado := '';

  while x < Length(Cadena) do
  Begin
    Inc(x);
    if Pos(Cadena[x],NoValidos) = 0 then
      Resultado := Resultado + Cadena[x];
  End;

  QuitarNoValidos := Resultado;
End;

Function RightStr
    (Const Str: String; Size: Word): String;
Begin
  If Size > Length(Str) Then Size := Length(Str);
  RightStr := Copy(Str, Length(Str)-Size+1, Size)
End;

Function FechaCadena(Fecha: TDateTime; Modo: Byte): String;
Var
  Hora, Min, Seg, Mili: Word;
  Resultado: String;
Begin
  // Convierte la fecha/hora en sus fracciones
  DecodeTime(Fecha,Hora,Min,Seg,Mili);
  if Modo = 1 then
  Begin
    if Hora + Min + Seg = 0 then
      Hora := 24;
  End;
  Resultado := Chr(39) + DateToStr(Fecha) + ' ' + RightStr('0' + IntToStr(Hora),2) + ':' + RightStr('0' + IntToStr(Min),2) + ':' + RightStr('0' + IntToStr(Seg),2);

  FechaCadena := Resultado
End;

Function QuitarEnter(Cadena : String) : String;
Var
  vPos: Integer;
  Resul: String;
Begin
  vPos := 1;
  while vPos < Length(Cadena) do
  Begin
    if Cadena[vPos] <> chr(13) then
      Resul := Resul + Cadena[vPos];
    Inc(vPos);
  End;
  QuitarEnter := Resul;
End;

Procedure SetRowHeight(Objeto : Variant; Ren : Integer; Alto : Real);
Var
  CadRow : String;
  Renglon : Variant;
Begin
  CadRow := Trim(IntToStr(Ren)) + ':' + Trim(InttoStr(Ren));
  Renglon := Objeto.Rows[CadRow];
  Renglon.RowHeight := Alto;
End;

Function RowHeight(Objeto : Variant; Ren : Integer) : Real;
Var
  CadRow : String;
  Renglon : Variant;
Begin
  CadRow := Trim(IntToStr(Ren)) + ':' + Trim(IntToStr(Ren));
  Renglon := Objeto.Rows[CadRow];
  RowHeight := Renglon.RowHeight;
End;

Procedure SetSelect(Objeto : Variant; Cadena : String);
Var
  Rango : Variant;
Begin
  Objeto.Select;
  Try
    Rango := Objeto.Range[Cadena];
    Rango.Select;
  Except
    showmessage(Cadena);
  End;
End;

Function Letra(Numero:Integer) : String;
Var
  Paso1, Paso2 : Integer;
  Cadena : String;
Begin
  Dec(Numero);
  Paso1 := Trunc(Numero / 26);
  Paso2 := Numero - (paso1 * 26);
  if paso1 > 0 then Cadena := Chr(Paso1 + 64);
  Cadena := Cadena + chr(Paso2 + 65);
  Letra := Cadena;
End;

Procedure SetColumnWidth(Objeto : Variant; Col1 : Integer; Col2 : Integer; Ancho : Real);
Var
  CadCol : String;
  Columna : Variant;
Begin
  CadCol := Letra(Col1) + ':' + Letra(Col2);
  Columna := Objeto.Columns[CadCol];
  Columna.ColumnWidth := Ancho;
End;

Procedure TfrmGraficaGerencial.Encabezado(oGantt: Variant; oHoja: Variant);
Var
  myCol: Variant;
  myRow: Variant;
  myTiempo: Real;
  Cuenta: Integer;
  ValPaso: Real;
  VarTemp: String;
  Bloque: Extended;
  mFecha: TDateTime;
  OldFecha: Integer;
  OldCol: Integer;
  sValor: String;
  Condision: Boolean;
  kTit: Real;
  Cadena, tmpNombre: String;
  fs: TStream;

function GetTempFile(const Extension: string): string;
var
  Buffer: array[0..MAX_PATH] of Char;
  aFile: string;
begin
  Repeat
    GetTempPath(SizeOf(Buffer) - 1, Buffer);
    GetTempFileName(Buffer, '~', 0, Buffer);
    Result := ChangeFileExt(Buffer, Extension);
  until not FileExists(Result);
end;

Begin
  oGantt.ActiveWindow.Zoom := 75;
  SetColumnWidth(oGantt,2,2,50);  //Columns['B:B'].ColumnWidth := 50;
  SetColumnWidth(oGantt,rAncho,rAncho,0.5);

  // Dar formato general a las columnas
  myCol := oHoja.Columns['A:A'];
  myCol.Select;
  oGantt.Selection.HorizontalAlignment := xlCenter;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '@';
  oGantt.Selection.Font.Size := 8;
  oGantt.Selection.ColumnWidth := 10.71;

  myCol := oHoja.Columns['B:B'];
  myCol.Select;
  oGantt.Selection.HorizontalAlignment := xlGeneral;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.Font.Size := 8;

  myCol := oHoja.Columns['C:I'];
  myCol.Select;
  oGantt.Selection.HorizontalAlignment := xlCenter;
  oGantt.Selection.VerticalAlignment := xlTop;

  myCol := oHoja.Columns['E:E'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000%';

  myCol := oHoja.Columns['F:F'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000';
  oGantt.Selection.ColumnWidth := 0;

  myCol := oHoja.Columns['G:G'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000';
  oGantt.Selection.ColumnWidth := 0;

  myCol := oHoja.Columns['H:H'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000%';

  myCol := oHoja.Columns['I:I'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.00';
  oGantt.Selection.ColumnWidth := 0;

  myCol := oHoja.Columns['J:J'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.00';
  oGantt.Selection.ColumnWidth := 0;

  myCol := oHoja.Columns['K:K'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000%';

  myCol := oHoja.Columns['L:L'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000%';

  myCol := oHoja.Columns['M:M'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := '0.0000%';

  myCol := oHoja.Columns['N:N'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
  oGantt.Selection.HorizontalAlignment := xlCenter;
  oGantt.Selection.WrapText := True;
  oGantt.Selection.ColumnWidth := 12;

  myCol := oHoja.Columns['O:O'];
  myCol.Select;
  oGantt.Selection.VerticalAlignment := xlTop;
  oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
  oGantt.Selection.HorizontalAlignment := xlCenter;
  oGantt.Selection.WrapText := True;
  oGantt.Selection.ColumnWidth := 12;

  SetRowHeight(oGantt,10,13.8);
  myRow := oGantt.Rows['10:10'];
  myRow.WrapText := True;

  myRow := oGantt.Rows['10:10'];
  myRow.VerticalAlignment := xlTop;

  SetSelect(oHoja,'A09:A11');
  oGantt.Selection.Value := 'PARTIDA';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'B09:B11');
  oGantt.Selection.Value := 'DESCRIPCIÓN';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'C09:C11');
  oGantt.Selection.Value := 'TIEMPO PROGRAMADO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'D09:D11');
  oGantt.Selection.Value := 'DIAS';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'E09:E11');
  oGantt.Selection.Value := 'POND.';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'F09:F11');
  oGantt.Selection.Value := 'COSTO TOTAL MN';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'G09:G11');
  oGantt.Selection.Value := 'COSTO TOTAL USD';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'H09:H11');
  oGantt.Selection.Value := 'AVANCE PONDERADO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'I09:I11');
  oGantt.Selection.Value := 'COSTO EJECUTADO MN';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'J09:J11');
  oGantt.Selection.Value := 'COSTO EJECUTADO USD';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'K09:K11');
  oGantt.Selection.Value := 'AVANCE ANTERIOR AL PERIODO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'L09:L11');
  oGantt.Selection.Value := 'AVANCE PERIODO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'M09:M11');
  oGantt.Selection.Value := 'AVANCE TOTAL AL PERIODO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'N09:N11');
  oGantt.Selection.Value := 'FECHA PROG. DE INICIO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  SetSelect(oHoja,'O09:O11');
  oGantt.Selection.Value := 'FECHA PROG. DE TERMINO';
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.HorizontalAlignment := xlCenter;

  hTit := 0;
  kTit := 0;
  Cuenta := 0;

  // Determinar la altura total de los titulos
  myRow := oHoja.Rows['1:6'];
  myRow.RowHeight := 30;
  myRow := oHoja.Rows['7:7'];
  myRow.RowHeight := 40;
  myRow := oHoja.Rows['8:8'];
  myRow.RowHeight := 32;
  while Cuenta < rAlto - 1 do
  begin
    Inc(Cuenta);
    ValPaso := RowHeight(oGantt,Cuenta);
    hTit := hTit + ValPaso;
    if Cuenta + 2 < rAlto then
      kTit := kTit + ValPaso;
  end;

  // Agregar nota de tipo de grafica seleccionada
  Cadena := '';
  if AvPaq.ItemIndex = 1 then
  Begin
    Cadena := 'Nota: Los avances de los paquetes de actividades presentados corresponden exclusivamente a los avances de las actividades aquí graficadas y no necesariamente corresponden a los avances generales.';
    SetColumnWidth(oGantt, 11, 11, 0.0);
    SetColumnWidth(oGantt, 13, 13, 0.0);
  End;

  // AGregar el mensaje correspondiente de acuerdo a los registros
  if Cadena <> '' then Cadena := Cadena + #10;

  case RadioGroup1.ItemIndex of
    0: Cadena := Cadena + '(Avances obtenidos acumulando los volumenes excedentes y generando su barra correspondiente)';
    1: Cadena := Cadena + '(Avances obtenidos sin acumular los volumenes excedentes pero generando su barra correspondiente)';
    2: Cadena := Cadena + '(Avances obtenidos sin acumular los volumenes excedentes y sin generar su barra correspondiente)';
  end;
  SetSelect(oHoja,'A8:T8');
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.Font.Size := 10;
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.NumberFormat := '0.00';
  oGantt.Selection.Value := Cadena;

  // Determinar el ancho total de las columnas fijas
  Cuenta := 0;
  lCol := 0;
  while Cuenta < rAncho do
  begin
    Inc(Cuenta);
    VarTemp := Letra(Cuenta);
    myCol := oGantt.Columns[ VarTemp + ':' + VarTemp];
    ValPaso := myCol.Width;
    lCol := lCol + ValPaso;
  end;

  // Ajustar periodo de inicio al bloque completo
  myTiempo := 1440 / pFactor / 24 / 60;     // Convertir Días a formato de tiempo de excel
  Bloque := Trunc(pInicioP / myTiempo);     // Obtener bloque de tiempo de acuerdo a periodo seleccionado
  pInicioP := Bloque * myTiempo;            // Cerrar periodo de inicio de acuerdo a bloque de tiempo seleccionado

  nCol := Trunc(pTerminoP - pInicioP) * pFactor;

  // Establecer las fechas en titulos de barras
  aCol := 0;
  mFecha := pInicioP;
  OldFecha := 0;
  OldCol := 0;

  // Rutina de corte para linea dos
  while mFecha < pTerminoP do
  begin
    if myTiempo > 1 then
      Condision := (Month(OldFecha) <> Month(mFecha)) Or ((mFecha + myTiempo) > pTerminoP)
    Else
      Condision := (OldFecha <> Trunc(mFecha)) or ((mFecha + myTiempo) > pTerminoP);

    if Condision then
    begin
      if OldFecha <> 0 then
      begin
        // Cerrar el bloque anterior
        sValor := Letra(rAncho + OldCol) + '10:' + Letra(rAncho + aCol) + '10';
        SetSelect(oHoja,sValor);
        oGantt.Selection.MergeCells := True;
        if aCol = OldCol then
        Begin
          // Se trata de una misma columna
          if AnchoColumasGrafica = OrAnchoColumnasGrafica then
          Begin
            oGantt.Selection.Font.Size := 6;
            if myTiempo <= 1 then
              oGantt.Selection.NumberFormat := 'dd/mm';
          End;
        End;
      end;
      OldCol := aCol + 1;
    end;

    sValor := Letra(rAncho + aCol + 1) + '10:' + Letra(rAncho + aCol + 1) + '10';
    SetSelect(oHoja,sValor);
    oGantt.Selection.Value := mFecha;
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.Font.Size := 8;
    if myTiempo > 1 then
      oGantt.Selection.NumberFormat := 'mmmm/aa'
    Else
      oGantt.Selection.NumberFormat := 'dd/mm/aa';

    // Rutina de tercer valor
    sValor := Letra(rAncho + aCol + 1) + '11:' + Letra(rAncho + aCol + 1) + '11';
    SetSelect(oHoja,sValor);

    if myTiempo < 1 then
    Begin
      // Incremento de tiempo inferior a un día, colocar los valores correspondientes al horario en tercer renglón
      if CheckBox2.Checked then
        oGantt.Selection.Value := ((mFecha - Trunc(mFecha)) + myTiempo) * 24;
    End
    Else
    Begin
      if myTiempo > 1 then
      begin
        // Incremento de tiempo superior a un día, colocar los valores correspondientes a la fecha en tercer renglón
        oGantt.Selection.NumberFormat := 'dd/mm';
        oGantt.Selection.Value := mFecha;
      end
      else
      begin
        // Incremento de tiempo igual a un día, colocar contador de días en tercer renglón
        oGantt.Selection.Value := aCol + 1;
      end;
    End;

    oGantt.Selection.HorizontalAlignment := xlCenter;

    oGantt.Selection.Font.Size := 8;

    OldFecha := Trunc(mFecha);
    //OldCol := aCol;
    mFecha := mFecha + myTiempo;
    Inc(aCol);
  end;

  sValor := Letra(rAncho + OldCol) + '10:' + Letra(rAncho + aCol) + '10';
  SetSelect(oHoja,sValor);
  oGantt.Selection.MergeCells := True;

  if OldCol = aCol then
  Begin
    // Se trata de la misma columna, cambiar el formato
    sValor := Letra(rAncho + aCol) + '10:' + Letra(rAncho + aCol) + '10';
    SetSelect(oHoja,sValor);
    oGantt.Selection.NumberFormat := 'dd/mm';
  End;

  // Establecer el ancho de columnas
  SetColumnWidth(oGantt,rAncho + 1,rAncho + aCol, AnchoColumasGrafica);
  myCol := oGantt.Columns[Letra(rAncho + 1)]; // + Letra(aCol + rAncho)];
  myCol.Select;

  wCol := myCol.Width * aCol;
  Dec(aCol);
  RangoInicio := pInicioP;
  BarraRango := myTiempo;

  // Obtener los datos de la empresa
  if Connection.configuracion.RecordCount > 0 then
  Begin
    if aCol > 8 then
      SetSelect(oHoja,'C1:' + Letra(rAncho + aCol - 9) + '1')
    else
      SetSelect(oHoja,'C1:I1');

    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 24;
    oGantt.Selection.Font.Bold := True;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.WrapText := False;
    oGantt.Selection.Value := Connection.Configuracion.FieldByName('sNombreCorto').AsString;
  End;

  // Generar los encabezados de la gráfica
  if aCol > 8 then
    SetSelect(oHoja,'C2:' + Letra(rAncho + aCol - 9) + '6')
  else
    SetSelect(oHoja,'C2:I6');

  oGantt.Selection.MergeCells := True;
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.Font.Size := 14;
  oGantt.Selection.Font.Bold := True;
  oGantt.Selection.WrapText := True;

  Cadena := Connection.contrato.FieldByName('mCliente').AsString + chr(10) + chr(10);
  Cadena := Cadena + Connection.contrato.FieldByName('sContrato').AsString + '  -  ' + Connection.contrato.FieldByName('mDescripcion').AsString + chr(10) + chr(10);
  Cadena := QuitarEnter(Cadena);

  SetSelect(oHoja,'C2');
  oGantt.Selection.Value := Cadena;

  Case Opciones.ItemIndex of
    0: Cadena := 'DIAGRAMA DE GANTT GERENCIAL PERIODO DE GRAFICACIÓN DEL ' + IntToStr(DayOfTheMonth(tdfechainicio.DateTime)) + ' DE ' + nMes[MonthOfTheYear(tdfechainicio.DateTime)] + ' DE ' + FormatDateTime('yyyy',tdfechainicio.DateTime) + ' AL ' + IntToStr(DayOfTheMonth(tdIdfecha.DateTime)) + ' DE ' + nMes[MonthOfTheYear(tdIdfecha.DateTime)] + ' DE ' + FormatDateTime('yyyy',tdIdfecha.DateTime);
    1: Cadena := 'DIAGRAMA DE GANTT ORDEN DE TRABAJO: ' + Ordenesdetrabajo.FieldValues['sNumeroOrden'] + #13 + ' PERIODO DE GRAFICACIÓN DEL ' + IntToStr(DayOfTheMonth(tdfechainicio.DateTime)) + ' DE ' + nMes[MonthOfTheYear(tdfechainicio.DateTime)] + ' DE ' + FormatDateTime('yyyy',tdfechainicio.DateTime) + ' AL ' + IntToStr(DayOfTheMonth(tdIdfecha.DateTime)) + ' DE ' + nMes[MonthOfTheYear(tdIdfecha.DateTime)] + ' DE ' + FormatDateTime('yyyy',tdIdfecha.DateTime);
  End;
  Cadena := QuitarEnter(Cadena);

  //Cadena := 'DIAGRAMA DE GANTT DE SEGUIMIENTO';

  SetSelect(oHoja,'C7:' + Letra(13 + aCol) + '7');
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.Font.Size := 14;
  oGantt.Selection.Font.Bold := True;
  oGantt.Selection.WrapText := False;
  oGantt.Selection.Value := Cadena;












      // Obtener la imagen del cliente desde la base de datos
oGantt.Visible := True;
oGantt.ScreenUpdating := True;
      oGantt.ScreenUpdating := True;
      tmpNombre := GetTempFile('.~im');

      fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead);
      try
        fs.Seek(0, soFromBeginning);
        with TFileStream.Create(tmpNombre, fmCreate) do
          try
            CopyFrom(fs, fs.Size)
          finally
            Free
          end;
      finally
        fs.Free
      end;
      // Agregar Imagen de la empresa
      oHoja.Cells[1,1].Select;
      oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;
      // Determinar el tamaño real de la imagen
      Bloque := (oGantt.Rows[1].Height + oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height) + 20;   // * 0.7;
      oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromBottomRight);
      oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

      oGantt.Selection.ShapeRange.Left := 24;  //Margen;    //Excel.Columns['A:A'].Width + Margen;
      oGantt.Selection.ShapeRange.Top := 0;

      // Obtener la imagen de la empresa desde la base de datos
      fs := Connection.Contrato.CreateBlobStream(Connection.Contrato.FieldByName('bImagen'), bmRead);
      try
        fs.Seek(0, soFromBeginning);
        with TFileStream.Create(tmpNombre, fmCreate) do
          try
            CopyFrom(fs, fs.Size)
          finally
            Free
          end;
      finally
        fs.Free
      end;
      // Agregar Imagen Cliente a la hoja de excel
      oHoja.Cells[2,18 + aCol].Select;
      oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;
      // Determinar el tamaño real de la imagen
      Bloque := (oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height);   // * 0.7;
      oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft); //msoScaleFromBottomRight);
      oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

      oGantt.Selection.ShapeRange.IncrementLeft(oGantt.Selection.ShapeRange.Width * -1);
      oGantt.Selection.ShapeRange.Top := oGantt.Rows[1].Height;

      // Eliminar el archivo temporal
      Try
        DeleteFile(tmpNombre);
      Finally
        tmpNombre := '';
      End;





{













  fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead);
  try
    fs.Seek(0, soFromBeginning);
    with TFileStream.Create('c:\ImagenTemporal.tmp', fmCreate) do
      try
        CopyFrom(fs, fs.Size)
      finally
        Free
      end;
  finally
    fs.Free
  end;
  // Agregar Imagen Cliente1
  oHoja.Shapes.AddShape(1,0,0,200,200).Select;
  oGantt.Selection.ShapeRange.Line.Visible := False;
  oGantt.Selection.ShapeRange.Fill.UserPicture('c:\ImagenTemporal.tmp');


  fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
  try
    fs.Seek(0, soFromBeginning);
    with TFileStream.Create('c:\ImagenTemporal.tmp', fmCreate) do
      try
        CopyFrom(fs, fs.Size)
      finally
        Free
      end;
  finally
    fs.Free
  end;
  // Agregar Imagen Cliente2
  oHoja.Shapes.AddShape(1,Ajuste(oGantt, wCol + lcol - 200),0,200,200).Select;
  oGantt.Selection.ShapeRange.Line.Visible := False;
  oGantt.Selection.ShapeRange.Fill.UserPicture('c:\ImagenTemporal.tmp'); }
End;

procedure TfrmGraficaGerencial.btnGraphClick(Sender: TObject);
Var
  zrqPrograma, qPaquete : TZQuery;
  qBusca,  qLoc, qAvances, qAnteriorPda, zrqponderado : TZReadOnlyQuery;
  OpenDialog: TOpenDialog;
  mContrato, Llave, fName, Ext, Cadena, mCol, nombretabla, nombrecampo, ncantidadanexo, nwbs, numeroorden, paquete : String;
  Resul, frente : Boolean;
  nDias, AcumPonde, Alto, hCent, ColBarra,
  Val1, Val2, DurBarra, fAlto,
  tFecha, iFecha, tAvance, i2Fecha, t2Fecha, Avance,
  pPonde, myInicio, myTermino, AcumAnterior, Original, hCol: Extended;
  Continua, Pendiente: Boolean;
  Cuenta, mCta, Ren, cNivel, cBarras, Cuantos: Integer;
  oGantt, oLibro, oHoja, myCol: Variant;
  Marca, sCadQuery0, sCadQuery1, sCadQuery2, sCadQuery3, sxCadQuery, OldActiv,
  NumberFormat, OldNumero: String;
  OldIniBar, OldFinBar, gVolumen, VolExced, Dur1Barra, Dur2Barra,
  Col2Barra, SumCant, Resto: Real;
  OldExced: Variant;
  Reintentar: Boolean;
  Qryavances: tzReadOnlyQuery;

begin
//  numeroorden := ordenesdetrabajo.FieldValues['snumeroorden'];
  // Generar gráfica general
  if Opciones.ItemIndex = 0 then
  begin
    GenerarNuevaGrafica;
    Exit;
  end;

  Button1.Click;

  qryavances := tzReadOnlyQuery.Create(frmgraficagerencial);
  qryavances.Connection := connection.zconnection;
//  qryavances.Active := False;
//  qryavances.SQL.Clear;
//  qryavances.SQL.Add('delete from ganttavances');
//  qryavances.ExecSQL;


  if Opciones.ItemIndex > 1 then
    Exit;

  Label3.Visible := False;

  frente := False;
  nombretabla := 'actividadesxanexo';
  nombrecampo := 'dcantidadanexo';
  ncantidadanexo := '';
  numeroorden := '';
  nwbs := '';

  if opciones.ItemIndex = 1 then
  begin
      frente := True;
      nombretabla := 'actividadesxorden';
      nombrecampo := 'dcantidad';
      ncantidadanexo := ',a.dcantidad as dcantidadanexo';
      nwbs := 'and b.sWbs = a.sWbs ';
      numeroorden := ' and snumeroorden = ' + quotedstr(ordenesdetrabajo.FieldByName('snumeroorden').asstring);
  end;


  Lista[01] := 4;             // Cada 6 horas
  Lista[02] := 2;             // Cada 12 horas
  Lista[03] := 1;             // Cada 24 horas
  Lista[04] := (1 / 7);       // Cada Semana
  Lista[05] := (1 / 14);      // Cada Catorcena
  Lista[06] := (1 / 31);      // Cada Mes
  Lista[07] := (1 / 366);     // Cada Año

  fAlto := 10;

  zrqponderado := TZReadOnlyQuery.Create(nil);
  zrqponderado.Connection := Connection.zConnection;

  zrqPrograma := TZQuery.Create(Nil);
  zrqPrograma.Connection := Connection.zConnection;

  qLoc := TZReadOnlyQuery.Create(Nil);
  qLoc.Connection := Connection.zConnection;

  qAvances := TZReadOnlyQuery.Create(Nil);
  qAvances.Connection := Connection.zConnection;

  if Opciones.ItemIndex <> 0 then
  Begin
//    sCadQuery0 := 'select a.* from actividadesxOrden a ';
    sCadQuery0 := 'select a.*, a.dcantidad as dcantidadanexo from actividadesxorden a ';
    sCadQuery1 := ' and b.snumeroorden = ' + quotedstr(OrdenesdeTrabajo.FieldValues['snumeroorden']) + ' and b.sWbs = a.sWbs ';
//    sCadQuery1 := ' and b.snumeroorden = ' + quotedstr(OrdenesdeTrabajo.FieldValues['snumeroorden']) ;
    sCadQuery2 := ' and a.snumeroorden = ' + quotedstr(OrdenesdeTrabajo.FieldValues['snumeroorden']);
    sCadQuery3 := ' and a.snumeroorden = ' + quotedstr(ordenesdetrabajo.fieldvalues['snumeroorden']);
  End
  Else
  Begin
    sCadQuery0 := 'select a.* from actividadesxanexo a ';
    sCadQuery1 := '';
    sCadQuery2 := '';
    sCadQuery3 := '';
  End;

  { Determinar los datos de acuerdo al contrato seleccionado }
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.Sql.Add('create temporary table tempgantt ');
  Connection.zCommand.SQL.Add(sCadQuery0 + 'where a.scontrato = ' + quotedstr(global_contrato) + ' and a.sidconvenio = ' + quotedstr(global_convenio) + numeroorden +' and a.stipoactividad = ''Actividad'' and a.snumeroactividad in (select b.snumeroactividad from bitacoradeactividades b where b.scontrato = ' + quotedstr(global_contrato));
  Connection.zCommand.SQL.Add(sCadQuery1 + ' and b.sidtipomovimiento = ''E'' and b.didfecha <= date(' + quotedstr(formatdatetime('yyyy-mm-dd',tdIdFecha.DateTime)) + ') and b.didfecha >= date(' + Quotedstr(formatdatetime('yyyy-mm-dd',tdFechaInicio.DateTime)) + '))');
  Connection.zCommand.ExecSql;




  // Cargar los valores anteriores al periodo
  if AvPaq.ItemIndex = 0 then
  Begin
    qAnteriorPda := TZReadOnlyQuery.Create(Nil);
    qAnteriorPda.Connection := Connection.zConnection;
    qAnteriorPda.Close;
    qAnteriorPda.SQL.Text := 'select a.*, b.swbs as swbsanexo, b.' + nombrecampo + ' as dCantidadAnexo  from bitacoradeactividades a inner join '+ nombretabla + ' b on (b.scontrato = a.scontrato and b.stipoactividad = ''Actividad'' and b.snumeroactividad = a.snumeroactividad) ' +
    'where a.scontrato = "' + Global_Contrato + '"' + sCadQuery3 + nwbs + ' and a.sidtipomovimiento = ''E'' and a.didfecha < (' + quotedstr(formatdatetime('yyyy-mm-dd',self.tdFechaInicio.datetime)) + ')';
    qAnteriorPda.Open;
  End;

  // Cargar todos los datos necesarios correspondientes a actividades

  zrqPrograma.close;
  zrqPrograma.sql.Text := 'select * from tempgantt order by iitemorden';
  zrqPrograma.Open;

  qBusca := TzReadOnlyQuery.Create(Nil);
  qBusca.Connection := Connection.zConnection;

  qPaquete := TZQuery.Create(Nil);
  qPaquete.Connection := Connection.zConnection;
  qPaquete.SQL.Clear;
  qPaquete.SQL.Text := 'select a.* ' + ncantidadanexo + ' from '+ nombretabla + ' a where a.scontrato = ' + quotedstr(global_contrato) + ' and a.sidconvenio = ' + quotedstr(global_convenio) + numeroorden + ' and a.stipoactividad = ''Paquete''';
  qPaquete.Open;

  Cuantos := 1;
  While Cuantos > 0 do
  Begin
    qBusca.Close;
    qBusca.SQL.Text := 'select distinct * from tempgantt group by swbsanterior';
    qBusca.Open;

    // Barrer todos los registros para determinar su
    qBusca.First;
    Cuantos := 0;
    while Not qBusca.Eof do
    Begin
      // Localizar el wbs anterior (si es que existe)
      qPaquete.Locate('swbs',qBusca.FieldValues['swbsanterior'],[]);
      if qPaquete.Found then
      Begin

        // Verificar si ya existe este registro
        zrqPrograma.Locate('swbs',qPaquete.FieldValues['swbs'],[]);
        if Not zrqPrograma.Found then
        Begin
          if  nombretabla = 'actividadesxorden' then
          begin
            if trim(qpaquete.FieldValues['mcomentarios']) = '' then
            begin
               qpaquete.FieldValues['mcomentarios'] :=  '*';
             end;
          end;

          zrqPrograma.Append;
          zrqPrograma.CopyFields(qPaquete);
          zrqPrograma.UpdateRecord;
          zrqPrograma.Post;
          Inc(Cuantos);
        End;
      End;

      qBusca.Next;
    End;
  End;

  zrqPrograma.Refresh;  // Reordenar las partidas
  If zrqPrograma.RecordCount = 0 then
  begin
    showmessage('No existe información para este contrato: ' + Global_Contrato);
    Close;
    Exit;
  end;

  // Eliminar los caracteres incorrectos de la candea sContrato
  mContrato := QuitarNovalidos(Global_Contrato);

  // Localizar periodo de generación (Programado)
  Cuenta := 0;
  pInicioP := 0;
  pTerminoP := 0;
  zrqPrograma.First;
  Llave := zrqPrograma.FieldByName('sWbs').AsString;
  pInicioP := Self.tdFechaInicio.datetime;
  pTerminoP := Self.tdIdFecha.datetime + 1;

  // Localizar periodo de generacion (Real)
  Cuenta := 0;
  nDias := (pTerminoP - pInicioP);

  // Verificar el formato del calendario
  mCta := 0;
  Continua := True;
  pFactor := 0;
  while (mCta < 7) And (Continua) do
  Begin
    Inc(mCta);
    if nDias * Lista[mCta] <= MaxBloques then
    begin
      pFactor := Lista[mCta];
      Continua := False;
    end;
  End;
  if Continua then
  Begin
    showmessage('Existe un problema en las fechas de inicio y terminación de actividades, verifique esto e intente de nuevo.');
    Close;
    Exit;
  End;

  // Verificar si se requiere mostrar el intervalo entre días
  AnchoColumasGrafica := OrAnchoColumnasGrafica;
  If Not CheckBox2.Checked then
  Begin
    pFactor := 1;
    { Si no se requiere generar el intervalo dentro de los días, se deben generar las columnas de los días a 4 veces su ancho original}
    AnchoColumasGrafica := OrAnchoColumnasGrafica * 4;
  End;

  //  Establecer por medio del uso de un usuario el nombre y localización del archivo que se ha de generar
  OpenDialog := TOpenDialog.Create(self);
  OpenDialog.Filter := 'Archivos de MS EXCEL|*.xls';
  OpenDialog.FilterIndex := 1;

  // Determinar el nombre propuesto para la grafica de gantt
  OpenDialog.FileName := 'Gráfica de GANTT de seguimiento - ' + mContrato + '.xls';

  // Verificar la extención en el nombre de archivo
  If openDialog.Execute Then
    fName := OpenDialog.FileName
  Else
  Begin
    Close;
    Exit;
  End;

  if Length(fName) > 3 then
  Begin
    Ext := Upcase(fName[Length(fName)- 3]) + Upcase(fName[Length(fName)- 2]) + Upcase(fName[Length(fName)- 1]) + Upcase(fName[Length(fName)]);
    if Ext <> '.XLS' then
      fName := fName + '.xls';
  End
  Else
    fName := fName + '.xls';

  // Generar el ambiente de excel para vaciar los datos de la gráfica
  Try
    oGantt := CreateOleObject('Excel.Application');
  except
    oGantt.quit;
    showmessage('No se pudo crear el objeto EXCEL o se produjo algún error.');
    raise;
  End;
  oGantt.Visible := False;
  oGantt.DisplayAlerts := False;
  oGantt.ScreenUpdating := False;
  oLibro := oGantt.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar
  oHoja := oLibro.Sheets[1];        // Determinar la hoja de trabajo

  Encabezado(oGantt,oHoja);   // Colocar el encabezado del diagrama de GANTT

  oGantt.Visible := CheckBox1.Checked;

  if CheckBox1.Checked then
  Begin
    oGantt.ScreenUpdating := True;
    oGantt.ScreenUpdating := False;
  End;

  // Barrer el todos los registros
  ProgressBar1.Min := 0;
  ProgressBar1.Max := zrqPrograma.RecordCount;
  ProgressBar1.Visible := True;
  ProgressBar1.Step := 1;

  zrqPrograma.First;
  Ren := rAlto + 1;       // Aquí inicia el proceso de datos
  Cuenta := 0;
  cNivel := -1;
  AcumPonde := 0;
  Alto := 0;

oGantt.Visible := True; //rangelito
oGantt.ScreenUpdating := True;
  While Cuenta < zrqPrograma.RecordCount do
  Begin
    zrqponderado.close;
    zrqponderado.sql.clear;
    zrqponderado.sql.Add('select * from  ' +  nombretabla );
    zrqponderado.sql.add(' where scontrato = ' + quotedstr(global_contrato) + 'and sidconvenio = ' + quotedstr(global_convenio) + ' and  swbs = ' + quotedstr(zrqPrograma.fieldbyname('swbs').asstring));
    zrqponderado.Open;

    //*****************************************************************************************************************************
    //* Inicia proceso de datos generales de partidas
    SetSelect(oHoja,'A' + Trim(Inttostr(Ren)) + ':A' + Trim(Inttostr(Ren + 3)));
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.Value := zrqPrograma.FieldByName('sNumeroActividad').asString;

    SetSelect(oHoja,'B' + Trim(Inttostr(Ren)) + ':B' + Trim(Inttostr(Ren + 3)));
    oGantt.Selection.Value := zrqPrograma.FieldByName('mDescripcion').asString;
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'C' + Trim(Inttostr(Ren)) + ':C' + Trim(Inttostr(Ren + 3)));
    oGantt.Selection.Value := ((zrqPrograma.FieldByName('dFechaFinal').AsFloat + 1)  - zrqPrograma.FieldByName('dFechaInicio').AsFloat) * 24;
    oGantt.Selection.MergeCells := True;

    if zrqPrograma.FieldByName('sTipoActividad').AsString <> 'Paquete' then
    Begin
      // Colocar formato condicional para actividades
      oGantt.Selection.FormatConditions.Delete;
      oGantt.Selection.FormatConditions.Add(xlCellValue, xlEqual, '1');
      oGantt.Selection.FormatConditions[1].Font.Bold := True;
      oGantt.Selection.FormatConditions[1].Interior.ColorIndex := 8;
    End;

    SetSelect(oHoja,'N' + Trim(Inttostr(Ren)) + ':N' + Trim(Inttostr(Ren + 3)));
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.Value := FechaCadena(zrqPrograma.FieldByName('dFechaInicio').AsDateTime,0);

    SetSelect(oHoja,'O' + Trim(Inttostr(Ren)) + ':O' + Trim(Inttostr(Ren + 3)));
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.Value := FechaCadena(zrqPrograma.FieldByName('dFechaFinal').AsDateTime,1);

    hCent := RowHeight(oGantt,Ren);
    hCent := hCent / 2;

    Alto := Alto + RowHeight(oGantt,Ren);
    Inc(Ren);
    //* Terminar proceso de datos generales de partidas
    //*****************************************************************************************************************************

    //*****************************************************************************************************************************
    //* Inicia proceso de avance programado
    myInicio := zrqPrograma.FieldByName('dFechaInicio').AsFloat;
    myTermino := zrqPrograma.FieldByName('dFechaFinal').AsFloat + 1;
    if myInicio < pInicioP then
      myInicio := pInicioP;
    if myTermino > pTerminoP then
      myTermino := pTerminoP;

    ColBarra := ((myInicio - pInicioP) / (pTerminoP - pInicioP) * wCol);
    Val1 := myTermino;
    Val2 := myInicio;
    DurBarra := ((Val1 - Val2) / (pTerminoP - pInicioP)) * wCol;

    if DurBarra < 0 then DurBarra := 0;

    // Verificar si es una partida concentradora
    if zrqPrograma.FieldByName('sTipoActividad').AsString = 'Paquete' then
    Begin
      // Color amarillo para las concentradoras
      SetSelect(oHoja,'A' + Trim(inttostr(Ren - 1)) + ':' + Letra(rAncho - 1) + Trim(Inttostr(Ren)));
      oGantt.Selection.Interior.colorIndex := 6;
      oGantt.Selection.Interior.Pattern := xlSolid;

      // Colocar barra concentradora
      oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, DurBarra), (fAlto / 2)).Select;
      oGantt.Selection.ShapeRange.Fill.Solid;
      oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
      oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

      if myInicio = zrqPrograma.FieldByName('dFechaInicio').AsFloat then
      Begin
        // Colocar indicador de inicio de concentradora
        oHoja.Shapes.AddShape(msoShapeRightTriangle, lCol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto, (fAlto / 2), (fAlto / 2)).Select;
        oGantt.Selection.ShapeRange.IncrementRotation(90);
        oGantt.Selection.ShapeRange.Fill.Solid;
        oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
        oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
      End;

      if myTermino =zrqPrograma.FieldByName('dFechaFinal').AsFloat + 1 then
      Begin
        // Colocar indicador de termino de concentradora
        oHoja.Shapes.AddShape(msoShapeRightTriangle, lCol + Ajuste(oGantt, ColBarra + DurBarra) - (fAlto / 2), hTit + hCent + Alto, (fAlto / 2), (fAlto / 2)).Select;
        oGantt.Selection.ShapeRange.IncrementRotation(180);
        oGantt.Selection.ShapeRange.Fill.Solid;
        oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
        oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
      End;
    end
    Else
    Begin
      // Colocar barra de actividad programada
      oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, DurBarra), fAlto).Select;
      oGantt.Selection.ShapeRange.Fill.Solid;
      oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 48;
      oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
      oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
    End;

    Alto := Alto + (RowHeight(oGantt,Ren));
    Inc(Ren);
    //* Terminar proceso de avances programados
    //*****************************************************************************************************************************

    Alto := Alto + (RowHeight(oGantt,Ren));
    Inc(Ren);

    SetSelect(oHoja,'E' + Trim(Inttostr(Ren - 3)) + ':E' + Trim(Inttostr(Ren)));
    oGantt.Selection.Value := zrqprograma.FieldValues['dPonderado'] / 100;

    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'F' + Trim(Inttostr(Ren - 3)) + ':F' + Trim(Inttostr(Ren)));
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'G' + Trim(Inttostr(Ren - 3)) + ':G' + Trim(Inttostr(Ren)));
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'H' + Trim(Inttostr(Ren - 3)) + ':H' + Trim(Inttostr(Ren)));
    if zrqPrograma.FieldByName('sTipoActividad').AsString <> 'Paquete' then
      oGantt.Selection.FormulaR1C1 := '=+RC[5]*RC[-3]';
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'I' + Trim(Inttostr(Ren - 3)) + ':I' + Trim(Inttostr(Ren)));
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'J' + Trim(Inttostr(Ren - 3)) + ':J' + Trim(Inttostr(Ren)));
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'K' + Trim(Inttostr(Ren - 3)) + ':K' + Trim(Inttostr(Ren)));
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'L' + Trim(Inttostr(Ren - 3)) + ':L' + Trim(Inttostr(Ren)));
    if zrqPrograma.FieldByName('sTipoActividad').AsString <> 'Paquete' then
      oGantt.Selection.FormulaR1C1 := '=+SUM(R[3]C[4]:R[3]C[' + IntToStr(aCol + 6) + '])';
    oGantt.Selection.MergeCells := True;

    SetSelect(oHoja,'M' + Trim(Inttostr(Ren - 3)) + ':M' + Trim(Inttostr(Ren)));
    if zrqPrograma.FieldByName('sTipoActividad').AsString <> 'Paquete' then
      oGantt.Selection.FormulaR1C1 := '=+SUM(RC[-2]:R[3]C[-1])';
    oGantt.Selection.MergeCells := True;

    if zrqPrograma.FieldByName('sTipoActividad').AsString = 'Paquete' then
    Begin
      {*************************************************************
        Inicia proceso de paquete de actividades
       *************************************************************}
      if True then sxCadQuery := sCadQuery3 Else sxCadQuery := '';

      // Calcular el acumulado anterior al periodo
      AcumAnterior := 0;
      if AvPaq.ItemIndex = 0 then
      Begin
        qAnterior.close;
        qAnterior.sql.clear;
        qAnterior.sql.Add('select a.didfecha, a.davance, a.dcantidad, b.' + nombrecampo + ' as dcantidadanexo, b.dponderado, a.snumeroactividad, b.swbs, b.dponderado, b.' + nombrecampo + ' as dcantidadanexo ');
        qAnterior.sql.add('from bitacoradeactividades a inner join '+ nombretabla + ' b on (b.scontrato = a.scontrato and b.sidconvenio = ' + quotedstr(global_convenio));
        qAnterior.sql.add(' ' + nwbs + ' and b.stipoactividad = ''Actividad'' and b.snumeroactividad = a.snumeroactividad) where a.scontrato = ' + quotedstr(global_contrato) + sxCadQuery + ' and a.sidtipomovimiento = ''E'' and b.swbs like ' + quotedstr(zrqPrograma.FieldValues['swbs'] + '.%') + ' and a.didfecha < date(' + Quotedstr(formatdatetime('yyyy-mm-dd',self.tdFechaInicio.datetime)) + ')');
        qAnterior.Open;

        qryavances.Active := False;
        qryavances.SQL.Clear;
        qryavances.SQL.Add('select sum(davance) as davance from ganttavances where didfecha < :fecha and swbs like ' + quotedstr(zrqPrograma.FieldValues['swbs'] + '.%') );
        qryavances.Params.ParamByName('fecha').Value := self.tdFechaInicio.datetime;
        qryavances.Open;

///// aqui
{        while Not qAnterior.Eof do
        Begin
          if qAnterior.FieldValues['dcantidadanexo'] > 0 then
            AcumAnterior := AcumAnterior + ((qAnterior.fieldvalues['dcantidad'] / qAnterior.FieldValues['dcantidadanexo']) * qAnterior.FieldValues['dponderado']);

          qAnterior.Next;
        End; }
        if (qryavances.FieldValues['davance'] > 0) and (zrqprograma.FieldValues['dponderado'] > 0) then
        begin
            if qryavances.FieldValues['davance'] >  zrqprograma.FieldValues['dponderado'] then
               acumanterior := 100
            else
                AcumAnterior := qryavances.FieldValues['davance'] / (zrqprograma.FieldValues['dponderado'] / 100);

        end
        else
            AcumAnterior := 0;

      End;

      // Si se trata de un paquete de actividades calcular el avance hasta la fecha final del periodo
      connection.zcommand.close;
      connection.zcommand.sql.Clear;
      connection.zcommand.sql.Add('select a.didfecha, a.davance, a.dcantidad, b.' + nombrecampo + ' as dcantidadanexo, b.dponderado, a.snumeroactividad, b.swbs ');
      connection.zcommand.sql.add('from bitacoradeactividades a inner join ' + nombretabla + ' b on (b.scontrato = a.scontrato and b.sidconvenio = ' + quotedstr(global_convenio));
      connection.zcommand.sql.add(' ' + nwbs + ' and b.stipoactividad = ''Actividad'' and b.snumeroactividad = a.snumeroactividad) where a.scontrato = ' + quotedstr(global_contrato) + sxCadQuery + ' and a.sidtipomovimiento = ''E'' and b.swbs like ' + quotedstr(zrqPrograma.FieldValues['swbs'] + '.%') + ' and a.didfecha <= date(' + Quotedstr(formatdatetime('yyyy-mm-dd',self.tdIdFecha.datetime)) + ') order by b.swbs');
      connection.zcommand.Open;

      qryavances := tzReadOnlyQuery.Create(frmgraficagerencial);
      qryavances.Connection := connection.zconnection;
      qryavances.Active := False;
      qryavances.SQL.Clear;
      qryavances.SQL.Add('select sum(davance) as davance from ganttavances where didfecha <= :fecha and swbs like ' + quotedstr(zrqPrograma.FieldValues['swbs'] + '.%') );
      qryavances.Params.ParamByName('fecha').Value := self.tdIdFecha.datetime;
///aqui
      qryavances.open;


      t2Fecha := 0;
      i2Fecha := 0;
      tAvance := 0;
      Avance := 0;
      SumCant := 0;
      if Not Connection.zCommand.Eof then OldNumero := Connection.zCommand.FieldValues['sWbs'];

      while Not connection.zcommand.eof do
      Begin
        if (i2Fecha = 0) Or (i2Fecha > connection.zCommand.FieldByName('dIdFecha').AsFloat) then
          i2Fecha := connection.zCommand.FieldByName('dIdFecha').AsFloat;
        if t2Fecha < (connection.zCommand.FieldByName('dIdFecha').AsFloat + 1) then
          t2Fecha := connection.zCommand.FieldByName('dIdFecha').AsFloat + 1;

        if OldNumero <> Connection.zCommand.FieldValues['sWbs'] then SumCant := 0;

        SumCant := SumCant + connection.zcommand.fieldvalues['dCantidad'];
        Resto := connection.zcommand.fieldvalues['dCantidad'];

        // Verificar si el cantidad reportada para avance supera la cantidad de anexo
        if (SumCant > Connection.zCommand.FieldValues['dCantidadAnexo']) Then
          // Si la cantidad reportada supera la cantidad de anexo, verificar si se debe considerar la cantidad excedente
          if RadioGroup1.ItemIndex > 0 then
            If (SumCant - connection.zcommand.fieldvalues['dCantidad'] <= Connection.zCommand.FieldValues['dCantidadAnexo']) then
              Resto := connection.zcommand.fieldvalues['dCantidad'] - (SumCant - Connection.zCommand.FieldValues['dCantidadAnexo'])
            Else
              Resto := 0;

        // Acumular el avance correspondiente a este registro
        if Resto > 0 then
         tAvance := tAvance;
////         tAvance := tAvance + ((Resto / connection.zcommand.fieldvalues['dcantidadanexo']) * connection.zcommand.fieldvalues['dponderado']);

        OldNumero := Connection.zCommand.FieldValues['sWbs'];

        connection.zcommand.Next;
      End;


      // avances totales de paquetes
        if (qryavances.FieldValues['davance'] > 0) and (zrqPrograma.FieldValues['dponderado'] > 0) then
        begin
           if qryavances.FieldValues['davance'] > zrqPrograma.FieldValues['dponderado'] then
              tavance := 100
           else
             tavance := qryavances.FieldValues['davance'] / (zrqPrograma.FieldValues['dponderado'] / 100)
        end
        else
           tavance := 0;


      iFecha := i2Fecha;
      tFecha := t2Fecha;
      if i2Fecha < pInicioP then iFecha := pInicioP;
      if t2Fecha > pTerminoP then tFecha := pTerminoP;

      if connection.zcommand.recordcount > 0 then
      Begin
        // Colocar el avance general
        SetSelect(oHoja,'H' + Trim(Inttostr(Ren - 3)) + ':' + 'H' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+5]*RC[-3]';

        SetSelect(oHoja,'K' + Trim(Inttostr(Ren)) + ':K' + Trim(Inttostr(Ren)));
        if Val1 <= 0 then
          oGantt.Selection.Value := 0
        else
          oGantt.Selection.Value := AcumAnterior / 100;

        SetSelect(oHoja,'L' + Trim(Inttostr(Ren)) + ':L' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';

        // Colocar avance general
        SetSelect(oHoja,'M' + Trim(Inttostr(Ren)) + ':M' + Trim(Inttostr(Ren)));
        if Val1 <= 0 then
          oGantt.Selection.Value := 0
        else
          oGantt.Selection.Value := tAvance / 100;

        ColBarra := ((iFecha - pInicioP) / (pTerminoP - pInicioP) * wCol);
        DurBarra := ((tFecha - iFecha) / (pTerminoP - pInicioP)) * wCol;
        if DurBarra < 0 then DurBarra := 0;

        // Colocar barra concentradora
        oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, DurBarra), (fAlto / 2)).Select;
        oGantt.Selection.ShapeRange.Fill.Solid;
        oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
        oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

        if i2Fecha = iFecha then
        Begin
          // Colocar indicador de inicio de concentradora
          oHoja.Shapes.AddShape(msoShapeRightTriangle, lCol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto, (fAlto / 2), (fAlto / 2)).Select;
          oGantt.Selection.ShapeRange.IncrementRotation(90);
          oGantt.Selection.ShapeRange.Fill.Solid;
          oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
          oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
        End;

        if t2Fecha = tFecha then
        Begin
          // Colocar indicador de termino de concentradora
          oHoja.Shapes.AddShape(msoShapeRightTriangle, lCol + Ajuste(oGantt, ColBarra + DurBarra) - (fAlto / 2), hTit + hCent + Alto, (fAlto / 2), (fAlto / 2)).Select;
          oGantt.Selection.ShapeRange.IncrementRotation(180);
          oGantt.Selection.ShapeRange.Fill.Solid;
          oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
          oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
        End;
      End;
    End
    Else
    Begin
      {***********************************************************************
       Inicia proceso de actividades
       ***********************************************************************}
      AcumAnterior := 0;
      SumCant := 0;
      if AvPaq.ItemIndex = 0 then
      Begin
        // Determinar el acumulado anterior de esta partida
        qAnteriorPda.Filtered := False;
        // Si es una grafica por frente de trabajo se debe buscar en base al wbscontrato
        if Opciones.ItemIndex = 1 then
          qAnteriorPda.Filter := 'swbsanexo = ' + QuotedStr(zrqPrograma.FieldByName('swbscontrato').asString)
        else
          qAnteriorPda.Filter := 'swbsanexo = ' + QuotedStr(zrqPrograma.FieldByName('swbs').asString);
        qAnteriorPda.Filtered := True;
        qAnteriorPda.First;

        //Nunca entra aquí, hay que revisar qAnteriorPda cuando se trata de la grafica de contrato
        while Not qAnteriorPda.Eof do
        Begin
          Resto := qAnteriorPda.fieldvalues['dCantidad'];

          // Verificar si la cantidad reportada para avance supera la cantidad de anexo
          if SumCant + Resto > zrqPrograma.FieldValues['dCantidadAnexo'] then
            // Verificar si se debe considerar el avance excedente
            if RadioGroup1.ItemIndex > 0 then
              Resto := Resto - ((SumCant + Resto) - Connection.zCommand.FieldValues['dCantidadAnexo']);

          if Resto < 0 then Resto := 0;

          AcumAnterior := AcumAnterior + ((Resto / zrqPrograma.fieldvalues['dCantidadAnexo']));
          SumCant := SumCant + Resto;
          qAnteriorPda.Next;
        End;
      End;

      // Colocar el avance anterior
      SetSelect(oHoja,'K' + Trim(Inttostr(Ren)) + ':' + 'K' + Trim(IntToStr(Ren)));
      oGantt.Selection.Value := AcumAnterior;

      qAvances.close;
      if Opciones.ItemIndex = 0 then
      begin
        qAvances.SQL.Text := 'select b.swbscontrato as swbs, a.* from bitacoradeactividades a ' +
                             'inner join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs) ' +
                             'where a.scontrato = :contrato and a.sidtipomovimiento = "E" and a.didfecha >= :Inicio and a.didfecha <= :Termino and b.swbscontrato = :wbs ' +
                             'group by a.snumeroactividad, a.didfecha order by b.iItemOrden, a.dIdFecha';
        qAvances.ParamByName('contrato').AsString := global_contrato;
        qAvances.ParamByName('convenio').AsString := global_convenio;
        qAvances.ParamByName('inicio').AsDate := tdFechaInicio.Date;
        qAvances.ParamByName('termino').AsDate := tdIdFecha.Date;
        qAvances.ParamByName('wbs').AsString := zrqPrograma.FieldByName('swbs').asString;
        qAvances.Open;
      end
//        select * from bitacoradeactividades where scontrato = "' + Global_Contrato + '"' + sCadQuery2 + ' and sidtipomovimiento = ''E'' and swbs = "' + zrqPrograma.FieldByName('swbs').asString + '" and didfecha >= (' + quotedstr(formatdatetime('yyyy-mm-dd',self.tdFechaInicio.datetime)) + ') and didfecha <= (' + quotedstr(formatdatetime('yyyy-mm-dd',self.tdIdFecha.datetime)) + ')'
      else
        qAvances.SQL.Text := 'select b.dCantidad as dCantidadOrden, a.* from bitacoradeactividades a inner join actividadesxorden b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs) ' +
                             'inner join tiposdemovimiento c on (c.scontrato = a.scontrato and c.sIdTipoMovimiento = a.sIdTipoMovimiento) where a.scontrato = "' + Global_Contrato + '"' + sCadQuery2 + ' and c.sClasificacion = "Tiempo en Operacion" and b.swbscontrato = "' + zrqPrograma.FieldByName('swbscontrato').asString + '" and a.didfecha >= (' + quotedstr(formatdatetime('yyyy-mm-dd',self.tdFechaInicio.datetime)) + ') and a.didfecha <= (' + quotedstr(formatdatetime('yyyy-mm-dd',self.tdIdFecha.datetime)) + ')';
      qAvances.Open;

      cBarras := 0;
      qAvances.First;
      OldIniBar := -1;
      OldFinBar := -1;
      OldExced := Null;
      gVolumen := AcumAnterior;
      while Not qAvances.Eof do
      Begin
        iFecha := qAvances.FieldValues['dIdFecha'];
        tFecha := iFecha + 1;

        // Acumular los volumenes para determinar posibles excedente
        gVolumen := gVolumen + qAvances.FieldValues['dCantidad'];
        //VolExced := gVolumen - zrqPrograma.FieldValues['dCantidadAnexo'];   // Determinar el volúmen excedente
        VolExced := 0;

        ColBarra := ((iFecha - pInicioP) / (pTerminoP - pInicioP)) * wCol;
        DurBarra := ((tFecha - iFecha) / (pTerminoP - pInicioP)) * wCol;
        If DurBarra < 0 Then DurBarra := 0;

        // Verificar si existen volumenes excedentes
        Dur1Barra := DurBarra;
        Dur2Barra := 0;
        if (VolExced > 0) {And (RadioGroup1.ItemIndex < 2)} then
        Begin
          // En caso de existir excedentes se deberá partir la barra en dos partes para mostrar sus diferencias
          Dur1Barra := DurBarra * ((qAvances.FieldValues['dCantidad'] - VolExced) / qAvances.FieldValues['dCantidad']);
          if Dur1Barra > 0 then
          Begin
            // Verificar si es necesario partir la barra de acuerdo a los parametros del usuario
            if RadioGroup1.ItemIndex < 2 then
            Begin
              // Si es necesario dos partes de la barra generar la información de la segunda
              Dur2Barra := DurBarra * (VolExced / qAvances.FieldValues['dCantidad']);
              Col2Barra := ColBarra + Dur1Barra;
            End
            Else
              Dur1Barra := DurBarra;
          End
          Else
          Begin
            // Verificar si es necesario partir la barra de acuerdo a los parametros del usuario
            if RadioGroup1.ItemIndex < 2 then
            Begin
              // Si no es necesario, generar solo información para la segunda barra con tamaño total
              Dur2Barra := DurBarra;
              Col2Barra := ColBarra;
            End;
          End;
        End;

        // Verificar si: Esta barra continúa a la barra anterior exactamente y que la barra anterior corresponda a la misma actividad
        if (OldFinBar = iFecha) And (OldFinBar <> 0) then
        Begin
          // Continúa la misma barra, modificar el tamaño de esta para no ocupar tanta memoria
          if VolExced > 0 then
          Begin
            // ya se excedió el avance colocar las dos barras
            if (Dur1Barra > 0) Then
            Begin
              OldExced.Width := OldExced.Width + Dur1Barra; // Extender la barra original para que abarque lo necesario

              If RadioGroup1.ItemIndex < 2 then
              Begin
                // Colocar la segunda barra (de excedentes)
                oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, Col2Barra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, Dur2Barra), fAlto).Select;
                OldExced := oGantt.Selection;
                oGantt.Selection.ShapeRange.Fill.Solid;
                oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := ColorExced;
                oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
                oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
              End;
            End
            Else
              OldExced.Width := OldExced.Width + Dur2Barra; // Extender la barra original para que abarque lo necesario
          End
          Else
            OldExced.Width := OldExced.Width + DurBarra;
        End
        Else
        Begin
          // Colocar barra de actividad real solo si esta no existiera previamente
          if Dur1Barra > 0 then
          Begin
            oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, ColBarra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, Dur1Barra), fAlto).Select;
            OldExced := oGantt.Selection;
            oGantt.Selection.ShapeRange.Fill.Solid;
            oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 5;
            oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
            oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
          End;

          if (Dur2Barra > 0) And (RadioGroup1.ItemIndex < 2) then
          Begin
            oHoja.Shapes.AddShape(61,lcol + Ajuste(oGantt, Col2Barra), hTit + hCent + Alto - (fAlto / 2), Ajuste(oGantt, Dur2Barra), fAlto).Select;
            OldExced := oGantt.Selection;
            oGantt.Selection.ShapeRange.Fill.Solid;
            oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := ColorExced;
            oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
            oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
          End;
        End;

        // Colocar el avance generado en el área de gráfica
        mCol := Letra(Trunc(((((iFecha + IncHora) - pInicioP) / (pTerminoP - pInicioP)) * aCol) + 0.99) + rAncho);
        SetSelect(oHoja,mCol + Trim(Inttostr(Ren)) + ':' + mCol + Trim(Inttostr(Ren)));
        oGantt.Selection.Font.Size := 7;

        // Si la barra está partida en dos partes, se deberá mostrar el avance dividido en la celda
        Resul := False;
        if (Dur1Barra > 0) And (Dur2Barra > 0) then
        Begin
          if RadioGroup1.ItemIndex < 2 then
          Begin
            NumberFormat := '"' + FloatToStr(SimpleRoundTo(((qAvances.FieldValues['dCantidad'] - VolExced) / zrqPrograma.FieldValues['dCantidadAnexo']) * 100,-2)) + '/' +
                                  FloatToStr(SimpleRoundTo(((VolExced / qAvances.FieldValues['dCantidad']) / zrqPrograma.FieldValues['dCantidadAnexo']) * 100,-2)) + '%"';
            oGantt.Selection.Value := ((qAvances.FieldValues['dCantidad'] - VolExced) / zrqPrograma.FieldValues['dCantidadAnexo']);
            oGantt.Selection.NumberFormat := NumberFormat;
          End
          Else
          Begin
            oGantt.Selection.Value := ((qAvances.FieldValues['dCantidad'] - VolExced) / zrqPrograma.FieldValues['dCantidadAnexo']);
            Resul := True;
          End;
        End
        Else
        Begin
          if VolExced > 0 then
          Begin
            if RadioGroup1.ItemIndex < 2 then
            Begin
              if zrqPrograma.FieldValues['dCantidadAnexo'] > 0 then
                oGantt.Selection.Value := #39 + FloatToStr(SimpleRoundTo((qAvances.FieldByName('dCantidad').AsFloat / zrqPrograma.FieldValues['dCantidadAnexo']) * 100,-3)) + '%'
              Else
              Begin
                oGantt.Selection.Value := 'Err:#101';
                oGantt.Selection.AddComment;
                oGantt.Selection.Comment.Visible := True;
                oGantt.Selection.Comment.Text('Error:#101 División por cero' + #10 + #10 + 'La cantidad capturada en el campo ''Cantidad de Anexo'' es igual a 0.' + #10 + #10 + 'Esto causa un error en los avances reportados por esta gráfica.');
                //oGantt.Selection.Comment.ShapeRange.ScaleWidth(2.05, 0, 0);
              End;
            End
            Else
            Begin
              if ((qAvances.FieldValues['dCantidad'] - VolExced) / zrqPrograma.FieldValues['dCantidadAnexo']) > 0 then
              Begin
                oGantt.Selection.Value := ((qAvances.FieldValues['dCantidad'] - VolExced) / zrqPrograma.FieldValues['dCantidadAnexo']);
                Resul := True;
              End;
            End;
          End
          Else
          Begin
            // Revisar esta modificación.....

            //oGantt.Selection.Value := (qAvances.FieldByName('dCantidad').AsFloat / zrqPrograma.FieldValues['dCantidadAnexo']);
            oGantt.Selection.Value := oGantt.Selection.Value + ((qAvances.FieldByName('dAvance').AsFloat / 100) * (qAvances.FieldByName('dCantidadOrden').AsFloat / zrqPrograma.FieldValues['dCantidadAnexo']));
            Resul := True;
          End;
          oGantt.Selection.NumberFormat := '0.000%';
        End;

        if Resul then
        Begin
          // Colocar el avance ponderado ( Modificar esto posteriormente por la cantidad )
          mCol := Letra(Trunc(((((iFecha + IncHora) - pInicioP) / (pTerminoP - pInicioP)) * aCol) + 0.99) + rAncho);
          SetSelect(oHoja,mCol + Trim(Inttostr(Ren - 1)) + ':' + mCol + Trim(Inttostr(Ren - 1)));
          oGantt.Selection.Value := ((qAvances.FieldByName('dCantidad').AsFloat / zrqPrograma.FieldValues['dCantidadAnexo'])) * zrqPrograma.FieldValues['dPonderado'];
        End;

        AcumPonde := AcumPonde + 1;
        Pendiente := False;

        OldIniBar := iFecha;
        OldFinBar := tFecha;

        qAvances.Next;
      End;
    End;

    //* Termina proceso de avances reales
    //*****************************************************************************************************************************

    SetSelect(oHoja,'D' + Trim(Inttostr(Ren - 3)) + ':D' + Trim(Inttostr(Ren)));
    oGantt.Selection.Value := ((zrqPrograma.FieldByName('dFechaFinal').AsFloat + 1) - zrqPrograma.FieldByName('dFechaInicio').AsFloat);
    oGantt.Selection.MergeCells := True;

    Alto := Alto + (RowHeight(oGantt,Ren));
    Inc(Ren);

    Inc(Cuenta);
    zrqPrograma.Next;
    ProgressBar1.StepIt;
    if CheckBox1.Checked then
    Begin
      oGantt.ScreenUpdating := True;
      SetSelect(oHoja,'A' + Trim(Inttostr(Ren)) + ':A' + Trim(Inttostr(Ren)));
      oGantt.ScreenUpdating := False;
    End;
  End;

  // Generar las líneas del área de gráfica
  GeneraLineas(oGantt,'A09:' + Letra(aCol + rAncho + 1) + Trim(InttoStr(Ren - 1)));
  FormatoDatos(oGantt,Ren - 1);

  // Generar el código de colores
  myCol := oHoja.Columns['A:A'];
  myCol.Select;
  hCent := AnchoA;

  myCol := oHoja.Columns['B:B'];
  myCol.Select;
  lCol := hCent + myCol.Width;

  myCol := oHoja.Columns['C:C'];
  myCol.Select;
  hCol := myCol.Width;

  // Bajar dos renglones para posicionar correctamente el código de colores
  Alto := Alto + RowHeight(oGantt,Ren);
  Inc(Ren);
  Alto := Alto + RowHeight(oGantt,Ren);

  oHoja.Shapes.AddShape(61, 2, hTit + Alto, AnchoA - 4, (fAlto / 2)).Select;
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

    // Colocar indicador de inicio de concentradora
    oHoja.Shapes.AddShape(msoShapeRightTriangle, 2, hTit + Alto + (fAlto / 2), (fAlto / 2), (fAlto / 2)).Select;
    oGantt.Selection.ShapeRange.IncrementRotation(90);
    oGantt.Selection.ShapeRange.Fill.Solid;
    oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
    oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

    // Colocar indicador de termino de concentradora
    oHoja.Shapes.AddShape(msoShapeRightTriangle, (2 + hCent) - ((fAlto / 2) + 4), hTit + Alto + (fAlto / 2), (fAlto / 2), (fAlto / 2)).Select;
    oGantt.Selection.ShapeRange.IncrementRotation(180);
    oGantt.Selection.ShapeRange.Fill.Solid;
    oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
    oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

    SetSelect(oHoja,'B' + Trim(IntToStr(Ren)));
    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 8;
    oGantt.Selection.Value := 'CONCENTRADORA PROGRAMADA';

    // *********************************************************************************
  // Barra concentradora real
  oHoja.Shapes.AddShape(61, lCol + 2, hTit + Alto, hCol - 4, (fAlto / 2)).Select;
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  // Colocar indicador de inicio de concentradora
  oHoja.Shapes.AddShape(msoShapeRightTriangle, lCol + 2, hTit + Alto + (fAlto / 2), (fAlto / 2), (fAlto / 2)).Select;
  oGantt.Selection.ShapeRange.IncrementRotation(90);
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  // Colocar indicador de termino de concentradora
  oHoja.Shapes.AddShape(msoShapeRightTriangle, (2 + lCol + hCol) - ((fAlto / 2) + 4), hTit + Alto + (fAlto / 2), (fAlto / 2), (fAlto / 2)).Select;
  oGantt.Selection.ShapeRange.IncrementRotation(180);
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 16;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  SetSelect(oHoja,'D' + Trim(IntToStr(Ren)));
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.Font.Size := 8;
  oGantt.Selection.Value := 'CONCENTRADORA REAL';

  // Siguiente línea para generar las barras de actividad
  Inc(Ren);
  Alto := Alto + RowHeight(oGantt,Ren);
  Inc(Ren);
  Alto := Alto + RowHeight(oGantt,Ren);

  // *********************************************************************************
  // Barra de avance programado
  oHoja.Shapes.AddShape(61, 2, hTit + Alto, hCent - 4, fAlto).Select;
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 48;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  SetSelect(oHoja,'B' + Trim(IntToStr(Ren)));
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.Font.Size := 8;
  oGantt.Selection.Value := 'ACTIVIDAD PROGRAMADA';

  oHoja.Shapes.AddShape(61, lCol + 2, hTit + Alto, hCol - 4, fAlto).Select;
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 5;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  SetSelect(oHoja,'D' + Trim(IntToStr(Ren)));
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.Font.Size := 8;
  oGantt.Selection.Value := 'ACTIVIDAD REAL';

  // Siguiente línea para generar las barras de actividad
  Inc(Ren);
  Alto := Alto + RowHeight(oGantt,Ren);
  Inc(Ren);
  Alto := Alto + RowHeight(oGantt,Ren);

  // *********************************************************************************
  // Barra de avance programado
  oHoja.Shapes.AddShape(61, 2, hTit + Alto, hCent - 4, fAlto).Select;
  oGantt.Selection.ShapeRange.Fill.Solid;
  oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 2;
  oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

  SetSelect(oHoja,'B' + Trim(IntToStr(Ren)));
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.Font.Size := 8;
  oGantt.Selection.Value := 'VOLUMEN EXCEDENTE';

  // Pintar las lineas separadoras de actividades
  Cuenta := 12;
  while Cuenta < Ren - 9 do
  begin
    oHoja.Range['A' + IntToStr(Cuenta) + ':' + Letra(aCol + rAncho + 1) +IntToStr(Cuenta + 3)].Select;
    oGantt.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    oGantt.Selection.Borders[xlEdgeTop].Weight := xlMedium;
    oGantt.Selection.Borders[xlEdgeTop].ColorIndex := 0;
    oGantt.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oGantt.Selection.Borders[xlEdgeBottom].Weight := xlMedium;
    oGantt.Selection.Borders[xlEdgeBottom].ColorIndex := 0;

    Alto := Alto + 2;
    Inc(Cuenta,4);
  end;

  ProgressBar1.Visible := False;
  if CheckBox1.Checked then
    oGantt.ScreenUpdating := True;

  // Eliminar la tabla temporal
  Connection.zCommand.SQL.Clear;
  Connection.zCommand.Sql.Add('drop temporary table if exists tempgantt');
  Connection.zCommand.ExecSql;

  // Grabar el archivo generado
  Reintentar := True;
  while Reintentar do
  Try
    oGantt.ActiveWorkbook.SaveAs(fName);
    Reintentar := False;
  Except
    Reintentar := MessageDlg('No fué posible grabar el archivo.' + #10 + #10 + 'Es probable que otro archivo con el mismo nombre y ubicación se encuentre abierto, cierre el archivo abierto y vuelva a intentar.' + #10 + #10 + 'Si el error persiste entonces es posible que la unidad destino del archivo se encuentre llena o pretegida contra escritura, verifique esto e intente nuevamente.', mtWarning, [mbOk, mbCancel], 0) = mrOk;
  End;

  if Not CheckBox1.Checked then
    if MessageDlg('¿Desea ver ahora el archivo que fué generado?', mtConfirmation, mbYesNo, 0) = mrYes then
    Begin
      oGantt.Visible := True;
      oGantt.ScreenUpdating := True;
      oGantt.DisplayAlerts := True;
    End
    Else
      oGantt.Quit;

  oGantt := Unassigned;
//  Close;
//  Exit;
End;


procedure TfrmGraficaGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  connection.zCommand.SQL.text := 'drop temporary table if exists tempgantt';
  connection.zcommand.ExecSQL;
  action := cafree ;
end;

procedure TfrmGraficaGerencial.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsNumeroOrden.SetFocus 
end;

procedure TfrmGraficaGerencial.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmGraficaGerencial.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida ;
//    tdFechaInicio.Date := OrdenesdeTrabajo.FieldValues['dFIProgramado']
end;

procedure TfrmGraficaGerencial.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmGraficaGerencial.tdFechaInicioExit(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_salida
end;

procedure TfrmGraficaGerencial.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdIdFecha.SetFocus 
end;

procedure TfrmGraficaGerencial.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmGraficaGerencial.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;


procedure TfrmGraficaGerencial.Button1Click(Sender: TObject);
var
  reportediario : tzReadOnlyQuery;

begin
  reportediario := tzReadOnlyQuery.Create(frmgraficagerencial);
  reportediario.Connection := connection.zconnection;
  reportediario.Active := False;
  reportediario.SQL.Clear;
  reportediario.SQL.Add('delete from ganttavances');
  reportediario.ExecSQL;
  reportediario.Active := False;
  reportediario.SQL.Clear;

  if Opciones.ItemIndex = 0 then
  begin
     ReporteDiario.Active := False;
     ReporteDiario.SQL.Clear;
//     ReporteDiario.SQL.Add('select * from reportediario where scontrato = :contrato and sidconvenio = :convenio  and didfecha <= :fecha group by didfecha');
     ReporteDiario.SQL.Add('select * from reportediario where scontrato = :contrato and didfecha <= :fecha group by didfecha');
     ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
     ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
//     ReporteDiario.Params.ParamByName('convenio').DataType := ftString;
//     ReporteDiario.Params.ParamByName('convenio').Value := global_convenio;
     ReporteDiario.Params.ParamByName('fecha').Value := self.tdIdFecha.datetime;

  end
  else
  begin
     ReporteDiario.Active := False;
     ReporteDiario.SQL.Clear;
//     ReporteDiario.SQL.Add('select * from reportediario where scontrato = :contrato and sidconvenio = :convenio and snumeroorden = :orden and didfecha <= :fecha ');
     ReporteDiario.SQL.Add('select * from reportediario where scontrato = :contrato and snumeroorden = :orden and didfecha <= :fecha ');
     ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
     ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
//     ReporteDiario.Params.ParamByName('convenio').DataType := ftString;
//     ReporteDiario.Params.ParamByName('convenio').Value := global_convenio;
     ReporteDiario.Params.ParamByName('orden').DataType := ftString;
     ReporteDiario.Params.ParamByName('orden').Value := ordenesdetrabajo.FieldValues['snumeroorden'];
     ReporteDiario.Params.ParamByName('fecha').Value := self.tdIdFecha.datetime;

  end;

  ReporteDiario.Open;
//  showmessage(datetostr(ReporteDiario.FieldValues['didfecha']));
  while Not reportediario.Eof do
  begin
//     cfnCalculaAvances1(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sidconvenio'] , ReporteDiario.FieldValues['sIdTurno'] , True ,ReporteDiario.FieldValues['didfecha'] , 'Avanzada' , frmgraficagerencial);
     cfnCalculaAvances2(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sidconvenio'] , ReporteDiario.FieldValues['sIdTurno'] , True ,ReporteDiario.FieldValues['didfecha'] , 'Avanzada' , frmgraficagerencial);

     reportediario.next;
  end;

end;





function TfrmGraficaGerencial.cfnCalculaAvances2(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
var
  QryPlataforma: tzReadOnlyQuery;
  QryContrato, QryAuxiliar, QryReporteDiario : tzReadOnlyQuery;
  dAvancePlataforma: Currency;
  dAvanceObra: Currency;
  dAvancePartida: Currency;
  lContinua: Boolean;
begin
//  showmessage('entro al programa');
  dAvancePlataforma := 0;
  dAvanceObra := 0;
  dAvancePartida := 0;

  QryPlataforma := tzReadOnlyQuery.Create(tOrigen);
  QryPlataforma.Connection := connection.zconnection;

  QryContrato := tzReadOnlyQuery.Create(tOrigen);
  QryContrato.Connection := connection.zconnection;

  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryReporteDiario := tzReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zconnection;

{  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select lStatus, sIdConvenio From reportediario ' +
    'Where sContrato = :contrato and dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;
  if QryReporteDiario.RecordCount > 0 then
    if sParamConvenio = 'NIL' then
    begin
      if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        lContinua := True
      else
        lContinua := False;
      sParamConvenio := QryReporteDiario.FieldValues['sIdConvenio'];
    end
    else
      lContinua := True
  else
    lContinua := True;}


  if Opciones.ItemIndex <> 0 then
    lcontinua := true
  else
    lcontinua := false;


  if lContinua then
  begin
        // Partidas canceladas ....
        // Avance por Plataforma ...
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From actividadescanceladas b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And ' +
      'a.sIdConvenio = :Convenio And b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha group by b.sNumeroOrden');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('orden').Value := sParamOrden;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Open;
    if QryPlataforma.RecordCount > 0 then
    begin
       showmessage('existen partidas con cancelaciones');
       dAvancePlataforma := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

    end;





        // Avance de Partidas Reportadas ....
            // por Plataforma
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select (( b.dAvance * a.dPonderado) / 100 )  as dAvance, b.snumeroactividad, b.swbs, a.swbscontrato From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And a.sIdConvenio = :Convenio And ' +
      'b.sWbs = a.sWbs) ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.sNumeroOrden = :Orden ');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Params.ParamByName('Orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('Orden').Value := sParamOrden;
    QryPlataforma.Open;
//    showmessage(QryPlataforma.SQL.text);
    if QryPlataforma.RecordCount > 0 then
    begin

    //cliclo para acumular los avances por orden
    while not QryPlataforma.eof do
    begin
         davanceplataforma := QryPlataforma.FieldValues['davance'];

         QryAuxiliar.Active := False;
         QryAuxiliar.SQL.Clear;
         QryAuxiliar.SQL.Add('Select sum(dAvance) as davance from ganttavances ' +
           'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
           'dIdFecha < :fecha and sNumeroOrden = :Orden and swbs = :wbs');
         QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
         QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
         QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
         QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
         QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
         QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
         QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
         QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
         QryAuxiliar.Params.ParamByName('wbs').DataType := ftString;
         QryAuxiliar.Params.ParamByName('wbs').Value := QryPlataforma.FieldValues['swbscontrato'];

         QryAuxiliar.Open;
         if QryAuxiliar.RecordCount > 0 then
           if (QryAuxiliar.FieldValues['dAvance'] + dAvancePlataforma) > 100 then
             dAvancePlataforma := 100 - QryAuxiliar.FieldValues['dAvance'];

         QryAuxiliar.Active := False;
         QryAuxiliar.SQL.Clear;
         QryAuxiliar.SQL.Add('Select dIdFecha, davance from ganttavances ' +
           'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
           'dIdFecha = :fecha and sNumeroOrden = :Orden and swbs = :wbs ');
         QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
         QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
         QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
         QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
         QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
         QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
         QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
         QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
         {QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
         QryAuxiliar.Params.ParamByName('Turno').Value := 'A';}
         QryAuxiliar.Params.ParamByName('wbs').DataType := ftString;
         QryAuxiliar.Params.ParamByName('wbs').Value := QryPlataforma.FieldValues['swbscontrato'];

         QryAuxiliar.Open;
         if QryAuxiliar.RecordCount > 0 then
         begin
           davanceplataforma := davanceplataforma + QryAuxiliar.FieldValues['davance'];

           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('Update ganttavances SET dAvance = :Avance ' +
             'Where sContrato = :Contrato And dIdFecha = :Fecha And ' +
             'sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno and snumeroactividad = :actividad');
           connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
           connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
           connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
           connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
           connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
           connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
           connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
           connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
           connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
           connection.zCommand.Params.ParamByName('Turno').Value := 'A';
           connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
           connection.zCommand.Params.ParamByName('Avance').Value := dAvancePlataforma;
           connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
           connection.zCommand.Params.ParamByName('Actividad').Value := QryPlataforma.FieldValues['snumeroactividad'];
           connection.zCommand.ExecSQL
         end
         else
         begin
           connection.zCommand.Active := False;
           connection.zCommand.SQL.Clear;
           connection.zCommand.SQL.Add('INSERT INTO ganttavances (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance, snumeroactividad, swbs) ' +
             'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance, :actividad, :swbs)');
           connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
           connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
           connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
           connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
           connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
           connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
           connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
           connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
           connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
           connection.zCommand.Params.ParamByName('Turno').Value := 'A';
           connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
           connection.zCommand.Params.ParamByName('Avance').Value := dAvancePlataforma;
           connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
           connection.zCommand.Params.ParamByName('Actividad').Value := QryPlataforma.FieldValues['snumeroactividad'];
           connection.zCommand.Params.ParamByName('swbs').DataType := ftString;
           connection.zCommand.Params.ParamByName('swbs').Value := QryPlataforma.FieldValues['swbscontrato'];
           connection.zCommand.ExecSQL;
         end;

         QryPlataforma.Next;
      end;


    end;
  end
  else
  begin



        //Avance por Contrato ...
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dPonderado, a.dCantidadAnexo, Sum(b.dCantidad) as dCantidad From actividadescanceladas b ' +
        'INNER JOIN actividadesfcanceladas af ON (af.sContrato = b.sContrato And af.dIdFecha = b.dIdFecha And af.lAfectaContrato = "Si") ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha group by b.sNumeroActividad');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
            dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next;
      end
    end;
    if davanceobra > 0 then
       showmessage('tiene valor');

        // Por Contrato de Partidas reportadas en bitacora
        // Por Contrato de Partidas reportadas por Alcances
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, Sum(b.dCantidad) as dCantidad, a.swbs  From bitacoradeactividades b ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.lAlcance = "No" group by b.sNumeroActividad order by a.iItemOrden');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;

      while not QryContrato.Eof do
      begin
        davanceobra := 0;
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
          begin
            try
              if QryContrato.FieldValues['dCantidadAnexo'] <> 0 then
                dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
              else
                dAvancePartida := 0;
            except
              dAvancePartida := 0;
            end
          end
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        davanceobra := davanceobra /100;


      // acumulaavances
      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha < :fecha and sNumeroOrden = :Orden and snumeroactividad = :actividad');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Params.ParamByName('actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
        if (QryAuxiliar.FieldValues['dAvance'] + dAvanceObra) > 100 then
          dAvanceObra := 100 - QryAuxiliar.FieldValues['dAvance'];

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select dIdFecha from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno and snumeroactividad = :actividad');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Turno').Value := 'A';
      QryAuxiliar.Params.ParamByName('actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update ganttavances SET dAvance = :Avance Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno and snumeroactividad = :actividad');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.Params.ParamByName('actividad').DataType := ftstring;
        connection.zCommand.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

        connection.zCommand.ExecSQL
      end
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO ganttavances (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance, snumeroactividad, swbs) ' +
          'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance, :actividad, :swbs )');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.Params.ParamByName('actividad').DataType := ftstring;
        connection.zCommand.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];
        connection.zCommand.Params.ParamByName('swbs').DataType := ftstring;
        connection.zCommand.Params.ParamByName('swbs').Value := QryContrato.FieldValues['swbs'];

        connection.zCommand.ExecSQL;
      end;


        QryContrato.Next;
      end;

      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, b.iFase, Sum(b.dCantidad) as dCantidad, a.swbs From bitacoradealcances b ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha group by b.sNumeroActividad, b.iFase order by a.iItemOrden, b.iFase');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        davanceobra := 0;
        davancepartida := 0;
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select Sum(b.dCantidad) as dCantidad, a.dAvance From bitacoradealcances b ' +
          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
          'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad And b.iFase = :Fase And b.dIdFecha <= :Fecha  Group By b.sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fase').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('Fase').Value := QryContrato.FieldValues['iFase'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if QryAuxiliar.RecordCount > 0 then
        begin
          dAvancePartida := QryAuxiliar.FieldValues['dCantidad'];
          if (dAvancePartida - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo'] then
            dAvancePartida := 0
          else
            if dAvancePartida > QryContrato.FieldValues['dCantidadAnexo'] then
              dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (dAvancePartida - QryContrato.FieldValues['dCantidad'])) * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo']
            else
              dAvancePartida := (QryContrato.FieldValues['dCantidad'] * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo'];
        end;
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        dAvanceObra := dAvanceObra / 100;


      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha < :fecha and sNumeroOrden = :Orden and snumeroactividad = :actividad');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Params.ParamByName('actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
        if (QryAuxiliar.FieldValues['dAvance'] + dAvanceObra) > 100 then
          dAvanceObra := 100 - QryAuxiliar.FieldValues['dAvance'];

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select dIdFecha, davance from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno and snumeroactividad = :actividad');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Turno').Value := 'A';
      QryAuxiliar.Params.ParamByName('actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
      begin
        davanceobra := davanceobra + QryAuxiliar.FieldValues['dAvance'];
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update ganttavances SET dAvance = :Avance Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno and snumeroactividad = :actividad');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.Params.ParamByName('actividad').DataType := ftstring;
        connection.zCommand.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];

        connection.zCommand.ExecSQL
      end
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO ganttavances (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance, snumeroactividad, swbs) ' +
          'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance, :actividad, :swbs )');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.Params.ParamByName('actividad').DataType := ftstring;
        connection.zCommand.Params.ParamByName('actividad').Value := QryContrato.FieldValues['snumeroactividad'];
        connection.zCommand.Params.ParamByName('swbs').DataType := ftstring;
        connection.zCommand.Params.ParamByName('swbs').Value := QryContrato.FieldValues['swbs'];

        connection.zCommand.ExecSQL;
      end;

        QryContrato.Next
      end;
    end;

        // Almacenamiento de Avances ...
        // Primero se ajusta tanto el avance x programa de trabajo ...

        // Avances del Contrato ...
    if sParamSeguridad = 'Avanzada' then
    begin
    end;
  end;

  Result := dAvanceObra;
  QryAuxiliar.Destroy;
  QryContrato.Destroy;
  QryPlataforma.Destroy;
end;

procedure TfrmGraficaGerencial.cbPeriodoChange(Sender: TObject);
begin
  mdPeriodo.RecNo := cbPeriodo.ItemIndex + 1;

  dInicio.Date := mdPeriodo.FieldByName('dInicio').AsDateTime;
  dTermino.Date := mdPeriodo.FieldByName('dTermino').AsDateTime;
end;

function TfrmGraficaGerencial.cfnCalculaAvances1(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
var
  QryPlataforma: tzReadOnlyQuery;
  QryContrato, QryAuxiliar, QryReporteDiario : tzReadOnlyQuery;
  dAvancePlataforma: Currency;
  dAvanceObra: Currency;
  dAvancePartida: Currency;
  lContinua: Boolean;
begin
//  showmessage('entro al programa');
  dAvancePlataforma := 0;
  dAvanceObra := 0;
  dAvancePartida := 0;

  QryPlataforma := tzReadOnlyQuery.Create(tOrigen);
  QryPlataforma.Connection := connection.zconnection;

  QryContrato := tzReadOnlyQuery.Create(tOrigen);
  QryContrato.Connection := connection.zconnection;

  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryReporteDiario := tzReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zconnection;

{  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select lStatus, sIdConvenio From reportediario ' +
    'Where sContrato = :contrato and dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;
  if QryReporteDiario.RecordCount > 0 then
    if sParamConvenio = 'NIL' then
    begin
      if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        lContinua := True
      else
        lContinua := False;
      sParamConvenio := QryReporteDiario.FieldValues['sIdConvenio'];
    end
    else
      lContinua := True
  else
    lContinua := True;}



  lcontinua := true;

  if lContinua then
  begin
        // Partidas canceladas ....
        // Avance por Plataforma ...
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From actividadescanceladas b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And ' +
      'a.sIdConvenio = :Convenio And b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha group by b.sNumeroOrden');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('orden').Value := sParamOrden;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Open;
    if QryPlataforma.RecordCount > 0 then
      dAvancePlataforma := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

        //Avance por Contrato ...
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dPonderado, a.dCantidadAnexo, Sum(b.dCantidad) as dCantidad From actividadescanceladas b ' +
        'INNER JOIN actividadesfcanceladas af ON (af.sContrato = b.sContrato And af.dIdFecha = b.dIdFecha And af.lAfectaContrato = "Si") ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha group by b.sNumeroActividad');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
            dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next;
      end
    end;

        // Avance de Partidas Reportadas ....
            // por Plataforma
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And a.sIdConvenio = :Convenio And ' +
      'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.sNumeroOrden = :Orden group by b.sNumeroOrden');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Params.ParamByName('Orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('Orden').Value := sParamOrden;
    QryPlataforma.Open;
//    showmessage(QryPlataforma.SQL.text);
    if QryPlataforma.RecordCount > 0 then
      dAvancePlataforma := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

        // Por Contrato de Partidas reportadas en bitacora
        // Por Contrato de Partidas reportadas por Alcances
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, Sum(b.dCantidad) as dCantidad From bitacoradeactividades b ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.lAlcance = "No" group by b.sNumeroActividad order by a.iItemOrden');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
          begin
            try
              if QryContrato.FieldValues['dCantidadAnexo'] <> 0 then
                dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
              else
                dAvancePartida := 0;
            except
              dAvancePartida := 0;
            end
          end
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next;
      end;

      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dCantidadAnexo, a.dPonderado, b.iFase, Sum(b.dCantidad) as dCantidad From bitacoradealcances b ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha group by b.sNumeroActividad, b.iFase order by a.iItemOrden, b.iFase');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select Sum(b.dCantidad) as dCantidad, a.dAvance From bitacoradealcances b ' +
          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
          'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad And b.iFase = :Fase And b.dIdFecha <= :Fecha  Group By b.sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fase').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('Fase').Value := QryContrato.FieldValues['iFase'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if QryAuxiliar.RecordCount > 0 then
        begin
          dAvancePartida := QryAuxiliar.FieldValues['dCantidad'];
          if (dAvancePartida - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo'] then
            dAvancePartida := 0
          else
            if dAvancePartida > QryContrato.FieldValues['dCantidadAnexo'] then
              dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (dAvancePartida - QryContrato.FieldValues['dCantidad'])) * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo']
            else
              dAvancePartida := (QryContrato.FieldValues['dCantidad'] * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo'];
        end;
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next
      end;
      dAvanceObra := dAvanceObra / 100;
    end;

        // Almacenamiento de Avances ...
        // Primero se ajusta tanto el avance x programa de trabajo ...
    if lParamMultiple then
    begin
      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha < :fecha and sNumeroOrden = :Orden Group By sNumeroOrden');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
        if (QryAuxiliar.FieldValues['dAvance'] + dAvancePlataforma) > 100 then
          dAvancePlataforma := 100 - QryAuxiliar.FieldValues['dAvance'];

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select dIdFecha from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno Group By sNumeroOrden');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
      QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Turno').Value := 'A';
      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update ganttavances SET dAvance = :Avance ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And ' +
          'sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvancePlataforma;
        connection.zCommand.ExecSQL
      end
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO ganttavances (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance) ' +
          'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvancePlataforma;
        connection.zCommand.ExecSQL
      end
    end;

        // Avances del Contrato ...
    if sParamSeguridad = 'Avanzada' then
    begin
      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha < :fecha and sNumeroOrden = :Orden Group By sContrato');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
        if (QryAuxiliar.FieldValues['dAvance'] + dAvanceObra) > 100 then
          dAvanceObra := 100 - QryAuxiliar.FieldValues['dAvance'];

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select dIdFecha from ganttavances ' +
        'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
        'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno Group By sContrato');
      QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
      QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
      QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Orden').Value := '';
      QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Turno').Value := 'A';
      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update ganttavances SET dAvance = :Avance Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.ExecSQL
      end
      else
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO ganttavances (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance) ' +
          'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := '';
        connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('Turno').Value := 'A';
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
        connection.zCommand.ExecSQL
      end
    end
  end;

  Result := dAvanceObra;
  QryAuxiliar.Destroy;
  QryContrato.Destroy;
  QryPlataforma.Destroy;
end;

procedure TfrmGraficaGerencial.GenerarNuevaGrafica;
type
  wbsAnterior = record
    wbs : string;
    valor : extended;
  end;

Const
  rAlto = 11;       // Número de renglones correspondientes al encabezado
  rAncho = 16;      // Número de columnas correspondientes a datos generales de partidas
  OrAnchoColumnasGrafica = 6;
  AnchoColumnasGrafica = 6;
  fAlto = 10;
  nMes: Array[1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO',
                                  'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');

var
  pInicioP, pTerminoP: Extended;   // Inicio y final del proyecto
  InicioG, TerminoG: Extended;     // Inicio y final del reporte
  aCol, nCol: Integer;
  RangoInicio,
  BarraRango,
  wCol: Extended;
  version,MaxCol,MaxRow,CeldasAUsar: dword;
  TipoReporte: Integer;
  t1,t2,t3,t4: Extended;
  rt1,rt2: Extended;
  desplaze: Extended;
  myWidth: Extended;
  InicioGrafica,InicioProyecto: TDateTime;
  Primero: Boolean;
  tColor: Integer;

  OpenDialog: TOpenDialog;
  Inicio_Semana: Integer;
  Tipo_Programa: Integer;
  fName: TFileName;
  Ext: String;
  OGantt, oHoja,
  oDetalle,
  oLibro: Variant;
  Busca: TZReadOnlyQuery;
  Ren, Ren1, RenAnt: Integer;
  Cuenta, cNivel: Integer;
  myInicio, myTermino: TDate;
  ColBarra: Integer;
  AcumAvance, DurBarra,
  AcumAnterior: Extended;
  Procede: Boolean;
  Mensaje: String;
  DiaDeLaSemana,DiasEnElMes,DiaActual,MesActual,AnioActual:Byte;
  wbsxorden: array of wbsAnterior;
  Indice,Cont: Integer;

  roqActividades: TZReadOnlyQuery;

// Obtiene el indice de periodo correspondiente a la fecha especificada
Function CalculaPeriodo(dtInicio: TDateTime;dtValor: TDateTime; Periodo: Integer): integer;
Var
  iTemp: integer;
Begin
  case Periodo of
    0:  Begin  // Diario
          CalculaPeriodo := DaysBetween(dtValor,dtInicio) + 1;
        End;
    1:  Begin    // Semanal
          iTemp := DaysBetween(dtValor,dtInicio);
          CalculaPeriodo := TRUNC(iTemp/7) + 1;
        End;
    2:  Begin     // Mensual
          if YearOf(dtInicio)=YearOf(dtValor) then
            CalculaPeriodo := MonthOf(dtValor) - MonthOf(dtInicio) + 1
          else
            begin
              iTemp := YearOf(dtValor) - YearOf(dtInicio) - 1;
              CalculaPeriodo := 12 * iTemp + (13 - MonthOf(dtInicio)) + MonthOf(dtValor);
            end;
        end;
    3:  Begin   // Anual
          CalculaPeriodo := YearOf(dtValor) - YearOf(dtInicio) + 1;
        End;
  end;
End;

// Calcula la diferencia de meses entre dos fechas (no importan los dias)
// incluyendo el actual
Function MesesEntre(dtInicio: TDateTime; dtFinal: TDateTime): integer;
Var
  iTemp: integer;
Begin
  if YearOf(dtInicio)=YearOf(dtFinal) then
    MesesEntre := MonthOf(dtFinal) - MonthOf(dtInicio)
  else
  begin
    iTemp := YearOf(dtFinal) - YearOf(dtInicio) - 1;
    MesesEntre := (12 * iTemp) + (12 - MonthOf(dtInicio)) + MonthOf(dtFinal);
  end;

End;

// Calcula la fecha de inicio del periodo según la fecha especificada
Function CalcularInicioPeriodo(dtFecha: TDateTime; Tipo: Integer; Inicio_Semana: Integer): TDateTime;
begin
    if (Tipo=1) And (Inicio_Semana <> dayofweek(dtFecha)) then
  begin
    if Inicio_Semana > dayofweek(dtFecha) then
      CalcularInicioPeriodo := IncDay(dtFecha,(Inicio_Semana - dayofweek(dtFecha))-7)
    else
      CalcularInicioPeriodo := IncDay(dtFecha,Inicio_Semana - dayofweek(dtFecha));
  end
  else
    if Tipo=2 then  // Mensual
      CalcularInicioPeriodo := IncDay(dtFecha,1-DayOfTheMonth(dtFecha))
    else
      if Tipo=3 then  // Anual
        CalcularInicioPeriodo := IncDay(dtFecha,1-DayOfTheYear(dtFecha))
      else
        CalcularInicioPeriodo := dtFecha;
end;

// Ajustar el desfase entre fechas de acuerdo al periodo
Function CalcularDesfase(dtFecha: TDateTime; Tipo: Integer; Inicio_Semana: Integer): Extended;
Var
  tFecha: TDateTime;
  tDias: Integer;
begin
  // Obtener primero la fecha de inicio del periodo para la fecha
  tFecha := CalcularInicioPeriodo(dtFecha,Tipo,Inicio_Semana);
  tDias := DaysBetween(tFecha,dtFecha);
  case Tipo of
    0:  CalcularDesfase := tDias;
    1:  CalcularDesfase := tDias/7;
    2:  CalcularDesfase := tDias/DaysInAMonth(YearOf(dtFecha),MonthOf(dtFecha));
    3:  CalcularDesfase := tDias/DaysInAYear(YearOf(dtFecha));
  end;
end;

Procedure FormatoEncabezado1(Objeto: Variant; Rango: String; Valor: String;
            VAlign: integer=xlCenter;
            HAlign: integer=xlCenter);
begin
    if oGantt.Visible then
      Objeto.Select;
    SetSelect(Objeto,Rango);
    oGantt.Selection.Value := Valor;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.VerticalAlignment := VAlign;
    oGantt.Selection.HorizontalAlignment := HAlign;
    oGantt.Selection.WrapText := True;
end;

procedure GenerarBarraReal(oSheet:variant; iRow: Integer; Tipo: Integer; SchemeColor: Integer);
Var
  FechaIni,
  FechaFin,
  FechaSig    : TDateTime;
  Proporcion,
  desplaze    : Extended;
  tColBarra   : integer;
begin
  myWidth := oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Width;
  t3 := (oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Height - (fAlto/2))/2;

  roqActividades.First;
  while not roqActividades.eof do
  begin
    FechaIni := roqActividades.FieldByName('dIdFecha').AsDateTime;
    FechaSig := IncDay(roqActividades.FieldByName('dIdFecha').AsDateTime);
    roqActividades.Next;
    while (not roqActividades.eof) and (FechaSig = FechaIni) do
      roqActividades.Next;
    while (not roqActividades.eof) and (FechaSig = roqActividades.FieldByName('dIdFecha').AsDateTime) do
    begin
      FechaSig := IncDay(roqActividades.FieldByName('dIdFecha').AsDateTime);
      roqActividades.Next;
    end;
    // Regresar al registro anterior para tener el rango completo
    if roqActividades.eof then
      roqActividades.Last
    else
      roqActividades.Prior;
    FechaFin := roqActividades.FieldByName('dIdFecha').AsDateTime;

      case Tipo of
        0:  Proporcion := (FechaFin - FechaIni + 1);
        1:  Proporcion := (FechaFin - FechaIni + 1)/7;
        2:  Begin
              if monthof(FechaIni)=monthof(FechaFin) then
                Proporcion := (FechaFin - FechaIni + 1)/DaysInAMonth(YearOf(FechaIni),MonthOf(FechaIni))
              else
                Proporcion := (MesesEntre(FechaIni,FechaFin) - 1) +
                       (1 + DaysInAMonth(YearOf(FechaIni),MonthOf(FechaIni)) - DayOfTheMonth(FechaIni))/DaysInAMonth(YearOf(FechaIni),MonthOf(FechaIni)) +
                       DayOfTheMonth(FechaFin)/DaysInAMonth(YearOf(FechaFin),MonthOf(FechaFin));
            End;
        3:  Begin
              if YearOf(FechaIni)=YearOf(FechaFin) then
                Proporcion := (DayOfTheYear(FechaFin) - DayOfTheYear(FechaIni) + 1)/DaysInAYear(YearOf(FechaIni))
              else
                Proporcion := (YearOf(FechaFin) - YearOf(FechaIni) - 1) +
                       (1 + DaysInAYear(YearOf(FechaIni)) - DayOfTheYear(FechaIni))/DaysInAYear(YearOf(FechaIni))
                        + DayOfTheYear(FechaFin)/DaysInAYear(YearOf(FechaFin));
            End;
      end;

    tColBarra := CalculaPeriodo(InicioGrafica,FechaIni,TipoReporte) - 1;

    desplaze := CalcularDesfase(FechaIni,Tipo,Inicio_Semana) * myWidth;



  	t1:=oSheet.Cells[iRow - 1, rAncho + tColBarra + 1].Left + desplaze;
  	t2:=oSheet.Cells[iRow - 1, rAncho + tColBarra + 1].Top;
  	DurBarra := Proporcion * myWidth;

    oSheet.Select;
    oSheet.Cells[iRow - 1, rAncho + tColBarra + 1].Select;
    //oSheet.Cells[iRow - 1, rAncho + tColBarra + 1].Value := tColor;
  	oSheet.Shapes.AddShape(61,t1, t2+t3, DurBarra, (fAlto / 2)).Select;
    oGantt.Selection.ShapeRange.Left := oGantt.Selection.ShapeRange.Left + 2;
    oGantt.Selection.ShapeRange.Left := oGantt.Selection.ShapeRange.Left - 2;
  	oGantt.Selection.ShapeRange.Fill.Solid;
  	oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := SchemeColor;
  	oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
  	oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
    inc(tColor);

    roqActividades.Next;
  end;
end;


Procedure GenerarBarra(oSheet: Variant; iRow: Integer);
var
shape1,shape2,shape3: Variant;
hay1,hay2: Boolean;
begin
      hay1 := false;
      hay2 := false;
      oSheet.Select;

      myWidth := oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Width;
      t3 := (oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Height - (fAlto/2))/2;

      // Verificar si es una partida concentradora
      if roqAnexo.FieldByName('sTipoActividad').AsString = 'Paquete' then
      Begin
        // Color amarillo para las concentradoras
        SetSelect(oSheet,'A' + Trim(inttostr(iRow - 1)) + ':' + Letra(rAncho - 1) + Trim(Inttostr(iRow)));
        oGantt.Selection.Interior.colorIndex := 6;
        oGantt.Selection.Interior.Pattern := xlSolid;

        if ColBarra >= 0 then
        begin
          // Colocar barra concentradora en el renglón adecuado
          oSheet.Select;
            t1 := oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Left + desplaze;
            t2 := oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Top;
            DurBarra := rt1 * myWidth;
            shape1 := oSheet.Shapes.AddShape(61,t1, t2+t3, DurBarra, (fAlto / 2));
            shape1.Select;
            {oGantt.Selection.Cut;
            oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Select;
            oSheet.Paste;
            oGantt.Selection.ShapeRange.Left := oGantt.Selection.ShapeRange.Left + desplaze;
            }
            oGantt.Selection.ShapeRange.Fill.Solid;
            oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
            oGantt.Selection.ShapeRange.Line.Visible := msoFalse;

          if (myInicio = roqAnexo.FieldByName('dFechaInicio').AsFloat) and (DurBarra >= fAlto) then
          Begin
            // Colocar indicador de inicio de concentradora en el renglón adecuado
            //oSheet.Select;
              //oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Select;
              t1:=oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Left + desplaze + (fAlto / 4);
              t2:=oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Top;

              shape2 := oSheet.Shapes.AddShape(msoShapeRightTriangle, t1, t2+t3, (fAlto / 2), fAlto);
              shape2.Select;
              oGantt.Selection.ShapeRange.IncrementRotation(90);
              oGantt.Selection.ShapeRange.Fill.Solid;
              oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
              oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
              hay1 := true;
          End;

          if (myTermino =roqAnexo.FieldByName('dFechaFinal').AsFloat) and (DurBarra >= fAlto) then
          Begin
            // Colocar indicador de termino de concentradora
            //oSheet.Select;
              //oSheet.Cells[iRow - 1, rAncho + ColBarra + 2].Select;
              t1:=DurBarra + oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Left + desplaze + (fAlto/4);
              t2:=oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Top;

              shape3 := oSheet.Shapes.AddShape(msoShapeRightTriangle, t1, t2+t3, fAlto/2, fAlto);
              shape3.Select;
              oGantt.Selection.ShapeRange.IncrementRotation(90);
              oGantt.Selection.ShapeRange.Flip(0);
              oGantt.Selection.ShapeRange.IncrementLeft(fAlto * -1);
              oGantt.Selection.ShapeRange.Fill.Solid;
              oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 0;
              oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
              hay2 := true;
          End;

          shape1.select(true);
          if hay1 then shape2.select(false);
          if hay2 then shape3.select(false);
          if hay1 OR hay2 then oGantt.Selection.shaperange.Group;
        end;
      end
      Else
      Begin
        // Colocar barra de actividad programada
        if ColBarra >= 0 then
        begin
          //oSheet.Select;
            //oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Select;
            t1:=oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Left + desplaze;
            t2:=oSheet.Cells[iRow - 1, rAncho + ColBarra + 1].Top;
            DurBarra := rt1 * myWidth;

            oSheet.Shapes.AddShape(61,t1, t2+t3, DurBarra, (fAlto / 2)).Select(true);
            oGantt.Selection.ShapeRange.Fill.Solid;
            oGantt.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 48;
            oGantt.Selection.ShapeRange.Fill.OneColorGradient(msoGradientHorizontal, 4, 0.23);
            oGantt.Selection.ShapeRange.Line.Visible := msoFalse;
        end;
      End;

end;

// Enmarcar el rango con lineas gruesas externas y lineas delgadas internas
Procedure EnmarcarArea(oSheet: Variant; sRango: String; Externo: Integer; Interno: Integer; Dentro:Boolean);
Var
  oRango: Variant;
begin
    oSheet.Select;
    oRango := oSheet.Range[sRango];
    oRango.Select;
    oRango.Borders[xlDiagonalDown].LineStyle := xlNone;
    oRango.Borders[xlDiagonalUp].LineStyle := xlNone;
    oRango.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    oRango.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    oRango.Borders[xlEdgeLeft].Weight := Externo;
    oRango.Borders[xlEdgeTop].LineStyle := xlContinuous;
    oRango.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    oRango.Borders[xlEdgeTop].Weight := Externo;
    oRango.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oRango.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    oRango.Borders[xlEdgeBottom].Weight := Externo;
    oRango.Borders[xlEdgeRight].LineStyle := xlContinuous;
    oRango.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    oRango.Borders[xlEdgeRight].Weight := Externo;
    oRango.Borders[xlInsideVertical].LineStyle := xlContinuous;
    oRango.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    oRango.Borders[xlInsideVertical].Weight := Interno;
    if Dentro then
    begin
      oRango.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      oRango.Borders[xlInsideHorizontal].ColorIndex := xlAutomatic;
      oRango.Borders[xlInsideHorizontal].Weight := Interno;
    end;
end;

Function xEncabezado: Boolean;
Var
  myCol: Variant;
  myRow: Variant;
  myCell: Variant;
  myTiempo: Real;
  ValPaso: Real;
  VarTemp: String;
  Bloque: Extended;
  mFecha: TDateTime;
  OldFecha: Integer;
  OldCol: Integer;
  sValor: String;
  Condision: Boolean;
  kTit: Real;
  Cadena, tmpNombre: String;
  fs: TStream;

function GetTempFile(const Extension: string): string;
var
  Buffer: array[0..MAX_PATH] of Char;
  aFile: string;
begin
  Repeat
    GetTempPath(SizeOf(Buffer) - 1, Buffer);
    GetTempFileName(Buffer, '~', 0, Buffer);
    Result := ChangeFileExt(Buffer, Extension);
  until not FileExists(Result);
end;

Begin


  Result := False;

  oHoja.Select;
  oGantt.ActiveWindow.Zoom := 75;
  SetColumnWidth(oGantt,2,2,50);  //Columns['B:B'].ColumnWidth := 50;
  SetColumnWidth(oGantt,rAncho,rAncho,0.5);

  oDetalle.Select;
  oGantt.ActiveWindow.Zoom := 75;
  SetColumnWidth(oGantt,2,2,50);  //Columns['B:B'].ColumnWidth := 50;
  SetColumnWidth(oGantt,rAncho,rAncho,0.5);

  // Dar formato general a las columnas
    oHoja.Select;
    myCol := oHoja.Columns['A:A'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '@';
    oGantt.Selection.Font.Size := 8;
    oGantt.Selection.ColumnWidth := 10.71;

    oDetalle.Select;
    myCol := oDetalle.Columns['A:A'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '@';
    oGantt.Selection.Font.Size := 8;
    oGantt.Selection.ColumnWidth := 10.71;

    oHoja.Select;
    myCol := oHoja.Columns['B:B'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlGeneral;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.Font.Size := 8;

    oDetalle.Select;
    myCol := oDetalle.Columns['B:B'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlGeneral;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.Font.Size := 8;

    oHoja.Select;
    myCol := oHoja.Columns['C:I'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.VerticalAlignment := xlTop;

    oDetalle.Select;
    myCol := oDetalle.Columns['C:I'];
    myCol.Select;
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.VerticalAlignment := xlTop;

    oHoja.Select;
    myCol := oHoja.Columns['E:E'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oDetalle.Select;
    myCol := oDetalle.Columns['E:E'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oHoja.Select;
    myCol := oHoja.Columns['F:F'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000';
    oGantt.Selection.ColumnWidth := 0;

    oDetalle.Select;
    myCol := oDetalle.Columns['F:F'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000';
    oGantt.Selection.ColumnWidth := 0;

    oHoja.Select;
    myCol := oHoja.Columns['G:G'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000';
    oGantt.Selection.ColumnWidth := 0;

    oDetalle.Select;
    myCol := oDetalle.Columns['G:G'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000';
    oGantt.Selection.ColumnWidth := 0;

    oHoja.Select;
    myCol := oHoja.Columns['H:H'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oDetalle.Select;
    myCol := oDetalle.Columns['H:H'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oHoja.Select;
    myCol := oHoja.Columns['I:I'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.00';
    oGantt.Selection.ColumnWidth := 0;

    oDetalle.Select;
    myCol := oDetalle.Columns['I:I'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.00';
    oGantt.Selection.ColumnWidth := 0;

    oHoja.Select;
    myCol := oHoja.Columns['J:J'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.00';
    oGantt.Selection.ColumnWidth := 0;

    oDetalle.Select;
    myCol := oDetalle.Columns['J:J'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.00';
    oGantt.Selection.ColumnWidth := 0;

    oHoja.Select;
    myCol := oHoja.Columns['K:K'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oDetalle.Select;
    myCol := oDetalle.Columns['K:K'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oHoja.Select;
    myCol := oHoja.Columns['L:L'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oDetalle.Select;
    myCol := oDetalle.Columns['L:L'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oHoja.Select;
    myCol := oHoja.Columns['M:M'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oDetalle.Select;
    myCol := oDetalle.Columns['M:M'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := '0.0000%';

    oHoja.Select;
    myCol := oHoja.Columns['N:N'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.WrapText := True;
    oGantt.Selection.ColumnWidth := 12;

    oDetalle.Select;
    myCol := oDetalle.Columns['N:N'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.WrapText := True;
    oGantt.Selection.ColumnWidth := 12;

    oHoja.Select;
    myCol := oHoja.Columns['O:O'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.WrapText := True;
    oGantt.Selection.ColumnWidth := 12;

    oDetalle.Select;
    myCol := oDetalle.Columns['O:O'];
    myCol.Select;
    oGantt.Selection.VerticalAlignment := xlTop;
    oGantt.Selection.NumberFormat := 'dd/mm/aaaa h:mm';
    oGantt.Selection.HorizontalAlignment := xlCenter;
    oGantt.Selection.WrapText := True;
    oGantt.Selection.ColumnWidth := 12;

    oHoja.Select;
    SetRowHeight(oGantt,10,13.8);
    myRow := oGantt.Rows['10:10'];
    myRow.WrapText := True;

    oDetalle.Select;
    SetRowHeight(oGantt,10,13.8);
    myRow := oGantt.Rows['10:10'];
    myRow.WrapText := True;

    oHoja.Select;
    myRow := oGantt.Rows['10:10'];
    myRow.VerticalAlignment := xlTop;

    oDetalle.Select;
    myRow := oGantt.Rows['10:10'];
    myRow.VerticalAlignment := xlTop;

    FormatoEncabezado1(oHoja,'A09:A11','PARTIDA');
    FormatoEncabezado1(oDetalle,'A09:A11','PARTIDA');


    FormatoEncabezado1(oHoja,'B09:B11','DESCRIPCIÓN');
    FormatoEncabezado1(oDetalle,'B09:B11','DESCRIPCIÓN');

    FormatoEncabezado1(oHoja,'C09:C11','TIEMPO PROGRAMADO');
    FormatoEncabezado1(oDetalle,'C09:C11','TIEMPO PROGRAMADO');

    FormatoEncabezado1(oHoja,'D09:D11','DIAS');
    FormatoEncabezado1(oDetalle,'D09:D11','DIAS');

    FormatoEncabezado1(oHoja,'E09:E11','POND.');
    FormatoEncabezado1(oDetalle,'E09:E11','POND.');

    FormatoEncabezado1(oHoja,'F09:F11','COSTO TOTAL MN');
    FormatoEncabezado1(oDetalle,'F09:F11','COSTO TOTAL MN');

    FormatoEncabezado1(oHoja,'G09:G11','COSTO TOTAL USD');
    FormatoEncabezado1(oDetalle,'G09:G11','COSTO TOTAL USD');

    FormatoEncabezado1(oHoja,'H09:H11','AVANCE PONDERADO');
    FormatoEncabezado1(oDetalle,'H09:H11','AVANCE PONDERADO');

    FormatoEncabezado1(oHoja,'I09:I11','COSTO EJECUTADO MN');
    FormatoEncabezado1(oDetalle,'I09:I11','COSTO EJECUTADO MN');

    FormatoEncabezado1(oHoja,'J09:J11','COSTO EJECUTADO USD');
    FormatoEncabezado1(oDetalle,'J09:J11','COSTO EJECUTADO USD');

    FormatoEncabezado1(oHoja,'K09:K11','AVANCE ANTERIOR AL PERIODO');
    FormatoEncabezado1(oDetalle,'K09:K11','AVANCE ANTERIOR AL PERIODO');

    FormatoEncabezado1(oHoja,'L09:L11','AVANCE PERIODO');
    FormatoEncabezado1(oDetalle,'L09:L11','AVANCE PERIODO');

    FormatoEncabezado1(oHoja,'M09:M11','AVANCE TOTAL AL PERIODO');
    FormatoEncabezado1(oDetalle,'M09:M11','AVANCE TOTAL AL PERIODO');

    FormatoEncabezado1(oHoja,'N09:N11','FECHA PROG. DE INICIO');
    FormatoEncabezado1(oDetalle,'N09:N11','FECHA PROG. DE INICIO');

    FormatoEncabezado1(oHoja,'O09:O11','FECHA PROG. DE TERMINO');
    FormatoEncabezado1(oDetalle,'O09:O11','FECHA PROG. DE TERMINO');

    oHoja.Select;
    kTit := 0;
    Cuenta := 0;

  // Determinar la altura total de los titulos
    myRow := oHoja.Rows['1:6'];
    myRow.RowHeight := 30;
    myRow := oHoja.Rows['7:7'];
    myRow.RowHeight := 40;
    myRow := oHoja.Rows['8:8'];
    myRow.RowHeight := 32;

    myRow := oDetalle.Rows['1:6'];
    myRow.RowHeight := 30;
    myRow := oDetalle.Rows['7:7'];
    myRow.RowHeight := 40;
    myRow := oDetalle.Rows['8:8'];
    myRow.RowHeight := 32;

  pInicioP := mdPeriodo.FieldByName('dInicio').AsDateTime;
  pTerminoP := mdPeriodo.FieldByName('dTermino').AsDateTime;

  {
  // Ajustar periodo de inicio al bloque completo
  myTiempo := 1440 / 24 / 60;     // Convertir Días a formato de tiempo de excel
  Bloque := Trunc(pInicioP / myTiempo);     // Obtener bloque de tiempo de acuerdo a periodo seleccionado
  pInicioP := Bloque * myTiempo;            // Cerrar periodo de inicio de acuerdo a bloque de tiempo seleccionado

  nCol := Trunc(pTerminoP - pInicioP);
  }
  // Establecer las fechas en titulos de barras

  // Checar si el reporte es semanal, para cambiar la fecha de inicio de la gráfica
  // al primer día habil parametrizado
  mFecha := CalcularInicioPeriodo(InicioG,TipoReporte,Inicio_Semana);

  OldFecha := 0;
  OldCol := 0;

  InicioGrafica := mFecha;
  InicioProyecto := CalcularInicioPeriodo(pInicioP,TipoReporte,Inicio_Semana);

  for xaCol := 0 to CeldasAUsar - 1 do
  begin


    // Con este llamado puedo saber cual es el número del periodo de acuerdo a como
    // esta la gráfica
    //myCell.Value := CalculaPeriodo(InicioGrafica,mFecha,TipoReporte);

    // Con este llamado puedo saber cual es el número de acuerdo a como
    // esta en el proyecto (No necesariamente igual al de arriba)
    //myCell.Value := CalculaPeriodo(InicioProyecto,mFecha,TipoReporte);

    OldCol := CalculaPeriodo(InicioProyecto,mFecha,TipoReporte);

    sValor := Letra(rAncho + xaCol + 1) + '11';
    oHoja.Select;
    myCell := oHoja.Range[sValor];
    myCell.HorizontalAlignment := xlCenter;
    myCell.Value := OldCol;

    oDetalle.Select;
    myCell := oDetalle.Range[sValor];
    myCell.HorizontalAlignment := xlCenter;
    myCell.Value := OldCol;




    sValor := Letra(rAncho + xaCol + 1) + '10';

    case TipoReporte of
      0,1:Begin  // diario y semanal
            oHoja.Select;
            myCell := oHoja.Range[sValor];
            myCell.NumberFormat := 'dd/mm/aaaa';
            myCell.Font.Size := 10;
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;
            if TipoReporte=0 then
            begin
              SetSelect(oHoja,Letra(rAncho + xaCol + 1) + '8:' + Letra(rAncho + xaCol + 1) + '10');
              oGantt.Selection.MergeCells := True;
              oGantt.Selection.HorizontalAlignment := xlCenter;
              oGantt.Selection.VerticalAlignment := -4107;
              oGantt.Selection.Orientation := -90;
              oGantt.Selection.ReadingOrder := -5002;
            end;


            oDetalle.Select;
            myCell := oDetalle.Range[sValor];
            myCell.Font.Size := 10;
            myCell.NumberFormat := 'dd/mm/aaaa';
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;
            if TipoReporte=0 then
            begin
              SetSelect(oDetalle,Letra(rAncho + xaCol + 1) + '8:' + Letra(rAncho + xaCol + 1) + '10');
              oGantt.Selection.MergeCells := True;
              oGantt.Selection.HorizontalAlignment := xlCenter;
              oGantt.Selection.VerticalAlignment := -4107;
              oGantt.Selection.Orientation := -90;
              oGantt.Selection.ReadingOrder := -5002;
            end;

            if TipoReporte=0 then
              mFecha := IncDay(mFecha,1)
            else
              mFecha := IncDay(mFecha,7)
          End;
      2:  Begin  // mensual
            oHoja.Select;
            myCell := oHoja.Range[sValor];
            myCell.NumberFormat := 'mm/aaaa';
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;

            oDetalle.Select;
            myCell := oDetalle.Range[sValor];
            myCell.NumberFormat := 'mmm/aaaa';
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;

            mFecha := IncMonth(mFecha,1)
          End;
      3:  Begin  // anual
            oHoja.Select;
            myCell := oHoja.Range[sValor];
            myCell.NumberFormat := 'aaaa';
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;

            oDetalle.Select;
            myCell := oDetalle.Range[sValor];
            myCell.NumberFormat := 'aaaa';
            myCell.HorizontalAlignment := xlCenter;
            myCell.Value := mFecha;

            mFecha := IncYear(mFecha,1)
          End;
    end;
  end;

  oHoja.Select;
    // Establecer el ancho de columnas  (Multiplicar por un factor exponencial segúnse incremente el tipo de reporte)
    SetColumnWidth(oGantt,rAncho + 1,rAncho + xaCol, AnchoColumnasGrafica * (1 + TipoReporte*TipoReporte*2));
    myCol := oGantt.Columns[Letra(rAncho + 1)]; // + Letra(xaCol + rAncho)];
    myCol.Select;

  oDetalle.Select;
    // Establecer el ancho de columnas
    SetColumnWidth(oGantt,rAncho + 1,rAncho + xaCol, AnchoColumnasGrafica * (1 + TipoReporte*TipoReporte*2));
    myCol := oGantt.Columns[Letra(rAncho + 1)]; // + Letra(xaCol + rAncho)];
    myCol.Select;

    wCol := myCol.Width * xaCol;
    Dec(xaCol);
    RangoInicio := pInicioP;
    BarraRango := myTiempo;

    oHoja.Select;
    if xaCol > 8 then
      SetSelect(oHoja,'C1:' + Letra(rAncho + xaCol - 9) + '1')
    else
      SetSelect(oHoja,'C1:I1');


  oDetalle.Select;
    if xaCol > 8 then
      SetSelect(oDetalle,'C1:' + Letra(rAncho + xaCol - 9) + '1')
    else
      SetSelect(oDetalle,'C1:I1');


  oHoja.Select;
    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 24;
    oGantt.Selection.Font.Bold := True;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.WrapText := False;
    oGantt.Selection.Value := Connection.Configuracion.FieldByName('sNombreCorto').AsString;

  oDetalle.Select;
    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 24;
    oGantt.Selection.Font.Bold := True;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.WrapText := False;
    oGantt.Selection.Value := Connection.Configuracion.FieldByName('sNombreCorto').AsString;

  // Generar los encabezados de la gráfica
  oHoja.Select;
    if xaCol > 8 then
      SetSelect(oHoja,'C2:' + Letra(rAncho + xaCol - 9) + '6')
    else
      SetSelect(oHoja,'C2:I6');

  oDetalle.Select;
    if xaCol > 8 then
      SetSelect(oDetalle,'C2:' + Letra(rAncho + xaCol - 9) + '6')
    else
      SetSelect(oDetalle,'C2:I6');

  oHoja.Select;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 14;
    oGantt.Selection.Font.Bold := True;
    oGantt.Selection.WrapText := True;

  oDetalle.Select;
    oGantt.Selection.MergeCells := True;
    oGantt.Selection.HorizontalAlignment := xlLeft;
    oGantt.Selection.Font.Size := 14;
    oGantt.Selection.Font.Bold := True;
    oGantt.Selection.WrapText := True;

  Cadena := Connection.contrato.FieldByName('mCliente').AsString + chr(10) + chr(10);
  Cadena := Cadena + Connection.contrato.FieldByName('sContrato').AsString + '  -  ' + Connection.contrato.FieldByName('mDescripcion').AsString + chr(10) + chr(10);
  Cadena := QuitarEnter(Cadena);

  SetSelect(oHoja,'C2');
  oGantt.Selection.Value := Cadena;

  SetSelect(oDetalle,'C2');
  oGantt.Selection.Value := Cadena;

  Cadena := 'DIAGRAMA DE GANTT GERENCIAL PERIODO DE GRAFICACIÓN DEL ' + IntToStr(DayOfTheMonth(dInicio.Date)) + ' DE ' + nMes[MonthOfTheYear(dInicio.Date)] + ' DE ' + FormatDateTime('yyyy',dInicio.Date) + ' AL ' + IntToStr(DayOfTheMonth(dTermino.Date)) + ' DE ' + nMes[MonthOfTheYear(dTermino.Date)] + ' DE ' + FormatDateTime('yyyy',dTermino.Date);
  Cadena := QuitarEnter(Cadena);

  SetSelect(oHoja,'C7:' + Letra(13 + xaCol) + '7');
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.Font.Size := 14;
  oGantt.Selection.Font.Bold := True;
  oGantt.Selection.WrapText := False;
  oGantt.Selection.Value := Cadena;

  SetSelect(oDetalle,'C7:' + Letra(13 + xaCol) + '7');
  oGantt.Selection.MergeCells := True;
  oGantt.Selection.HorizontalAlignment := xlLeft;
  oGantt.Selection.VerticalAlignment := xlCenter;
  oGantt.Selection.Font.Size := 14;
  oGantt.Selection.Font.Bold := True;
  oGantt.Selection.WrapText := False;
  oGantt.Selection.Value := Cadena;

  // Formatear los bordes del encabezado
  EnmarcarArea(oHoja,'A8:' + Letra(CeldasAUsar + RAncho) + '11',xlMedium,xlThin, true);
  EnmarcarArea(oDetalle,'A8:' + Letra(CeldasAUsar + RAncho) + '11',xlMedium,xlThin, true);


  // Obtener la imagen del cliente desde la base de datos
  tmpNombre := GetTempFile('.~im');

  fs := Connection.configuracion.CreateBlobStream(Connection.configuracion.FieldByName('bImagen'), bmRead);
  try
    fs.Seek(0, soFromBeginning);
    with TFileStream.Create(tmpNombre, fmCreate) do
      try
        CopyFrom(fs, fs.Size)
      finally
        Free
      end;
  finally
    fs.Free
  end;

  // Agregar Imagen de la empresa
  oHoja.Select;
    oHoja.Cells[1,1].Select;
    oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;

    // Determinar el tamaño real de la imagen
    Bloque := (oGantt.Rows[1].Height + oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height) + 20;   // * 0.7;
    oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromBottomRight);
    oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

    oGantt.Selection.ShapeRange.Left := 24;  //Margen;    //Excel.Columns['A:A'].Width + Margen;
    oGantt.Selection.ShapeRange.Top := 0;

  // Agregar Imagen de la empresa
  oDetalle.Select;
    oDetalle.Cells[1,1].Select;
    oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;

    // Determinar el tamaño real de la imagen
    Bloque := (oGantt.Rows[1].Height + oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height) + 20;   // * 0.7;
    oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromBottomRight);
    oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

    oGantt.Selection.ShapeRange.Left := 24;  //Margen;    //Excel.Columns['A:A'].Width + Margen;
    oGantt.Selection.ShapeRange.Top := 0;

  // Obtener la imagen de la empresa desde la base de datos
  fs := Connection.Contrato.CreateBlobStream(Connection.Contrato.FieldByName('bImagen'), bmRead);
  try
    fs.Seek(0, soFromBeginning);
    with TFileStream.Create(tmpNombre, fmCreate) do
      try
        CopyFrom(fs, fs.Size)
      finally
        Free
    end;
  finally
    fs.Free
  end;

  // Agregar Imagen Cliente a la hoja de excel
  oHoja.Select;
    oHoja.Cells[2,18 + xaCol].Select;
    oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;
    // Determinar el tamaño real de la imagen
    Bloque := (oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height);   // * 0.7;
    oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft); //msoScaleFromBottomRight);
    oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

    oGantt.Selection.ShapeRange.IncrementLeft(oGantt.Selection.ShapeRange.Width * -1);
    oGantt.Selection.ShapeRange.Top := oGantt.Rows[1].Height;

  oDetalle.Select;
    oDetalle.Cells[2,18 + xaCol].Select;
    oGantt.ActiveSheet.Pictures.Insert(tmpNombre).Select;
    // Determinar el tamaño real de la imagen
    Bloque := (oGantt.Rows[2].Height + oGantt.Rows[3].Height + oGantt.Rows[4].Height + oGantt.Rows[5].Height);   // * 0.7;
    oGantt.Selection.ShapeRange.ScaleWidth(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft); //msoScaleFromBottomRight);
    oGantt.Selection.ShapeRange.ScaleHeight(Bloque / oGantt.Selection.ShapeRange.Height, msoFalse, msoScaleFromTopLeft);

    oGantt.Selection.ShapeRange.IncrementLeft(oGantt.Selection.ShapeRange.Width * -1);
    oGantt.Selection.ShapeRange.Top := oGantt.Rows[1].Height;

  // Eliminar el archivo temporal
  Try
    DeleteFile(tmpNombre);
  Finally
    tmpNombre := '';
  End;

  Result := True;
end;

Function Ceiling(Valor: Extended): DWord;
Begin
  if Frac(Valor) > 0 then
    Ceiling := TRUNC(Valor) + 1
  else
    Ceiling := TRUNC(Valor);
End;

begin
  roqActividades := TZReadOnlyQuery.Create(Nil);
  roqActividades.Connection := Connection.ConnTrx;
  roqActividades.SQL.Text := 'select distinct b.swbscontrato, a.snumeroorden, a.swbs, a.snumeroactividad, a.dIdFecha ' +
                             'from bitacoradeactividades a inner join actividadesxorden b on a.scontrato=b.scontrato and a.swbs=b.swbs ' +
                             'where a.scontrato = :contrato and dIdFecha between :inicio and :final and a.sIdTipoMovimiento = "A" ' +
                             'order by dIdFecha';

  Inicio_Semana := 1;  // Para esta variable, el 1 representa el Domingo
  Tipo_Programa := 2;
  tColor := 1;

  InicioG := dInicio.Date;
  TerminoG := dTermino.Date;

  // Abrir los datos
  roqAnexo.Close;
  roqAnexo.ParamByName('contrato').AsString := global_contrato;
  roqAnexo.ParamByName('convenio').AsString := global_convenio;
  roqAnexo.ParamByName('inicio').AsDate := dInicio.Date;
  roqAnexo.ParamByName('final').AsDate := dTermino.Date;
  roqAnexo.Open;

  roqOrdenAntes.Close;
  roqOrdenAntes.ParamByName('contrato').AsString := global_contrato;
  roqOrdenAntes.ParamByName('convenio').AsString := global_convenio;
  roqOrdenAntes.ParamByName('inicio').AsFloat := 0;
  roqOrdenAntes.ParamByName('final').AsDate := IncDay(dInicio.Date, -1);
  roqOrdenAntes.Open;

  roqOrdenHoy.Close;
  roqOrdenHoy.ParamByName('contrato').AsString := global_contrato;
  roqOrdenHoy.ParamByName('convenio').AsString := global_convenio;
  roqOrdenHoy.ParamByName('inicio').AsDate := dInicio.Date;
  roqOrdenHoy.ParamByName('final').AsDate := dTermino.Date;
  roqOrdenHoy.Open;
  roqOrdenHoy.first;

  roqActividades.Close;
  roqActividades.ParamByName('contrato').AsString := global_contrato;
  roqActividades.ParamByName('inicio').AsDate := dInicio.Date;
  roqActividades.ParamByName('final').AsDate := dTermino.Date;
  roqActividades.Open;

  //  Establecer por medio del uso de un usuario el nombre y localización del archivo que se ha de generar
  OpenDialog := TOpenDialog.Create(self);
  OpenDialog.Filter := 'Archivos de MS EXCEL|*.xls';
  OpenDialog.FilterIndex := 1;

  // Determinar el nombre propuesto para la grafica de gantt
  OpenDialog.FileName := 'Gráfica de GANTT de seguimiento - ' + global_contrato + '.xls';

  // Verificar la extención en el nombre de archivo
  If openDialog.Execute Then
    fName := OpenDialog.FileName
  Else
  Begin
    Close;
    Exit;
  End;

  if Length(fName) > 3 then
  Begin
    Ext := Upcase(fName[Length(fName)- 3]) + Upcase(fName[Length(fName)- 2]) + Upcase(fName[Length(fName)- 1]) + Upcase(fName[Length(fName)]);
    if Ext <> '.XLS' then
      fName := fName + '.xls';
  End
  Else
    fName := fName + '.xls';

  // Generar el ambiente de excel para vaciar los datos de la gráfica
  Try
    oGantt := CreateOleObject('Excel.Application');
  except
    oGantt.quit;
    showmessage('No se pudo crear el objeto EXCEL o se produjo algún error.');
    Exit;
  End;

  version := oGantt.version;

  oGantt.Visible := False;
  oGantt.DisplayAlerts := False;
  oGantt.ScreenUpdating := False;
  oLibro := oGantt.Workbooks.Add;    // Crear el libro sobre el que se ha de trabajar

  // Analizar el número de hojas que se requieren para la generación
  while OGantt.Sheets.Count <> 2 do //Objeto.RecordCount + 2 do
  begin
    if OGantt.Sheets.Count > 1 then //Objeto.RecordCount + 1 then
    begin
      OGantt.Sheets[1].Select;
      OGantt.ActiveSheet.Delete;
    end
    else
      OGantt.Sheets.Add;
  end;

  oHoja := oLibro.Sheets[1];        // Determinar la hoja de trabajo
  oHoja.Name := 'ANEXO CONDENSADO';
  maxcol := oHoja.Columns.count;
  //maxcol := 256;
  maxrow := oHoja.Rows.count;
  TipoReporte := cbTipo.ItemIndex;

  // Determinar de acuerdo a las fechas cuantas columnas van a ser necesarias
  repeat
    case TipoReporte of
      0: begin   // Dias
            CeldasAUsar := TRUNC(dTermino.Date - dInicio.Date) + 1;
            Mensaje := 'Diario'
         end;
      1: begin  // Semanas
            CeldasAUsar := Ceiling((TRUNC(dTermino.Date - dInicio.Date) + 1)/7) + 1;
            Mensaje := 'Semanal'
         end;
      2: begin  // Meses
            if yearof(dInicio.Date)=yearof(dTermino.Date) then
                CeldasAUsar := monthof(dTermino.Date) - monthof(dInicio.Date) + 1
            else
                CeldasAUsar := 12*(yearof(dTermino.Date) - yearof(dInicio.Date) - 1) + (13 - monthof(dInicio.Date)) + monthof(dTermino.Date);
            Mensaje := 'Mensual'
        end;
      3: begin  // Años
            CeldasAUsar := yearof(dTermino.Date) - yearof(dInicio.Date) + 1;
            Mensaje := 'Anual'
         end;
    end;

    if CeldasAUsar + RAncho > maxcol then
      TipoReporte := TipoReporte + 1


  until (CeldasAUsar + RAncho < maxcol) OR (TipoReporte>3) ;

  if TipoReporte=4 then   // Si no se puede sacar ningún Tipo de Reporte posible, salir
  begin
    // Cerrar excel
    oLibro.close(False);
    oGantt.Quit;
    ShowMessage('El reporte no puede ser generado.'+chr(10)+'Se ha sobrepasado el límite de columnas');
    exit;
  end;


  if TipoReporte<>cbTipo.ItemIndex then
      if messagedlg('La gráfica ocupa más columnas que las que soporta Excel.'+chr(10)+
      '¿Intentar sacar el reporte ' + Mensaje + '?',mtConfirmation, mbYesNo, 0)=idNo then
      begin
        // Cerrar excel
        oLibro.close(False);
        oGantt.Quit;
        exit;
      end;

  oGantt.Visible := CheckBox1.Checked;   // Hasta aquí mostrar de ser necesario la hoja de excel

    // Agregar las columnas de los titulos de las actividades/paquetes
  oDetalle := oLibro.Sheets[2];
  oDetalle.Name := 'ANEXO DETALLADO';

  If Not xEncabezado then   // Colocar el encabezado del diagrama de GANTT
      begin
        // Cerrar excel
        oLibro.close(False);
        oGantt.Quit;
        ShowMessage('El reporte no puede ser generado.');
        exit;
      end;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := roqAnexo.RecordCount;
  ProgressBar1.Visible := True;
  ProgressBar1.Step := 1;

  Ren := rAlto + 1;       // Aquí inicia el proceso de datos
  Ren1 := rAlto + 1;
  Cuenta := 0;
  cNivel := -1;

  Busca := TZReadOnlyQuery.Create(Nil);
  Busca.Connection := roqAnexo.Connection;

  roqAnexo.First;
//  while (Not roqAnexo.Eof) and (ren<=500) do
  while (Not roqAnexo.Eof) do
  begin
    ProgressBar1.Position := roqAnexo.RecNo;

    Procede := true;

    if Procede then
    begin
      if oGantt.Visible then
        oGantt.ScreenUpdating := False;



        AcumAnterior := 0;
        AcumAvance := 0;
        OpcAnexo := (roqAnexo.FieldByName('sTipoActividad').AsString = 'Paquete');

        // Filtrar los datos para este paquete para obtener el avance anterior
        roqOrdenAntes.Filtered := False;
        roqOrdenAntes.Filtered := True;
        roqOrdenAntes.First;
        while Not roqOrdenAntes.Eof do
        begin
          AcumAnterior := AcumAnterior + roqOrdenAntes.FieldByName('dAvanceAnexoPondDirecto').AsFloat;

          roqOrdenAntes.Next;
        end;


        roqOrdenHoy.Filtered := False;
        roqOrdenHoy.Filtered := True;
        roqOrdenHoy.First;
        while Not roqOrdenHoy.Eof do
        begin
          AcumAvance := AcumAvance + roqOrdenHoy.FieldByName('dAvanceAnexoPondDirecto').AsFloat;

          roqOrdenHoy.Next;
        end;



        if (Tipo_Programa=0) OR
           ((Tipo_Programa=1) AND (AcumAvance>0)) OR
           ((Tipo_Programa=2) AND (AcumAvance>AcumAnterior)) then
        begin




        //*****************************************************************************************************************************
        //* Inicia proceso de datos generales de partidas
        // Anexo
        SetSelect(oHoja,'A' + Trim(Inttostr(Ren)) + ':A' + Trim(Inttostr(Ren + 3)));
        oGantt.Selection.MergeCells := True;
        oGantt.Selection.Value := roqAnexo.FieldByName('sNumeroActividad').asString;

        SetSelect(oHoja,'B' + Trim(Inttostr(Ren)) + ':B' + Trim(Inttostr(Ren + 3)));
        oGantt.Selection.Value := roqAnexo.FieldByName('mDescripcion').asString;
        oGantt.Selection.MergeCells := True;

        SetSelect(oHoja,'C' + Trim(Inttostr(Ren)) + ':C' + Trim(Inttostr(Ren + 3)));
        oGantt.Selection.Value := ((roqAnexo.FieldByName('dFechaFinal').AsFloat + 1)  - roqAnexo.FieldByName('dFechaInicio').AsFloat) * 24;
        oGantt.Selection.MergeCells := True;

        SetSelect(oHoja,'D' + Trim(Inttostr(Ren)) + ':D' + Trim(Inttostr(Ren + 3)));
        //oGantt.Selection.Value := '';
        oGantt.Selection.MergeCells := True;

      // Detalle
        SetSelect(oDetalle,'A' + Trim(Inttostr(Ren1)) + ':A' + Trim(Inttostr(Ren1 + 3)));
        oGantt.Selection.MergeCells := True;
        oGantt.Selection.Value := roqAnexo.FieldByName('sNumeroActividad').asString;

        SetSelect(oDetalle,'B' + Trim(Inttostr(Ren1)) + ':B' + Trim(Inttostr(Ren1 + 3)));
        oGantt.Selection.Value := roqAnexo.FieldByName('mDescripcion').asString;
        oGantt.Selection.MergeCells := True;

        SetSelect(oDetalle,'C' + Trim(Inttostr(Ren1)) + ':C' + Trim(Inttostr(Ren1 + 3)));
        oGantt.Selection.Value := ((roqAnexo.FieldByName('dFechaFinal').AsFloat + 1)  - roqAnexo.FieldByName('dFechaInicio').AsFloat) * 24;
        oGantt.Selection.MergeCells := True;

        SetSelect(oDetalle,'D' + Trim(Inttostr(Ren1)) + ':D' + Trim(Inttostr(Ren1 + 3)));
        //oGantt.Selection.Value := '';
        oGantt.Selection.MergeCells := True;

      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
      Begin
        // Colocar formato condicional para actividades
        oHoja.Select;
          oGantt.Selection.FormatConditions.Delete;
          oGantt.Selection.FormatConditions.Add(xlCellValue, xlEqual, '1');
          oGantt.Selection.FormatConditions[1].Font.Bold := True;
          oGantt.Selection.FormatConditions[1].Interior.ColorIndex := 8;

        oDetalle.Select;
          oGantt.Selection.FormatConditions.Delete;
          oGantt.Selection.FormatConditions.Add(xlCellValue, xlEqual, '1');
          oGantt.Selection.FormatConditions[1].Font.Bold := True;
          oGantt.Selection.FormatConditions[1].Interior.ColorIndex := 8;
      End;

      SetSelect(oHoja,'N' + Trim(Inttostr(Ren)) + ':N' + Trim(Inttostr(Ren + 3)));
      oGantt.Selection.MergeCells := True;
      oGantt.Selection.Value := FechaCadena(roqAnexo.FieldByName('dFechaInicio').AsDateTime,0);

      SetSelect(oHoja,'O' + Trim(Inttostr(Ren)) + ':O' + Trim(Inttostr(Ren + 3)));
      oGantt.Selection.MergeCells := True;
      oGantt.Selection.Value := FechaCadena(roqAnexo.FieldByName('dFechaFinal').AsDateTime,1);

      SetSelect(oDetalle,'N' + Trim(Inttostr(Ren1)) + ':N' + Trim(Inttostr(Ren1 + 3)));
      oGantt.Selection.MergeCells := True;
      oGantt.Selection.Value := FechaCadena(roqAnexo.FieldByName('dFechaInicio').AsDateTime,0);

      SetSelect(oDetalle,'O' + Trim(Inttostr(Ren1)) + ':O' + Trim(Inttostr(Ren1 + 3)));
      oGantt.Selection.MergeCells := True;
      oGantt.Selection.Value := FechaCadena(roqAnexo.FieldByName('dFechaFinal').AsDateTime,1);

      Inc(Ren);
      Inc(Ren1);
      //* Terminar proceso de datos generales de partidas
      //*****************************************************************************************************************************

      //* Terminar proceso de datos generales de partidas
      //*****************************************************************************************************************************

      //*****************************************************************************************************************************
      //* Inicia proceso de avance programado
      myInicio := roqAnexo.FieldByName('dFechaInicio').AsFloat;
      //myTermino := roqAnexo.FieldByName('dFechaFinal').AsFloat + 1;
      myTermino := roqAnexo.FieldByName('dFechaFinal').AsFloat;
      {if myInicio < pInicioP then
        myInicio := pInicioP;
      if myTermino > pTerminoP then
        myTermino := pTerminoP;}
      if myInicio < InicioG then
        myInicio := InicioG;
      if myTermino > TerminoG then
        myTermino := TerminoG;


      ColBarra := CalculaPeriodo(InicioGrafica,myInicio,TipoReporte) - 1;
      myWidth := oHoja.Cells[Ren - 1, rAncho + ColBarra + 1].Width;
      desplaze := CalcularDesfase(myInicio,TipoReporte,Inicio_Semana) * myWidth;
      //ColBarra := Trunc(pInicioP - myInicio);
      //ColBarra := Trunc(myInicio - pInicioP);
      case TipoReporte of
        0:  rt1 := (myTermino - myInicio + 1);
        1:  rt1 := (myTermino - myInicio + 1)/7;
        2:  Begin
              if monthof(myInicio)=monthof(myTermino) then
                rt1 := (myTermino - myInicio + 1)/DaysInAMonth(YearOf(myInicio),MonthOf(myInicio))
              else
                rt1 := (MesesEntre(myInicio,myTermino) - 1) +
                       (1 + DaysInAMonth(YearOf(myInicio),MonthOf(myInicio)) - DayOfTheMonth(myInicio))/DaysInAMonth(YearOf(myInicio),MonthOf(myInicio)) +
                       DayOfTheMonth(myTermino)/DaysInAMonth(YearOf(myTermino),MonthOf(myTermino));
            End;
        3:  Begin
              if YearOf(myInicio)=YearOf(myTermino) then
                rt1 := (DayOfTheYear(myTermino) - DayOfTheYear(myInicio) + 1)/DaysInAYear(YearOf(myInicio))
              else
                rt1 := (YearOf(myTermino) - YearOf(myInicio) - 1) +
                       (1 + DaysInAYear(YearOf(myInicio)) - DayOfTheYear(myInicio))/DaysInAYear(YearOf(myInicio))
                        + DayOfTheYear(myTermino)/DaysInAYear(YearOf(myTermino));
            End;
      end;

      //DurBarra := ((myTermino - myInicio) / (pTerminoP - pInicioP) * wCol);
      // if DurBarra < 0 then DurBarra := 0;

      GenerarBarra(oHoja,Ren);
      GenerarBarra(oDetalle,Ren1);
      EnmarcarArea(oHoja,'A'+Trim(IntToStr(Ren-1))+':' + Letra(CeldasAUsar + RAncho) + Trim(IntToStr(Ren+2)),xlMedium,xlHairline, True);
      EnmarcarArea(oDetalle,'A'+Trim(IntToStr(Ren1-1))+':' + Letra(CeldasAUsar + RAncho) + Trim(IntToStr(Ren1+2)),xlMedium,xlHairline, True);

      // Filtrar las actividades de la bitacora
      roqActividades.Filtered := false;
      roqActividades.Filter := 'swbscontrato=' + QuotedStr(roqAnexo.FieldByName('swbs').AsString);
      roqActividades.Filtered := true;

      GenerarBarraReal(oHoja,Ren+1,TipoReporte,17);
      GenerarBarraReal(oDetalle,Ren1+1,TipoReporte,17);


      Inc(Ren);
      Inc(Ren1);
      //* Terminar proceso de avances programados
      //*****************************************************************************************************************************

      Inc(Ren);
      Inc(Ren1);

      SetSelect(oHoja,'E' + Trim(Inttostr(Ren - 3)) + ':E' + Trim(Inttostr(Ren)));
      oGantt.Selection.Value := roqAnexo.FieldValues['dPonderado'] / 100;
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'E' + Trim(Inttostr(Ren1 - 3)) + ':E' + Trim(Inttostr(Ren1)));
      oGantt.Selection.Value := roqAnexo.FieldValues['dPonderado'] / 100;
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'F' + Trim(Inttostr(Ren - 3)) + ':F' + Trim(Inttostr(Ren)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'F' + Trim(Inttostr(Ren1 - 3)) + ':F' + Trim(Inttostr(Ren1)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'G' + Trim(Inttostr(Ren - 3)) + ':G' + Trim(Inttostr(Ren)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'G' + Trim(Inttostr(Ren1 - 3)) + ':G' + Trim(Inttostr(Ren1)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'H' + Trim(Inttostr(Ren - 3)) + ':H' + Trim(Inttostr(Ren)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+RC[5]*RC[-3]';
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'H' + Trim(Inttostr(Ren1 - 3)) + ':H' + Trim(Inttostr(Ren1)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+RC[5]*RC[-3]';
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'I' + Trim(Inttostr(Ren - 3)) + ':I' + Trim(Inttostr(Ren)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'I' + Trim(Inttostr(Ren1 - 3)) + ':I' + Trim(Inttostr(Ren1)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'J' + Trim(Inttostr(Ren - 3)) + ':J' + Trim(Inttostr(Ren)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'J' + Trim(Inttostr(Ren1 - 3)) + ':J' + Trim(Inttostr(Ren1)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'K' + Trim(Inttostr(Ren - 3)) + ':K' + Trim(Inttostr(Ren)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'K' + Trim(Inttostr(Ren1 - 3)) + ':K' + Trim(Inttostr(Ren1)));
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'L' + Trim(Inttostr(Ren - 3)) + ':L' + Trim(Inttostr(Ren)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+SUM(R[3]C[4]:R[3]C[' + IntToStr(aCol + 6) + '])';
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'L' + Trim(Inttostr(Ren1 - 3)) + ':L' + Trim(Inttostr(Ren1)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+SUM(R[3]C[4]:R[3]C[' + IntToStr(aCol + 6) + '])';
      oGantt.Selection.MergeCells := True;

      SetSelect(oHoja,'M' + Trim(Inttostr(Ren - 3)) + ':M' + Trim(Inttostr(Ren)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+SUM(RC[-2]:R[3]C[-1])';
      oGantt.Selection.MergeCells := True;

      SetSelect(oDetalle,'M' + Trim(Inttostr(Ren1 - 3)) + ':M' + Trim(Inttostr(Ren1)));
      if roqAnexo.FieldByName('sTipoActividad').AsString <> 'Paquete' then
        oGantt.Selection.FormulaR1C1 := '=+SUM(RC[-2]:R[3]C[-1])';
      oGantt.Selection.MergeCells := True;

      if roqAnexo.FieldByName('sTipoActividad').AsString = 'Paquete' then
      Begin
        {*************************************************************
          Inicia proceso de paquete de actividades
         *************************************************************}

        // Obtener los avances de la actividad por anexo
        AcumAnterior := 0;
        AcumAvance := 0;
        OpcAnexo := True;

        //if roqAnexo.FieldByName('swbs').AsString = 'A.9.9.1' then
        //  showmessage('rangel');

        // Filtrar los datos para este paquete para obtener el avance anterior
        roqOrdenAntes.Filtered := False;
        roqOrdenAntes.Filtered := True;
        roqOrdenAntes.First;
        while Not roqOrdenAntes.Eof do
        begin
          AcumAnterior := AcumAnterior + roqOrdenAntes.FieldByName('dAvanceAnexoPondDirecto').AsFloat;

          roqOrdenAntes.Next;
        end;

        roqOrdenHoy.Filtered := False;
        roqOrdenHoy.Filtered := True;
        roqOrdenHoy.First;
        while Not roqOrdenHoy.Eof do
        begin
          AcumAvance := AcumAvance + roqOrdenHoy.FieldByName('dAvanceAnexoPondDirecto').AsFloat;

          roqOrdenHoy.Next;
        end;

        // Colocar el avance general
        SetSelect(oHoja,'H' + Trim(Inttostr(Ren - 3)) + ':' + 'H' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+5]*RC[-3]';

        SetSelect(oDetalle,'H' + Trim(Inttostr(Ren1 - 3)) + ':' + 'H' + Trim(Inttostr(Ren1)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+5]*RC[-3]';

        SetSelect(oHoja,'K' + Trim(Inttostr(Ren)) + ':K' + Trim(Inttostr(Ren)));
        oGantt.Selection.Value := AcumAnterior / 100;

        SetSelect(oDetalle,'K' + Trim(Inttostr(Ren1)) + ':K' + Trim(Inttostr(Ren1)));
        oGantt.Selection.Value := AcumAnterior / 100;

        SetSelect(oHoja,'L' + Trim(Inttostr(Ren)) + ':L' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';

        SetSelect(oDetalle,'L' + Trim(Inttostr(Ren1)) + ':L' + Trim(Inttostr(Ren1)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';

        // Colocar avance general
        SetSelect(oHoja,'M' + Trim(Inttostr(Ren)) + ':M' + Trim(Inttostr(Ren)));
        oGantt.Selection.Value := AcumAvance / 100;
        SetSelect(oDetalle,'M' + Trim(Inttostr(Ren1)) + ':M' + Trim(Inttostr(Ren1)));
        oGantt.Selection.Value := AcumAvance / 100;
      End
      Else
      Begin
        {***********************************************************************
         Inicia proceso de actividades
         ***********************************************************************}

        // Filtrar los datos para este paquete para obtener el avance anterior
        AcumAnterior := 0;
        AcumAvance := 0;
        OpcAnexo := False;
        Indice := 0;

        // Filtrar los datos para este paquete para obtener el avance anterior
        roqOrdenAntes.Filtered := False;
        roqOrdenAntes.Filtered := True;
        roqOrdenAntes.First;
        wbsxorden := nil;
        while Not roqOrdenAntes.Eof do
        begin
          AcumAnterior := AcumAnterior + roqOrdenAntes.FieldByName('dAvanceAnexoActividad').AsFloat;
          SetLength(wbsxorden,Indice + 1);
          wbsxorden[Indice].wbs := roqOrdenAntes.FieldByName('swbs').AsString;
          wbsxorden[Indice].valor  := roqOrdenAntes.FieldByName('dAvanceAnexoActividad').AsFloat;
          roqOrdenAntes.Next;
          Inc(Indice);
        end;

        primero := true;
        RenAnt := Ren1;
        roqOrdenHoy.Filtered := False;
        roqOrdenHoy.Filtered := True;
        roqOrdenHoy.First;
        while Not roqOrdenHoy.Eof do
        begin
          AcumAvance := AcumAvance + roqOrdenHoy.FieldByName('dAvanceAnexoActividad').AsFloat;

          // Filtrar las actividades de la bitacora
          roqActividades.Filtered := false;
          roqActividades.Filter := 'swbscontrato=' + QuotedStr(roqOrdenHoy.FieldByName('swbscontrato').AsString)
                      + ' and snumeroorden=' + QuotedStr(roqOrdenHoy.FieldByName('snumeroorden').AsString)
                      + ' and swbs=' + QuotedStr(roqOrdenHoy.FieldByName('swbs').AsString);
          roqActividades.Filtered := true;

          if roqActividades.RecordCount > 0 then
          begin
            Inc(Ren1);
            SetSelect(oDetalle,'B' + Trim(IntToStr(Ren1)) + ':' + 'B' + Trim(IntToStr(Ren1)));
            oGantt.Selection.Value := FORMAT('%s (%s)',
                                    [roqOrdenHoy.FieldByName('snumeroorden').AsString,
                                     roqOrdenHoy.FieldByName('swbs').AsString]);
            SetSelect(oDetalle,'M' + Trim(IntToStr(Ren1)) + ':' + 'M' + Trim(IntToStr(Ren1)));
            oGantt.Selection.value := roqOrdenHoy.FieldByName('dAvanceOrdenActividad').AsFloat/100;

            // Poner por default a cero
            SetSelect(oDetalle,'K' + Trim(IntToStr(Ren1)) + ':' + 'K' + Trim(IntToStr(Ren1)));
            oGantt.Selection.value := 0;
            // Buscar el avance anterior al wbs correspondiente
            for Cont := 0 to Indice - 1 do
              if wbsxorden[Cont].wbs = roqOrdenHoy.FieldByName('swbs').AsString then
                begin
                  oGantt.Selection.value := wbsxorden[Cont].valor/100;
                end;

            SetSelect(oDetalle,'L' + Trim(Inttostr(Ren1)) + ':L' + Trim(Inttostr(Ren1)));
            oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';


            SetSelect(oDetalle,'A' + Trim(Inttostr(Ren1)) + ':O' + Trim(Inttostr(Ren1)));
            // Poner Color
            if Primero then
              oGantt.Selection.Interior.colorIndex := 35
            else
              oGantt.Selection.Interior.colorIndex := 36;

            oGantt.Selection.Interior.Pattern := xlSolid;

            GenerarBarraReal(oDetalle,Ren1+1,TipoReporte,11);
            EnmarcarArea(oDetalle,'A'+Trim(IntToStr(Ren1))+':' + Letra(CeldasAUsar + RAncho) + Trim(IntToStr(Ren1)),xlMedium,xlHairline, False);
          end;

          //Primero := not Primero;
          roqOrdenHoy.Next;
        end;
        // Colocar el avance general
        SetSelect(oHoja,'H' + Trim(Inttostr(Ren - 3)) + ':' + 'H' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+5]*RC[-3]';

        SetSelect(oHoja,'K' + Trim(Inttostr(Ren)) + ':K' + Trim(Inttostr(Ren)));
        oGantt.Selection.Value := AcumAnterior / 100;

        SetSelect(oDetalle,'K' + Trim(Inttostr(RenAnt)) + ':K' + Trim(Inttostr(RenAnt)));
        oGantt.Selection.Value := AcumAnterior / 100;

        SetSelect(oHoja,'L' + Trim(Inttostr(Ren)) + ':L' + Trim(Inttostr(Ren)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';

        SetSelect(oDetalle,'L' + Trim(Inttostr(RenAnt)) + ':L' + Trim(Inttostr(RenAnt)));
        oGantt.Selection.FormulaR1C1 := '=+RC[+1]-RC[-1]';

        // Colocar avance general
        SetSelect(oHoja,'M' + Trim(Inttostr(Ren)) + ':M' + Trim(Inttostr(Ren)));
        oGantt.Selection.Value := AcumAvance / 100;

        SetSelect(oDetalle,'M' + Trim(Inttostr(RenAnt)) + ':M' + Trim(Inttostr(RenAnt)));
        oGantt.Selection.Value := AcumAvance / 100;
      End;
      //* Termina proceso de avances reales
      //*****************************************************************************************************************************

      if oGantt.Visible then
      begin
        oGantt.ScreenUpdating := True;
        SetSelect(oHoja,'A' + IntToStr(Ren) + ':A' + IntToStr(Ren));
      end;

      Inc(Ren);
      Inc(Ren1);
    end;
    end;
    roqAnexo.Next;
  end;

  oLibro.SaveAs(fName);
  oGantt.Visible := True;
  oGantt.ScreenUpdating := True;
  oGantt.DisplayAlerts := True;
  Close;
end;

end.
