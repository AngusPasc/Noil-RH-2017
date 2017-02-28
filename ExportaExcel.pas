unit ExportaExcel;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ExtCtrls, Func_Genericas,
  Dialogs, StdCtrls, ComObj, ZDataset, DB, DBClient, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  ComCtrls, cxGridDBTableView,cxCheckListBox, cxProgressBar, cxPC, cxGridCustomTableView, utilerias;

  Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function ExportarExcelDX(Datos,DatoImagen: TZQuery;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean; overload;
  Function ExportExcelPersonalizado(DatoImagen: TZReadOnlyQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean; overload;
  Function CadenaEntero (Cadena: String): Integer;
  function LetraColumna (x:integer):string;
  function ColumnaNombre(Numero:Integer):string;
  function ExportarExcelCotizacion(Dato_Maestro:TClientDataSet; Dato_Detalle:TZQuery; TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TcxProgressBar;Panel:TPanel; Plantilla:Boolean):Boolean;overload;
  Function ExportarExcelCotizacion(Dato_Maestro:TClientDataSet; Dato_Detalle:TZQuery; TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TcxProgressBar;Panel:TcxPageControl; Indice:Integer; Plantilla:Boolean):Boolean;overload;
  function ExportarPDF(Vista:TcxGridDBTableView; var Tabla:TClientDataSet):Boolean;
  
type
  TBorderWeight = (bwHairline,bwMedium,bwThick,bwThin);
  TBorderLineStyle = (blContinuous, blDash, blDashDot, blDashDotDot,
                      blDot, blDouble, blSlantDashDot, blLine, blNone);
  TBorders =(xlEdgeBottom);

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

implementation

Function ExportarExcelDX(Datos,DatoImagen: TZQuery;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;

const
   //hoja
   xlWBATWorksheet = -4167;

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

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;


   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;

begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  Try
    Progress.Position := 0;
    Panel.Visible := True;
  //lblprogress.Visible := True;
    panel.repaint;
  //lblprogress.repaint;
    Progress.Max := Datos.RecordCount;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := true;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := TituloPestaña;


    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( DatoImagen.FieldByName('bImagen')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < DBGrid.ColumnCount do
    begin
      if DBGrid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
        Inc(ColMaxExc);

      end;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;

    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_AzulCielo ;

    RowIni := RowIni-6;

    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;

    RowIni := RowIni+6;

    columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Datos.first;
    while not Datos.Eof do
    begin
      columna := 1;
      ColMaxExc := 1;
      while columna-1 < DBGrid.ColumnCount do
      begin
        if DBGrid.Columns[columna-1].Visible then
        begin
          try
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].DataBinding.FieldName).AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);
          except
            on e:Exception do
            msg_er(e.ClassName + e.Message);
          end;
        end;
        Inc(Columna);
      end;
      Datos.Next;
      Progress.Position := Linea;
      inc(linea);
    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;

    Excel.Visible:= True;

    //guardar el archivo
   // WorkBook.SaveAs('archivo.xls');

   //cerrar el excel
  //  Excel.Quit;


  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;

  End;
  DeleteFile(PChar(LogoFile));
end;



Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;

const
   //hoja
   xlWBATWorksheet = -4167;

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

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo


   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;

begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  Try
    Progress.Position := 0;
    Panel.Visible := True;
  //lblprogress.Visible := True;
    panel.repaint;
  //lblprogress.repaint;
    Progress.Max := Datos.RecordCount;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := true;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := TituloPestaña;


    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( DatoImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 50, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < DBGrid.Columns.Count do
    begin
      if DBGrid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Header.Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := DBGrid.Columns[Columna].Font.Size;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
        Inc(ColMaxExc);

      end;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;

    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_TurqLight ;

    RowIni := RowIni-6;

    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;

    RowIni := RowIni+6;

    columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Datos.first;
    while not Datos.Eof do
    begin
      columna := 1;
      ColMaxExc := 1;
      while columna-1 < DBGrid.Columns.Count do
      begin
        if DBGrid.Columns[columna-1].Visible then
        begin
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].FieldName).AsString;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := DBGrid.Columns[columna-1].Font.Size;
          //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
          inc(ColMaxExc);
        end;
        Inc(Columna);
      end;
      Datos.Next;
      Progress.Position := Linea;
      inc(linea);

    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;

    Excel.Visible:= True;

    //guardar el archivo
   // WorkBook.SaveAs('archivo.xls');

   //cerrar el excel
  //  Excel.Quit;


  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;

  End;
  DeleteFile(PChar(LogoFile));
end;

Function CadenaEntero (Cadena: String): Integer;
var entero : Integer;
begin
  Result := -1;
  Try
    entero := strToInt(Cadena);
    if entero >=0 then
      Result :=  entero;

  Except
    on e: exception do
      ShowMessage('Error el valor ingreso no es numérico');

  End;
end;

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

function ColumnaNombre(Numero:Integer):string;
var
    Valor,NumLetras:Integer;
    Cad:string;
begin
  NumLetras:=26;
  Cad:='';
  Valor:=Numero mod NumLetras;
  if Valor=0 then Valor:=26;
  if Numero-valor > 0 then Cad:=Char(64 + Trunc((Numero-Valor)/NumLetras));
  Cad:=cad + Char(64 + Valor);

  Result:=Cad;
end;

function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean; overload;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr: string;
  TempPath: String;
  LogoFile: String;
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
  WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
  WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
  WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
  WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

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

    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Font.Bold := true;
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
  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].columns.autofit;
  //Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].WrapText := True;

  {
  try
    cdExportarFilt := TClientDataSet.Create(self);
    cdExportarFilt.FieldDefs.Clear;
    cdExportarFilt.FieldDefs.Add('sCodigo', ftString, 200, False);
    cdExportarFilt.FieldDefs.Add('snoSerie', ftString, 100, false);
    cdExportarFilt.FieldDefs.Add('sTitulo', ftString, 100, false);
    cdExportarFilt.FieldDefs.Add('mDescripcion', ftMemo, 0, false);
    cdExportarFilt.FieldDefs.Add('mComentarios', ftMemo, 0, false);
    cdExportarFilt.FieldDefs.Add('dFecha', ftDate, 0, False);
    cdExportarFilt.CreateDataSet;
  finally
    FreeAndNil(cdExportarFilt);
  end;}
end;

function ExportExcelPersonalizado(DatoImagen: TZReadOnlyQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean; overload;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr: string;
  TempPath: String;
  LogoFile: String;
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
  WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
  WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
  WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
  WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

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

    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Font.Bold := true;


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
  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].columns.autofit;

end;
Function ExportarExcelCotizacion(Dato_Maestro:TClientDataSet; Dato_Detalle:TZQuery; TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TcxProgressBar;Panel:TPanel;Plantilla:Boolean):Boolean;overload;
(*Creo: Rafael
Descripcion: Se modifico la funcion que saul y misa crearon para adaptarlo*)
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;
  Rango : Variant;
const
  //hoja
  xlWBATWorksheet = -4167;
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
  //--------- Colores en Fondo de Celdas -------------------------------------
  xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
  xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
  xl_CL_Turq      = $00000008; // ( 8) Truquesa
  xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
  xl_CL_Rojo      = $00000003; // ( 3) Rojo
  xl_CL_Gris_Claro = $16445675;
  //Color de texto
  Xl_Rojo = clRed;
  xl_Lime = clLime;
  Xl_Negro = clBlack;
  Xl_Azul = clBlue;
  Xl_Amarillo = clYellow;
  Xl_Gris = clGray;
  xlValidateList = 3;
  xlBetween = 1;
  xlValidAlertStop = 1;
  xlSolid = 1;
  xlAutomatic = -4105;
  //xlVAlignLeft = -4131;
begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;
  Try
    Progress.Position := 0;
    Panel.Top   := 170;
    Panel.Left  := 442;
    Panel.Height:= 100;
    Panel.Width := 289;
    Panel.Visible := True;
    panel.repaint;
    Progress.Properties.Max := Dato_Detalle.RecordCount;
    // Se crea la aplicacion
    Excel := CreateOleObject('Excel.Application');
    // Mostrar el excel
    Excel.Visible:= False;
    // evitar que nos pregunte si deseamos sobreescribir el archivo
    Excel.DisplayAlerts := true;
    // agregar libro de trabajo
    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := TituloPestaña;
    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(Dato_Maestro.FieldByName('bImagenPemex')).SaveToFile(LogoFile);
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 105, 70);

    WorkSheet.Cells[RowIni+1,ColIni+2] := Encabezado;     //Nombre de la empresa
    WorkSheet.Cells[RowIni+1,ColIni+2].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+1,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    //Para el contrato
    WorkSheet.Cells[RowIni+2,ColIni+1] := 'Contrato:';
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+2,ColIni+2] := Titulo; //Para el contrato
    WorkSheet.Cells[RowIni+2,ColIni+2].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+2,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+4,ColIni+1] := 'PROGRAMA DE EROGACION';
    WorkSheet.Cells[RowIni+4,colIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+4,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+4,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+4,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+5,ColIni+2] := Dato_Maestro.FieldByName('Descripcion_Contrato').asString;
    WorkSheet.Cells[RowIni+5,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+5,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+5,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Proveedor
    WorkSheet.Cells[RowIni+7,ColIni+1] := 'PROVEEDOR:'; //Para el contrato
    WorkSheet.Cells[RowIni+7,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+7,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+7,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+7,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+7,ColIni+2] := Dato_Maestro.FieldByName('NombreProveedor').asString;
    WorkSheet.Cells[RowIni+7,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+7,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+7,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+7,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Para la seccion de folio
    WorkSheet.Cells[RowIni+8,ColIni+1] := 'REQUSICIÓN:';
    WorkSheet.Cells[RowIni+8,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+8,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+8,ColIni+2] := Dato_Maestro.FieldByName('iIdRequisicion').asString;;
    WorkSheet.Cells[RowIni+8,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+8,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Para el id cotizacion
    WorkSheet.Cells[RowIni+8,ColIni+4] := 'Cotizacion:';
    WorkSheet.Cells[RowIni+8,ColIni+4].font.size := 12;
    WorkSheet.Cells[RowIni+8,ColIni+4].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+4].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+4].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+8,ColIni+5] := Dato_Maestro.FieldByName('iIdCotizacion').asString;
    WorkSheet.Cells[RowIni+8,ColIni+5].font.size := 12;
    WorkSheet.Cells[RowIni+8,ColIni+5].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    //Referencia
    WorkSheet.Cells[RowIni+9,ColIni+1] := 'REFERENCIA';
    WorkSheet.Cells[RowIni+9,colIni+1].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+1].font.bold := true;
    //WorkSheet.Cells[RowIni+8,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+1] := Dato_Maestro.FieldByName('sReferencia').asString;
    WorkSheet.Cells[RowIni+10,colIni+1].font.size := 10;
    //WorkSheet.Cells[RowIni+9,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+10,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    //Solicitado
    WorkSheet.Cells[RowIni+9,ColIni+2] := 'SOLICITADO POR';
    WorkSheet.Cells[RowIni+9,colIni+2].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+2].font.bold := true;
    //WorkSheet.Cells[RowIni+8,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+9,ColIni+2] := Dato_Maestro.FieldByName('sSolicito').asString;
    WorkSheet.Cells[RowIni+9,colIni+2].font.size := 10;
    //WorkSheet.Cells[RowIni+9,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //SOLICITADO
    WorkSheet.Cells[RowIni+9,ColIni+4] := 'SOLICITADO';
    WorkSheet.Cells[RowIni+9,colIni+4].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+4].font.bold := true;
    WorkSheet.Cells[RowIni+9,ColIni+4].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+4] := Dato_Maestro.FieldByName('dFechaSolicitado').AsDateTime;
    WorkSheet.Cells[RowIni+10,colIni+4].font.size := 10;
    WorkSheet.Cells[RowIni+10,ColIni+4].HorizontalAlignment := xlHAlignLeft;
    //REQUISITADO
    WorkSheet.Cells[RowIni+9,ColIni+5] := 'REQUISITADO';
    WorkSheet.Cells[RowIni+9,colIni+5].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+5].font.bold := true;
    WorkSheet.Cells[RowIni+9,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+5] := Dato_Maestro.FieldByName('dFechaRequerido').AsDateTime;
    WorkSheet.Cells[RowIni+10,colIni+5].font.size := 10;
    WorkSheet.Cells[RowIni+10,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    RowIni := RowIni+12;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;
    while not Dato_Maestro.Eof do
    begin
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Cant. Req.';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 6;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'ID Material';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 15;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Descripcion';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 50;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Item';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 6;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni]                     := 'Fecha Requerida';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color          := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size           := 12;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold           := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10.86;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Cant. Cotizada';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'PU';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 15;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'IVA';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 7;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Tiempo Entrega';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Moneda';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 9;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'T/Cambio';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 11;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Observaciones';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 100;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);
      Dato_Maestro.next;
    end;

    ColMaxExc := ColMaxExc - 1;
    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    //worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_Gris_Claro;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.Pattern := xlSolid;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.PatternColorIndex := xlAutomatic;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ThemeColor := xlThemeColorDark1;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.TintAndShade := -0.149998474074526;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.PatternTintAndShade := 0;

    RowIni := RowIni-12;
    ColIni := 2;
    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;   //Nombre
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := False;  //Contrato
    Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni+4)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+4)].Mergecells := True;  //Descripcion
    Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni+5)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+6)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+6)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+7)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+7)].Mergecells := True;   //Nombre
    //Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+7)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+7)].Mergecells := False;
    //Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+8)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+8)].Mergecells := True;

    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni+1), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni+1)].RowHeight := 71.25;

    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(Dato_Maestro.FieldByName('bImagen')).SaveToFile(LogoFile);
    WorkSheet.shapes.addpicture(LogoFile, False, True, 110*(ColMaxExc), 10*rowini, 105, 70);

    RowIni := RowIni+12;
    Columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Dato_detalle.first;
    ColIni := ColIni-1;
    while not Dato_detalle.Eof do
    begin
      columna   := 1;
      ColMaxExc := 1;
      //while columna-1 < DBGrid.ColumnCount do
      begin
        //if DBGrid.Columns[columna-1].Visible then
        begin
          try
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iCantidad').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('sIdInsumo').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('NombreProducto').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iItem').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dFechaRequerida').AsDateTime;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iCantidadCotizada').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);
            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dPrecio').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '$#,##0.00';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dTasa').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '0%';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iTiempoEntrega').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iIdMoneda').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := 'MXN';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
             //creacion de combos                                                                         //combo de valores
            Rango := Excel.ActiveSheet.Range[LetraColumna(ColMaxExc+ColIni-2)+inttostr(linea+RowIni)+':'+LetraColumna(ColMaxExc+ColIni-2)+inttostr(RowIni)];
            Rango.validation.Delete;
            Rango.validation.Add(xlValidateList,AlertStyle := xlValidAlertStop,Operator := xlBetween, Formula1:='MXN,DLL,EUR');
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dTipoCambio').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '1';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '$#,##0.00';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('Comentario').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '*';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);
          except
            on e:Exception do
            msg_er(e.ClassName + e.Message);
          end;
        end;
        Inc(Columna);
      end;
      Dato_detalle.Next;
      Progress.Position := Linea;
      inc(linea);
    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;
    Excel.Visible:= True;
    Excel.ActiveSheet.Protect;

    //guardar el archivo
    // WorkBook.SaveAs('archivo.xls');

    //cerrar el excel
    //  Excel.Quit;
  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;
  End;
  DeleteFile(PChar(LogoFile));
end;
Function ExportarExcelCotizacion(Dato_Maestro:TClientDataSet; Dato_Detalle:TZQuery; TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TcxProgressBar;Panel:TcxPageControl; Indice:Integer; Plantilla:Boolean):Boolean;overload;
(*Creo: Rafael
Descripcion: Se modifico la funcion que saul y misa crearon para adaptarlo*)
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc, I: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;
  Rango : Variant;
const
  //hoja
  xlWBATWorksheet = -4167;
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
  //--------- Colores en Fondo de Celdas -------------------------------------
  xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
  xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
  xl_CL_Turq      = $00000008; // ( 8) Truquesa
  xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
  xl_CL_Rojo      = $00000003; // ( 3) Rojo
  xl_CL_Gris_Claro = $16445675;
  //Color de texto
  Xl_Rojo = clRed;
  xl_Lime = clLime;
  Xl_Negro = clBlack;
  Xl_Azul = clBlue;
  Xl_Amarillo = clYellow;
  Xl_Gris = clGray;
  xlValidateList = 3;
  xlBetween = 1;
  xlValidAlertStop = 1;
  xlSolid = 1;
  xlAutomatic = -4105;
  //xlVAlignLeft = -4131;
begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;
  Try
    VerPageControl(panel, Indice);
    Progress.Position := 0;
    Panel.Top   := 170;
    Panel.Left  := 442;
    Panel.Height:= 100;
    Panel.Width := 289;
    for I := 0 to Panel.PageCount - 1 do
    begin
      if I = Indice then Panel.Pages[I].Visible := True
      else Panel.Pages[I].Visible := False;
    end;
    Panel.Visible := True;
    panel.repaint;
    Progress.Properties.Max := Dato_Detalle.RecordCount;
    // Se crea la aplicacion
    Excel := CreateOleObject('Excel.Application');
    // Mostrar el excel
    Excel.Visible:= False;
    // evitar que nos pregunte si deseamos sobreescribir el archivo
    Excel.DisplayAlerts := true;
    // agregar libro de trabajo
    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := TituloPestaña;
    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(Dato_Maestro.FieldByName('bImagenPemex')).SaveToFile(LogoFile);
    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 105, 70);

    WorkSheet.Cells[RowIni+1,ColIni+2] := Encabezado;     //Nombre de la empresa
    WorkSheet.Cells[RowIni+1,ColIni+2].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+1,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    //Para el contrato
    WorkSheet.Cells[RowIni+2,ColIni+1] := 'Contrato:';
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+2,ColIni+2] := Titulo; //Para el contrato
    WorkSheet.Cells[RowIni+2,ColIni+2].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+2,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+4,ColIni+1] := 'PROGRAMA DE EROGACION';
    WorkSheet.Cells[RowIni+4,colIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+4,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+4,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+4,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+5,ColIni+2] := Dato_Maestro.FieldByName('Descripcion_Contrato').asString;
    WorkSheet.Cells[RowIni+5,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+5,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+5,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Proveedor
    WorkSheet.Cells[RowIni+7,ColIni+1] := 'PROVEEDOR:'; //Para el contrato
    WorkSheet.Cells[RowIni+7,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+7,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+7,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+7,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+7,ColIni+2] := Dato_Maestro.FieldByName('NombreProveedor').asString;
    WorkSheet.Cells[RowIni+7,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+7,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+7,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+7,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Para la seccion de folio
    WorkSheet.Cells[RowIni+8,ColIni+1] := 'REQUSICIÓN:';
    WorkSheet.Cells[RowIni+8,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+8,ColIni+1].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+1].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+8,ColIni+2] := Dato_Maestro.FieldByName('iIdRequisicion').asString;;
    WorkSheet.Cells[RowIni+8,colIni+2].font.size := 11;
    WorkSheet.Cells[RowIni+8,ColIni+2].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //Para el id cotizacion
    WorkSheet.Cells[RowIni+8,ColIni+4] := 'Cotizacion:';
    WorkSheet.Cells[RowIni+8,ColIni+4].font.size := 12;
    WorkSheet.Cells[RowIni+8,ColIni+4].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+4].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+4].HorizontalAlignment := xlHAlignRight;

    WorkSheet.Cells[RowIni+8,ColIni+5] := Dato_Maestro.FieldByName('iIdCotizacion').asString;
    WorkSheet.Cells[RowIni+8,ColIni+5].font.size := 12;
    WorkSheet.Cells[RowIni+8,ColIni+5].font.bold := true;
    WorkSheet.Cells[RowIni+8,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+8,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    //Referencia
    WorkSheet.Cells[RowIni+9,ColIni+1] := 'REFERENCIA';
    WorkSheet.Cells[RowIni+9,colIni+1].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+1].font.bold := true;
    //WorkSheet.Cells[RowIni+8,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+1] := Dato_Maestro.FieldByName('sReferencia').asString;
    WorkSheet.Cells[RowIni+10,colIni+1].font.size := 10;
    //WorkSheet.Cells[RowIni+9,ColIni+5].WrapText := True;
    WorkSheet.Cells[RowIni+10,ColIni+1].HorizontalAlignment := xlHAlignLeft;

    //Solicitado
    WorkSheet.Cells[RowIni+9,ColIni+2] := 'SOLICITADO POR';
    WorkSheet.Cells[RowIni+9,colIni+2].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+2].font.bold := true;
    //WorkSheet.Cells[RowIni+8,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+2].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+9,ColIni+2] := Dato_Maestro.FieldByName('sSolicito').asString;
    WorkSheet.Cells[RowIni+9,colIni+2].font.size := 10;
    //WorkSheet.Cells[RowIni+9,ColIni+2].WrapText := True;
    WorkSheet.Cells[RowIni+9,ColIni+2].HorizontalAlignment := xlHAlignLeft;
    //SOLICITADO
    WorkSheet.Cells[RowIni+9,ColIni+4] := 'SOLICITADO';
    WorkSheet.Cells[RowIni+9,colIni+4].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+4].font.bold := true;
    WorkSheet.Cells[RowIni+9,ColIni+4].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+4] := Dato_Maestro.FieldByName('dFechaSolicitado').AsDateTime;
    WorkSheet.Cells[RowIni+10,colIni+4].font.size := 10;
    WorkSheet.Cells[RowIni+10,ColIni+4].HorizontalAlignment := xlHAlignLeft;
    //REQUISITADO
    WorkSheet.Cells[RowIni+9,ColIni+5] := 'REQUISITADO';
    WorkSheet.Cells[RowIni+9,colIni+5].font.size := 10;
    WorkSheet.Cells[RowIni+9,ColIni+5].font.bold := true;
    WorkSheet.Cells[RowIni+9,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    WorkSheet.Cells[RowIni+10,ColIni+5] := Dato_Maestro.FieldByName('dFechaRequerido').AsDateTime;
    WorkSheet.Cells[RowIni+10,colIni+5].font.size := 10;
    WorkSheet.Cells[RowIni+10,ColIni+5].HorizontalAlignment := xlHAlignLeft;

    RowIni := RowIni+12;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;
    while not Dato_Maestro.Eof do
    begin
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Cant. Req.';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 6;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'ID Material';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 15;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Descripcion';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 50;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Item';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 6;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni]                     := 'Fecha Requerida';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color          := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size           := 12;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold           := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10.86;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Cant. Cotizada';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'PU';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 15;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'IVA';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 7;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Tiempo Entrega';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].WrapText := True;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth         := 10;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].RowHeight           := 32.25;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Moneda';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 9;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'T/Cambio';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 11;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);

      WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := 'Observaciones';
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := 100;
      WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
      Inc(ColMaxExc);
      Dato_Maestro.next;
    end;

    ColMaxExc := ColMaxExc - 1;
    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    //worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_Gris_Claro;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.Pattern := xlSolid;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.PatternColorIndex := xlAutomatic;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ThemeColor := xlThemeColorDark1;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.TintAndShade := -0.149998474074526;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.PatternTintAndShade := 0;

    RowIni := RowIni-12;
    ColIni := 2;
    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;   //Nombre
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := False;  //Contrato
    Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni+4)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+4)].Mergecells := True;  //Descripcion
    Excel.Range[LetraColumna(ColIni-1)+inttostr(RowIni+5)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+5)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+6)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+6)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+7)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+7)].Mergecells := True;   //Nombre
    //Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+7)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+7)].Mergecells := False;
    //Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+8)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+8)].Mergecells := True;

    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni+1), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni+1)].RowHeight := 71.25;

    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(Dato_Maestro.FieldByName('bImagen')).SaveToFile(LogoFile);
    WorkSheet.shapes.addpicture(LogoFile, False, True, 110*(ColMaxExc), 10*rowini, 105, 70);

    RowIni := RowIni+12;
    Columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Dato_detalle.first;
    ColIni := ColIni-1;
    while not Dato_detalle.Eof do
    begin
      columna   := 1;
      ColMaxExc := 1;
      //while columna-1 < DBGrid.ColumnCount do
      begin
        //if DBGrid.Columns[columna-1].Visible then
        begin
          try
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iCantidad').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('sIdInsumo').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('NombreProducto').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iItem').AsString;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            inc(ColMaxExc);

            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dFechaRequerida').AsDateTime;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iCantidadCotizada').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);
            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dPrecio').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '$#,##0.00';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dTasa').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '0%';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iTiempoEntrega').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '0';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('iIdMoneda').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := 'MXN';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
             //creacion de combos                                                                         //combo de valores
            Rango := Excel.ActiveSheet.Range[LetraColumna(ColMaxExc+ColIni-2)+inttostr(linea+RowIni)+':'+LetraColumna(ColMaxExc+ColIni-2)+inttostr(RowIni)];
            Rango.validation.Delete;
            Rango.validation.Add(xlValidateList,AlertStyle := xlValidAlertStop,Operator := xlBetween, Formula1:='MXN,DLL,EUR');
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('dTipoCambio').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '1';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignRight;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].NumberFormat := '$#,##0.00';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);

            if not Plantilla then
              WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Dato_detalle.FieldByName('Comentario').AsString
            else WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := '*';
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
            //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].Locked := False;
            WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].FormulaHidden := False;
            inc(ColMaxExc);
          except
            on e:Exception do
            msg_er(e.ClassName + e.Message);
          end;
        end;
        Inc(Columna);
      end;
      Dato_detalle.Next;
      Progress.Position := Linea;
      inc(linea);
    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;
    Excel.Visible:= True;
    Excel.ActiveSheet.Protect;

    //guardar el archivo
    // WorkBook.SaveAs('archivo.xls');

    //cerrar el excel
    //  Excel.Quit;
  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;
  End;
  DeleteFile(PChar(LogoFile));
end;

function ExportarPDF(Vista: TcxGridDBTableView; var Tabla:TClientDataSet):Boolean;
{Creo: Rafael
Descripcion: Funcion para llenar con los registros de la vista de un cxgrid un cliendataset}
var
  f, c: integer;
  valorStr, nombre: string;
  AColumn: TcxCustomGridTableItem;
  Sender: TcxCustomGridTableView;
begin
  f:= 0;   //Para que inicie en la primera fila
  while f < Vista.dataController.rowcount do
  begin
    Tabla.Append; //Abrimo la tala para guardar los datos
    c := 0;  //Para que inicie en la primera columna
    while c < Vista.ColumnCount do
    begin
      if Vista.ViewData.Rows[f].Values[c]=null then  //Si la celda tiene nulo le asigna un vacio
        valorStr:=''
      else valorStr := Vista.ViewData.Rows[f].Values[c] ;   //Si tiene valor se lo asigna a la variable
      if Vista.Columns[c].DataBinding.FieldName       = 'sIdEmpleado'         then Tabla.FieldByName('sIdEmpleado').AsString       := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sNombreCompleto'     then Tabla.FieldByName('sNombreCompleto').AsString  := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sApellidoPaterno'    then Tabla.FieldByName('sApellidoPaterno').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sApellidoMaterno'    then Tabla.FieldByName('sApellidoMaterno').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'DescripcionPuesto'   then
      begin
        if valorStr <> '' then Tabla.FieldByName('DescripcionPuesto').AsString  := valorStr
        else Tabla.FieldByName('DescripcionPuesto').AsString                    := 'NO DEFINIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'departamento'        then
      begin
        if valorStr <> '' then Tabla.FieldByName('departamento').AsString       := valorStr
        else Tabla.FieldByName('departamento').AsString                         := 'SIN CLASIFICACION';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'Estatus'             then Tabla.FieldByName('Estatus').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'profesion'           then Tabla.FieldByName('profesion').AsString            := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sBanco'              then Tabla.FieldByName('sBanco').AsString               := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'nacionalidad'        then Tabla.FieldByName('nacionalidad').AsString         := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sInfonavit'          then Tabla.FieldByName('sInfonavit').AsString           := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sStatusTipoPersonal' then
      begin
        if valorStr <> '' then Tabla.FieldByName('sStatusTipoPersonal').AsString  := valorStr
        else Tabla.FieldByName('sStatusTipoPersonal').AsString                    :='NO DEFINIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCuenta'             then Tabla.FieldByName('sCuenta').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCuentaInterbancaria'then Tabla.FieldByName('sCuentaInterbancaria').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'iId_Puesto'          then
      begin
        if valorStr <> '' then Tabla.FieldByName('iId_Puesto').asInteger  := strtoint(valorStr)
        else Tabla.FieldByName('iId_Puesto').asInteger                    := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'idorganizacion'      then
      begin
        if valorStr <> '' then Tabla.FieldByName('idorganizacion').AsInteger  := strtoint(valorStr)
        else Tabla.FieldByName('idorganizacion').AsInteger                    := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'iIdRegistroPatronal' then
      begin
        if valorStr <> '' then Tabla.FieldByName('iIdRegistroPatronal').AsInteger := StrToInt(valorStr)
        else Tabla.FieldByName('iIdRegistroPatronal').AsInteger                   := 0;
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sImss'               then Tabla.FieldByName('sImss').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCurp'               then Tabla.FieldByName('sCurp').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sCalle'              then
      begin
        if valorStr <> '' then Tabla.FieldByName('sCalle').AsString := 'Calle '+valorStr
        else Tabla.FieldByName('sCalle').AsString                   := 'CONOCIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sColonia'            then
      begin
        if valorStr <> '' then Tabla.FieldByName('sColonia').AsString := 'Col. '+valorStr
        else Tabla.FieldByName('sColonia').AsString                   := 'CONOCIDO';
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sEstado'             then Tabla.FieldByName('sEstado').AsString              := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sLocalidad'          then Tabla.FieldByName('sLocalidad').AsString           := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sNumero'             then
      begin
        if valorStr <> '' then Tabla.FieldByName('sNumero').AsString  := 'No. '+valorStr
        else Tabla.FieldByName('sNumero').AsString                    := 'S/N'
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sPais'               then Tabla.FieldByName('sPais').AsString                := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dFechaInicioLabores' then Tabla.FieldByName('dFechaInicioLabores').AsString  := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dFechaTerminoLabores'then Tabla.FieldByName('dFechaTerminoLabores').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'sRfc'then Tabla.FieldByName('sRfc').AsString := valorStr
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldo'             then Tabla.FieldByName('dSueldo').AsFloat          := StrToFloat(valorStr)
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldoIntegrado'    then
           begin
               if valorStr = '' then
                  valorStr := '0';
               Tabla.FieldByName('dSueldoIntegrado').AsFloat := StrToFloat(valorStr);
           end
      else if Vista.Columns[c].DataBinding.FieldName  = 'dSueldoDiario'       then
           begin
               if valorStr = '' then
                  valorStr := '0';
               Tabla.FieldByName('dSueldoDiario').AsFloat    := StrToFloat(valorStr)
           end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sTelefono'           then
      begin
        if valorStr <> '' then Tabla.FieldByName('sTelefono').AsString  := 'Fijo: '+valorStr
      end
      else if Vista.Columns[c].DataBinding.FieldName  = 'sTelefonoCelular' then
      begin
        if valorStr <> '' then Tabla.FieldByName('sTelefonoCelular').AsString := 'Celular: ' + valorStr;
      end;
      inc(c);
    end;
    Tabla.Post;
    Inc(f);
  end;
end;
end.
