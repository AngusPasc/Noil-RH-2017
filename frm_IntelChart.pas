unit frm_IntelChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZDataset, ZConnection,
  UTChartMarco, UTChartMouse, ImgList, rxSpeedbar, RxGIF, Buttons, Grids, DBGrids,
  sSplitter, Global, frm_Connection, jpeg, Mask, DBCtrls, ComCtrls, RxDBComb,
  ComObj,UnitTBotonesPermisos;

type
  TCopyDataStruct = packed record
    dwData: DWORD;   // de uso libre: para indicar por ejemplo el tipo de información a transmitir
    cbData: DWORD;   // el tamaño en bytes de los datos que se van a enviar
    lpData: Pointer; // puntero a los datos que se van a enviar
  end;

type
  TWMCopyData = packed record
    Msg: Cardinal;
    From: HWND;// Handle de la ventana que envía la información
    CopyDataStruct: PCopyDataStruct; // datos enviados
    Result: Longint; // usado para enviar la respuesta
  end;

type
  TIntelChart = class(TForm)
    PaintBox1: TPaintBox;
    qroOrden: TZReadOnlyQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    sbMenos: TSpeedButton;
    lblzoom: TLabel;
    sbMas: TSpeedButton;
    sbHorizontal: TScrollBar;
    sbVertical: TScrollBar;
    Panel4: TPanel;
    Panel5: TPanel;
    Btn_Control: TButton;
    qroListaOrdenes: TZReadOnlyQuery;
    qroListaOrdenessnumeroorden: TStringField;
    qroListaOrdenessdescripcioncorta: TStringField;
    qroListaOrdenesmdescripcion: TMemoField;
    DBEdit1: TDBEdit;
    dsContrato: TDataSource;
    DBMemo1: TDBMemo;
    Panel6: TPanel;
    Panel7: TPanel;
    cbOrdenes: TComboBox;
    dsListaOrdenes: TDataSource;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;     // Variable para respaldar el metodo original del evento scroll (comportamiento original)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    Procedure Dibuja;
    procedure PaintBox1Paint(Sender: TObject);

    Function Ajuste(Valor: Integer): Integer;
    Function AjusteExcel(Valor: Integer): Integer;
    procedure PaintBox1DblClick(Sender: TObject);
    procedure calculos(swbs: String; varx:Integer) ;
    procedure linknavegacionClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    Function GetLine(Fuente: TFont; pAncho: Word; Cadena: String; Indice: Word): String;
    procedure sbMasClick(Sender: TObject);
    procedure sbMenosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qroListaOrdenesAfterScroll(DataSet: TDataSet);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure PaintBox1Click(Sender: TObject);
    procedure Btn_ControlClick(Sender: TObject);
    procedure sbHorizontalChange(Sender: TObject);
    procedure sbVerticalChange(Sender: TObject);
    procedure cbOrdenesChange(Sender: TObject);
    Procedure GenerarExcel(Imprimir: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    Procedure WMCopyData( var Msg: TWMCopyData ); message WM_COPYDATA;
    procedure cbOrdenesEnter(Sender: TObject);
    procedure cbOrdenesExit(Sender: TObject);
   private
    { Private declarations }
    OldPaintProc: TWndMethod;
    Procedure PaintWindowProc(var Message: TMessage);
    Procedure myWindowProc(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
  end;

type
  Tpantalla = class
    Margen: TPoint;
    Posicion: TPoint;
    OldPosition: Integer;
    FirstWbs: String;
    Zoom: integer;
    ZoomExcel: Integer;

    constructor create;
  end;

Const
  Ancho = 200;
  Alto = 150;
  MargenX = 30;
  MargenY = 30;
  TamFuente = 8;
  Inter = 5;

  TamFuenteExcel = 8;
  Imprimir = True;
  AltoTitulo = 350;

var
  FIntelChart: TIntelChart;
  ListaObj: TStringList;
  Mouse: TChartMouse;
  Pantalla: TPantalla;
  Imagen: TImage;
  MaxMarcos: Integer = 0;
  EspMaximo, EspMinimo, MarcosLevel: Integer;
  pressventana:boolean;
  RowHeight, MaxLines: Word;
  OldX: Integer = 9;
  OldY: Integer = 9;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

constructor Tpantalla.create;
begin
  Margen.X := 0;
  Margen.Y := 0;
  Posicion.X := 1;
  Posicion.Y := 1;
  FirstWbs := '';
  Zoom := 100;
  ZoomExcel := 50;
end;

Function Item(Pos: Word; Cadena: String; Sep: String): String;
Var
  sCad,Res: String;
  nCar,sNum: Integer;
Begin
  nCar := 0;
  sCad := '';
  Res := '';
  sNum := 0;
  if Copy(Cadena,1,Length(Cadena)) <> Sep then Cadena := Cadena + Sep;

  while (nCar < Length(Cadena)) And (sNum < Pos) do
  Begin
    Inc(nCar);
    if Cadena[nCar] = Sep then
    Begin
      Inc(sNum);
      if sNum = Pos then
        Res := sCad;
      sCad := '';
      Inc(nCar);
    End;

    sCad := sCad + Cadena[nCar];
  End;
  Item := Res;
End;

Procedure TIntelChart.WMCopyData(var Msg: TWMCopyData);
Var
  Mensaje: String;
begin
  Mensaje := PChar( Msg.CopyDataStruct.lpData );
  Msg.Result := 1234; // Mensaje de respuesta de que todo ha ido bien
end;

Procedure TIntelChart.PaintWindowProc(var Message: TMessage);
Var
  Delta, Posx, Posy: SmallInt;
Begin
  OldPaintProc(Message);     // Ejecutar primero el procedimiento o metodo original

  // Ahora proceder a analizar los eventos para determinar si se ha utilizado el mouse
  Case Message.Msg Of
    WM_MOUSEWHEEL:
    Begin
      Delta := smallint(HIword(Message.Wparam));
      Posx := smallint(LoWord(Message.LParam));
      Posy := smallint(HiWord(Message.LParam));

      if Delta > 0 then
        sbMasClick(Self)
      Else
        sbMenosClick(Self);
    End;
  End;
End;

procedure TIntelChart.qroListaOrdenesAfterScroll(DataSet: TDataSet);
begin
  // Volver a cargar los datos para una nueva orden de trabajo
end;

Procedure TIntelChart.myWindowProc(var Msg: tagMSG; var Handled: Boolean);
Var
  Delta, Posx, Posy: SmallInt;
begin
  Case Msg.message Of
    WM_MOUSEWHEEL:
    Begin
      Delta := smallint(HIword(Msg.Wparam));
      Posx := smallint(LoWord(Msg.LParam));
      Posy := smallint(HiWord(Msg.LParam));

      if Delta > 0 then
        sbMasClick(Self)
      Else
        sbMenosClick(Self);
    End;
  End;
  // rangel
end;

Function TIntelChart.GetLine(Fuente: TFont; pAncho: Word; Cadena: String; Indice: Word): String;
Var
  Lienzo: TImage;
  MaxLin, cLin, pSpc, nCar, Espacio, IniCad: Word;
  sCad, Resultado, oResultado: String;
begin
  // Generar el lienzo de comparación de acuerdo al rectangulo dado
  Lienzo := TImage.Create(Nil);
  Lienzo.Left := 0;
  Lienzo.Top := 0;
  Lienzo.Width := Ancho;
  Lienzo.Height := Ancho;
  Lienzo.Canvas.Font := Fuente;

  // Determinar cuantas lineas caben en este rectangulo
  MaxLin := Trunc(Lienzo.Height / Lienzo.Canvas.Font.Height);

  cLin := 0;
  pSpc := 0;
  nCar := 0;
  sCad := '';
  IniCad := 1;
  Resultado := '';
  oResultado := '';
  while (nCar < Length(Cadena)) And (cLin < Indice) do
  Begin
    Inc(nCar);
    Resultado := '';

    sCad := sCad + Cadena[nCar];              // Agregar caracter a la cadena de analisis
    if Cadena[nCar] = ' ' then pSpc := nCar;  // Posición del último espacio en blanco localizado

    Espacio := Lienzo.Canvas.TextWidth(sCad); // Espacio que ocupa la cadena parcial

    // Verificar si la cadena parcial cabe dentro del ancho del rectangulo dado
    if Espacio >= Lienzo.Width then
    Begin
      // Localizar el último espacio en blanco localizado
      if pSpc > 0 then
      Begin
        Resultado := Copy(Cadena, IniCad, pSpc - IniCad);
        oResultado := oResultado + IntToStr(IniCad) + ':' + IntToStr(pSpc - IniCad) + ',';
        IniCad := pSpc + 1;     // Nueva cadena inicia despues del caracter
        sCad := '';
        nCar := pSpc;     // Volver a procesar los caracteres posteriores al espacio en blanco tomando como separador
        pSpc := 0;          // Inicializar localización de espacio en blanco
      End
      Else
      Begin
        // Si No se ha encontrado todavía un espacio en blanco se trata de una palabra demasiado grande, se deberá entonces cortar la palabra en el caracter anterior a este que superó el espacio
        Resultado := Copy(Cadena, IniCad, nCar - IniCad);
        oResultado := oResultado + IntToStr(IniCad) + ':' + IntToStr(nCar - IniCad) + ',';
        IniCad := nCar;
        Dec(nCar);  // Considerar el caracter despreciado aquí en la siguiente línea
        sCad := '';
      End;
      
      Inc(cLin);    // Incrementar número de linea procesada
    End
    Else
      // Verificar si ya se terminaron los caracteres
      If nCar = Length(Cadena) Then
      Begin
        Inc(cLin);
        Resultado := Copy(Cadena, IniCad, nCar);
        oResultado := oResultado + IntToStr(IniCad) + ':' + IntToStr(nCar) + ',';
      End;
  End;
  FreeAndNil(Lienzo);
  GetLine := oResultado;
end;

Function TIntelChart.Ajuste(Valor: Integer): Integer;
begin
  Result := Trunc(Valor * (Pantalla.zoom / 100));
end;

Function TIntelChart.AjusteExcel(Valor: Integer): Integer;
begin
  Result := Trunc(Valor * (Pantalla.zoomExcel / 100));
end;

Procedure TIntelChart.Dibuja;
var
  Cuenta, Col, Ren, SubX: Integer;
  SubCad: String;
  Ini, Fin, Sang, Renglon: Word;
begin
  FreeAndNil(Imagen);

  Imagen := TImage.Create(Nil);

  Imagen.Left := 0;
  Imagen.Top := 0;
  Imagen.Width := PaintBox1.Width;
  Imagen.Height := PaintBox1.Height;
  Imagen.Canvas.Brush.Color := clWhite;
  Imagen.Canvas.Pen.Color := clWhite;
  Imagen.Canvas.Pen.Width := Ajuste(2);
  Imagen.Canvas.Rectangle(0, 0, Imagen.Width, Imagen.Width);

  for Cuenta := 0 to MaxMarcos - 1 do
  Begin
    // Verificar si es una actividad o un paquete
    Imagen.Canvas.Pen.Width := Ajuste(4);
    Imagen.Canvas.Brush.Color := TChartMarco(ListaObj.Objects[Cuenta]).BColor;
    Imagen.Canvas.Pen.Color := TChartMarco(ListaObj.Objects[Cuenta]).FColor;
    if TChartMarco(ListaObj.Objects[Cuenta]).Paquete then
    Begin
      // Si se trata de un paquete se debe generar su marco
      Imagen.Canvas.RoundRect(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).x), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).y), Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).x + TChartMarco(ListaObj.Objects[Cuenta]).Width), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).y + TChartMarco(ListaObj.Objects[Cuenta]).Height), Ajuste(20), Ajuste(20));

      Imagen.Canvas.Font.Color := clWhite;
      if Ajuste(TamFuente) <= 0 then
        Imagen.Canvas.Font.Size := 1
      Else
        Imagen.Canvas.Font.Size := Ajuste(TamFuente);

      // Colocar el wbs de este marco
      Imagen.Canvas.TextOut(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).WbsCenter) + Imagen.Canvas.Pen.Width, Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).y + 3), TChartMarco(ListaObj.Objects[Cuenta]).swbs);

      // Colocar la descripción
      for Subx := 1 to MaxLines do
      Begin
        SubCad := Item(Subx,TChartMarco(ListaObj.Objects[Cuenta]).Cortes,',');
        if SubCad <> '' then
        Begin
          Ini := StrToInt(Item(1,SubCad,':'));
          Fin := StrToInt(Item(2,SubCad,':'));
          Sang := Trunc((Ajuste(Ancho) - Imagen.Canvas.TextWidth(Copy(TChartMarco(ListaObj.Objects[Cuenta]).Descripcion,Ini,Fin))) / 2);

          // Verifica si cabe todo el pedo
          Renglon := Ajuste(Pantalla.Margen.y + Trunc(TChartMarco(ListaObj.Objects[Cuenta]).y + ((TChartMarco(ListaObj.Objects[Cuenta]).WbsHeight) * 1.10))) + ((Subx) * Imagen.Canvas.TextHeight('X'));

          Imagen.Canvas.TextOut(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).x) + Sang, Renglon, Copy(TChartMarco(ListaObj.Objects[Cuenta]).Descripcion,Ini,Fin));
        End;
      End;

      // Trazar línea de conexión con predecesor
      Imagen.Canvas.Pen.Width := Ajuste(2);
      Imagen.Canvas.Pen.Color := clBlack;
      if TChartMarco(ListaObj.Objects[Cuenta]).Merx >= 0 then
      Begin
        Col := Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).X + Trunc(TChartMarco(ListaObj.Objects[Cuenta]).Width / 2);
        Imagen.Canvas.MoveTo(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).Merx), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).MerY + Trunc(MargenY / 2)));
        Imagen.Canvas.LineTo(Ajuste(Col), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).MerY + Trunc(MargenY / 2)));
        Imagen.Canvas.LineTo(Ajuste(Col), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).Y));
      End;

      // Trazar línea de bajada (Solo si existen hijos)
      if TChartMarco(ListaObj.Objects[Cuenta]).Hijos > 0 then
      Begin
        Imagen.Canvas.MoveTo(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).MarX), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).MarY));
        Imagen.Canvas.LineTo(Ajuste(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cuenta]).MarX), Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).MarY + Trunc(MargenY / 2)));
      End;
    End;
  End;

  if Mouse.Select > -1 then
    Mouse.Respaldado := True;

  BitBlt(PaintBox1.Canvas.Handle,0,0,Imagen.Width,Imagen.Height,Imagen.Canvas.Handle,0,0,srcCopy);
End;

procedure TIntelChart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  botonpermiso.free;
  FreeAndNil(ListaObj);
  action := cafree ;
end;

procedure TIntelChart.FormCreate(Sender: TObject);
Var
  CopyDataStruct : TCopyDataStruct;
  hReceptor: THandle;
  Respuesta: integer;
  Mensaje: String;
begin
  // Verificar si esta ventana ya se encuentra abierta
{  CopyDataStruct.dwData := 0; // use it to identify the message contents
  CopyDataStruct.cbData := Length(Mensaje);
  CopyDataStruct.lpData := PChar(Mensaje); // Comprobamos si existe el receptor
  hReceptor := FindWindow(PChar('TIntelChart'), PChar('IntelChart'));
  if hReceptor = 0 then
  begin
    ShowMessage( 'No he encontrado al receptor.' );
  end
  Else
  Begin
    // Enviamos el mensaje y recogemos la respuesta del receptor
    Respuesta := SendMessage( hReceptor, WM_COPYDATA, Integer( Handle ),   Integer( @CopyDataStruct ) );
    if Respuesta = 1234 then
      ShowMessage( 'El mensaje ha sido recibido satisfactoriamente.' );
  End;
  // Termina rutina de verificación de existencia de ventana previa
  //***************************************************************************************************
}


  ListaObj := TStringList.Create;           // Crear lista de elementos para graficar
  Mouse := TChartMouse.MouseConst;               // Crear objeto para eventos de mouse
  Pantalla := tpantalla.create;             // Crear objeto de parametros de pantalla
  OldPaintProc := PaintBox1.WindowProc;     // Guardar procedimiento o metodo original del paintbox
end;

procedure TIntelChart.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  if WheelDelta > 0 then
    sbMasClick(Self)
  Else
    sbMenosClick(Self);
end;

procedure TIntelChart.FormResize(Sender: TObject);
begin
  Dibuja;
end;

procedure TIntelChart.Btn_ControlClick(Sender: TObject);
begin
  ShowMessage('INTEL-CHART Ver. 1.0');
end;

Function QuitaComillas(Cadena: String): String;
Var
  x: Integer;
  SubCad: String;
Begin
  for x := 1 to Length(Cadena) do
    if Cadena[x] <> '"' then
      SubCad := SubCad + Copy(Cadena,x,1);
  Result := SubCad;
End;

Procedure TIntelChart.GenerarExcel(Imprimir: Boolean);
Var
  Excel, Book, Hoja: Variant;
  Cta, Col, Resp: Integer;
  fName, CadTitulo: String;
  OpenD: TOpenDialog;
Begin
  // Solicitar el nombre del archivo
  OpenD := TOpenDialog.Create(self);
  OpenD.Filter := 'Archivos de MS EXCEL|*.xls';
  OpenD.FilterIndex := 1;

  if Not Imprimir then
  Begin
    // Determinar el nombre propuesto para la grafica de gantt
    OpenD.FileName := 'Grafica de flujo ' + global_contrato + '-' + qroListaOrdenes.FieldValues['snumeroorden'] + '.xls';

    // Verificar la extención en el nombre de archivo
    If openD.Execute Then
      fName := OpenD.FileName
    Else
      Exit;
  End;

  // Crear el objeto para comunicación con excel
  Excel := CreateOleObject('Excel.Application');
  Book := Excel.WorkBooks.add;
  Hoja := Excel.Sheets[1];
  Excel.Visible := False;
  Excel.DisplayAlerts := False;

  // Colocar el área del titulo
  Hoja.Shapes.AddShape(61, AjusteExcel(Ancho + 10), AjusteExcel(0), AjusteExcel(EspMaximo - (MargenY + Ancho + aNCHO + 20)), AjusteExcel(Trunc((AltoTitulo - 30) / 2))).Select;
  Excel.Selection.ShapeRange.Fill.Visible := 0;
  Excel.Selection.ShapeRange.Line.Visible := 0;
  {Excel.Selection.ShapeRange.Fill.Solid;
  Excel.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 62;
  Excel.Selection.ShapeRange.Fill.Transparency := 0;
  Excel.Selection.ShapeRange.Line.Weight := 0.75;
  Excel.Selection.ShapeRange.Line.DashStyle := 1;
  Excel.Selection.ShapeRange.Line.Style := 1;
  Excel.Selection.ShapeRange.Line.Transparency := 0;
  Excel.Selection.ShapeRange.Line.Visible := -1;
  Excel.Selection.ShapeRange.Line.ForeColor.SchemeColor := 18;
  Excel.Selection.ShapeRange.Line.BackColor.RGB := RGB(255, 255, 255);
}
  CadTitulo := QuitaComillas(Connection.Configuracion.FieldValues['sNombre'] + #10 + #10 + Connection.contrato.FieldValues['mCliente']);
  Excel.Selection.Characters.Text := CadTitulo;
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Size := AjusteExcel(TamFuenteExcel);
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Name := 'Arial';
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.FontStyle := 'Negrita';
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Size := 10;
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.ColorIndex := 0;
  Excel.Selection.HorizontalAlignment := -4108;    // Centrar el texto

  // Segundo titulo
  Hoja.Shapes.AddShape(61, AjusteExcel(10), AjusteExcel(Trunc((AltoTitulo - 30) / 2)), AjusteExcel(EspMaximo - (MargenY + 20)), AjusteExcel(Trunc((AltoTitulo - 30) / 2))).Select;
  Excel.Selection.ShapeRange.Fill.Visible := 0;
  Excel.Selection.ShapeRange.Line.Visible := 0;
  {Excel.Selection.ShapeRange.Fill.Solid;
  Excel.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 62;
  Excel.Selection.ShapeRange.Fill.Transparency := 0;
  Excel.Selection.ShapeRange.Line.Weight := 0.75;
  Excel.Selection.ShapeRange.Line.DashStyle := 1;
  Excel.Selection.ShapeRange.Line.Style := 1;
  Excel.Selection.ShapeRange.Line.Transparency := 0;
  Excel.Selection.ShapeRange.Line.Visible := -1;
  Excel.Selection.ShapeRange.Line.ForeColor.SchemeColor := 18;
  Excel.Selection.ShapeRange.Line.BackColor.RGB := RGB(255, 255, 255);
}
  CadTitulo := 'CONTRATO: ' + Connection.contrato.FieldValues['sContrato'] + #10 + Connection.contrato.FieldValues['mDescripcion'];
  Excel.Selection.Characters.Text := CadTitulo;
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Size := AjusteExcel(TamFuenteExcel);
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Name := 'Arial';
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.FontStyle := 'Negrita';
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.Size := 10;
  Excel.Selection.Characters(1,Length(CadTitulo)).Font.ColorIndex := 0;
  Excel.Selection.HorizontalAlignment := -4108;    // Centrar el texto

  // Recorrer todos los elementos para generarlos en excel
  for Cta := 0 to ListaObj.Count - 1 do
  Begin
    Hoja.Shapes.AddShape(61, AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).x), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).Y + AltoTitulo), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).Width), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).Height)).Select;
    Excel.Selection.ShapeRange.Fill.Visible := -1;
    Excel.Selection.ShapeRange.Fill.Solid;
    Excel.Selection.ShapeRange.Fill.ForeColor.SchemeColor := 62;
    Excel.Selection.ShapeRange.Fill.Transparency := 0;
    Excel.Selection.ShapeRange.Line.Weight := 0.75;
    Excel.Selection.ShapeRange.Line.DashStyle := 1;
    Excel.Selection.ShapeRange.Line.Style := 1;
    Excel.Selection.ShapeRange.Line.Transparency := 0;
    Excel.Selection.ShapeRange.Line.Visible := -1;
    Excel.Selection.ShapeRange.Line.ForeColor.SchemeColor := 18;
    Excel.Selection.ShapeRange.Line.BackColor.RGB := RGB(255, 255, 255);

    Excel.Selection.Characters.Text := TChartMarco(ListaObj.Objects[Cta]).swbs + #10 + TChartMarco(ListaObj.Objects[Cta]).Descripcion;
    Excel.Selection.HorizontalAlignment := -4108;    // Centrar el texto
    Excel.Selection.Characters(1,Length(TChartMarco(ListaObj.Objects[Cta]).swbs + #10 + TChartMarco(ListaObj.Objects[Cta]).Descripcion)).Font.Size := AjusteExcel(TamFuenteExcel);

    // Trazar línea de conexión con predecesor
    if TChartMarco(ListaObj.Objects[Cta]).Merx >= 0 then
    Begin
      Col := TChartMarco(ListaObj.Objects[Cta]).X + Trunc(TChartMarco(ListaObj.Objects[Cta]).Width / 2);
      Hoja.Shapes.AddLine(AjusteExcel(Pantalla.Margen.X + TChartMarco(ListaObj.Objects[Cta]).Merx), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MerY + Trunc(MargenY / 2) + AltoTitulo), AjusteExcel(Col), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MerY + Trunc(MargenY / 2) + AltoTitulo)).Select;
      Hoja.Shapes.AddLine(AjusteExcel(Col), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MerY + Trunc(MargenY / 2) + AltoTitulo), AjusteExcel(Col), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).Y + AltoTitulo)).Select;
    End;

    // Trazar línea de bajada (Solo si existen hijos)
    if TChartMarco(ListaObj.Objects[Cta]).Hijos > 0 then
      Hoja.Shapes.AddLine(AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarX), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarY + AltoTitulo), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarX), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarY + Trunc(MargenY / 2) + AltoTitulo)).Select;
//      Hoja.Shapes.AddLine(AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarX), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarY + AltoTitulo), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarX), AjusteExcel(TChartMarco(ListaObj.Objects[Cta]).MarY + Trunc(MargenY / 2))).Select;
  End;

  Excel.ActiveWindow.DisplayGridlines := False;

  if Imprimir then
  Begin
    Hoja.PageSetup.LeftMargin := 1;
    Hoja.PageSetup.RightMargin := 1;
    Hoja.PageSetup.TopMargin := 1;
    Hoja.PageSetup.BottomMargin := 1;
    Hoja.PageSetup.HeaderMargin := 0;
    Hoja.PageSetup.FooterMargin := 0;
    Hoja.PageSetup.Orientation := 2;
    Hoja.PageSetup.CenterVertically := True;
    Hoja.PageSetup.CenterHorizontally := True;
    Hoja.PageSetup.Zoom := False;
    Hoja.PageSetup.FitToPagesWide := 1;
    Hoja.PageSetup.FitToPagesTall := 1;
    Excel.Visible := True;
    Excel.ActiveWindow.SelectedSheets.PrintPreview;
    Excel.Quit;
  End
  Else
  Begin
    Book.SaveAs(fName, -4143, '', '', False, False);

    If MessageDlg('¿Desea ver ahora el archivo que fué generado?',mtconfirmation,[mbYes,mbNo],0) = mrYes Then
    Begin
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
    End
    Else
    Begin
      Excel.Quit;
    End;
  End;

  //Excel.Unassigned;
End;

procedure TIntelChart.calculos(swbs: String; varx:Integer) ;
Var
  Cuenta, Indice, Pastilla, MaxLevel, Aux,auxnivel, OldNivel, PreInd,
  pCadena, Ind: Integer;
  Factor, Espacio, Espaciado, AcumCol: Real;
  Min,Max,Pos, tCol, tRen: Word;
  OldWbs: String;
  qBusca: TZReadOnlyQuery;
  Procede: Boolean;
begin
  Screen.Cursor := crHourGlass;

  // Inicializar valores principales para evitar errores en los casos de que no encuentre datos
  MaxMarcos := 0;

  { Nota de Rangel: Al parecer esta parte del código no es necesaria ya que se está validando que los paquetes indicados
    por el usuario tengan al menos un hijo para poder graficarlos, pero si se quita esta parte del código cuando existen
    números de orden de trabajo que no cuentan con partidas el código genera un error, dicho error se evita dejando esta
    sección del código aún y cuando parece duplicarse, para mas referencia de esto preguntale a Rangel }

  // Verirficar que exista más de un nivel para esta gráfica, en caso contrario no realizar los calculos y dejar la grafica tal cual
  qBusca := TZReadonlyQuery.Create(Nil);
  qBusca.Connection := Connection.zConnection;
  qBusca.SQL.Text := 'select scontrato from actividadesxorden where scontrato = :contrato and sidconvenio = :convenio and snumeroorden = :orden and stipoactividad = ''Paquete'' and swbsanterior = :wbsanterior';
  qBusca.ParamByName('contrato').Value := global_contrato;
  qBusca.ParamByName('convenio').Value := global_convenio;
  qBusca.ParamByName('orden').Value := qrolistaordenes.FieldValues['snumeroorden'];
  qBusca.ParamByName('wbsanterior').Value := swbs;
  qBusca.Open;
  Procede := qBusca.RecordCount > 0;
  qBusca.Close;
  FreeAndNil(qBusca);

  if Not Procede then
  Begin
    Screen.Cursor := crDefault;
    Exit;
  End;

  // Seleccionar las partidades de la orden de trabajo
  qroorden.Active := False;
  qroorden.ParamByName('contrato').AsString := global_contrato;
  qroorden.ParamByName('convenio').AsString := global_convenio;
  qroorden.ParamByName('orden').AsString := qroListaOrdenes.fieldvalues['snumeroorden'];
  qroorden.ParamByName('swbs').AsString := swbs ;
  qroorden.ParamByName('swbslike').AsString := swbs+'.%' ;
  qroorden.ParamByName('var').AsInteger := varx;
  qroorden.Active := True;

  if qroorden.RecordCount = 0 then
  Begin
    // Informar al usuario que no hay datos correspondientes a esta orden de trabajo, y deshabilitar todos los botones que influyen en la grafica
  End;

  PaintBox1.Canvas.Font.Size := TamFuente;
  RowHeight := PaintBox1.Canvas.TextHeight('X');
  MaxLines := Trunc((Alto - (RowHeight * 2)) / (RowHeight * 1.10));

  auxnivel := qroorden.FieldValues['inivel'];
  MaxMarcos := 0;
  MarcosLevel := 0;
  MaxLevel := 0;
  ListaObj.Clear;

  Pantalla.FirstWbs := qroorden.FieldValues['swbs'];    // Establecer el primer elemento de la ventana actual

  // Llenar la memoria con los datos de la estructura
  while Not qroorden.Eof do
  Begin
    if ListaObj.IndexOf(qroorden.FieldValues['swbs']) < 0 then
    Begin
      Indice := ListaObj.AddObject(qroorden.FieldValues['swbs'], TChartMarco.Create);
      TChartMarco(ListaObj.Objects[Indice]).x := 0;
      if varx=2 then
         TChartMarco(ListaObj.Objects[Indice]).y := ((qroorden.FieldValues['inivel']) * (Alto + MargenY))
      else TChartMarco(ListaObj.Objects[Indice]).y := ((qroorden.FieldValues['inivel']-auxnivel ) * (Alto + MargenY));
      TChartMarco(ListaObj.Objects[Indice]).Width := Ancho;
      TChartMarco(ListaObj.Objects[Indice]).Height := Alto;
      TChartMarco(ListaObj.Objects[Indice]).BColor := clBackground; //(qroorden.FieldValues['inivel'] + 7) * 200500;
      TChartMarco(ListaObj.Objects[Indice]).FColor := clNavy; //(qroorden.FieldValues['inivel'] + 7) * 200500;
      TChartMarco(ListaObj.Objects[indice]).level := qroorden.FieldValues['inivel'];
      TChartMarco(ListaObj.Objects[Indice]).Hijos := 0;
      TChartMarco(ListaObj.Objects[Indice]).HijosNivel := 0;
      TChartMarco(ListaObj.Objects[indice]).swbs:= qroorden.FieldValues['swbs'];
      TChartMarco(ListaObj.Objects[indice]).swbsanterior:= qroorden.FieldValues['swbsanterior'];
      TChartMarco(ListaObj.Objects[Indice]).Merx := -1;
      TChartMarco(ListaObj.Objects[Indice]).Mery := -1;
      TChartMarco(ListaObj.Objects[Indice]).Paquete := (qroorden.FieldValues['stipoactividad'] = 'Paquete');
      TChartMarco(ListaObj.Objects[Indice]).Cortes := GetLine(PaintBox1.Canvas.Font,Ancho,qroorden.FieldValues['mDescripcion'],MaxLines);
      TChartMarco(ListaObj.Objects[Indice]).Descripcion := qroorden.FieldValues['mDescripcion'];

      if MaxLevel < qroorden.FieldValues['inivel'] then MaxLevel := qroorden.FieldValues['inivel'];
      Inc(MaxMarcos);
    End
    Else
    Begin
      // Llenar cadena con información de error localizado en la estructura de las wbs para despues de cargar mostrar un mensaje al usuario para que esté enterado
    End;

    qroorden.Next;
  End;

  // Llenar la lista de información de hijos
  for Cuenta := 0 to MaxMarcos - 1 do
  Begin
    qroorden.Locate('swbs',TChartMarco(ListaObj.Objects[Cuenta]).swbs,[]);
    if qroorden.Found then
    Begin
      if TChartMarco(ListaObj.Objects[Cuenta]).Paquete then
      Begin
        Indice := ListaObj.IndexOf(qroorden.FieldValues['swbsanterior']);
        if Indice >= 0 then
          TChartMarco(ListaObj.Objects[Indice]).Hijos := TChartMarco(ListaObj.Objects[Indice]).Hijos + 1;

        for Pastilla := 0 to ListaObj.Count - 1 do
        Begin
          if TChartMarco(ListaObj.Objects[Pastilla]).Level + 1 = qroorden.FieldValues['inivel'] then
          Begin
            TChartMarco(ListaObj.Objects[Pastilla]).HijosNivel := TChartMarco(ListaObj.Objects[Pastilla]).HijosNivel + 1;
            if MarcosLevel < TChartMarco(ListaObj.Objects[Pastilla]).HijosNivel then MarcosLevel := TChartMarco(ListaObj.Objects[Pastilla]).HijosNivel;
          End;
        End;
      End;
    End;
  End;

  // Determinar el espacio necesario de acuerdo al numero máximo de marcos en un nivel
  EspMaximo := MarcosLevel * (Ancho + MargenX);
  if EspMaximo > PaintBox1.Width then
    // Si el espacio necesario para dibujar la grafica es superior al espacio en el paintbox, se debe disminuir el zoom para que quepa
    Pantalla.Zoom := Trunc(Trunc((PaintBox1.Width / EspMaximo) * 100) / Inter) * Inter;
  { Nota: Si el espacio necesario para la gráfica no supera el espacio del paintbox no es necesario aumentar el zoom debido a que los algoritmos
    del cálculo se encargan de ajustar los marcos al espacio disponible}

  if EspMaximo < PaintBox1.Width then
    EspMaximo := PaintBox1.Width;
  EspMinimo := 0;

  // Alimentar las barras de desplazamiento
  if sbHorizontal.Position > EspMaximo then
    sbHorizontal.Position := EspMaximo;
  sbHorizontal.Max := EspMaximo;
  sbHorizontal.Min := (EspMaximo * -1);
  sbHorizontal.LargeChange := Trunc(EspMaximo * 0.1);

  if sbVertical.Position > EspMaximo then
    sbVertical.Position := EspMaximo;
  sbVertical.Max := EspMaximo;
  sbVertical.Min := (EspMaximo * -1);
  sbVertical.LargeChange := Trunc(EspMaximo * 0.1);

  Pantalla.OldPosition := sbHorizontal.Position;

  // Calcular posición vertical de cada marco
  OldNivel := TChartMarco(ListaObj.Objects[0]).Level;
  OldWbs := '';
  for Cuenta := 0 to MaxMarcos - 1 do
  Begin
    if OldWbs <> TChartMarco(ListaObj.Objects[Cuenta]).swbsAnterior then
    Begin
      OldWbs := TChartMarco(ListaObj.Objects[Cuenta]).swbsAnterior;
      Ind := -1;
    End;

    qroorden.Locate('swbs',TChartMarco(ListaObj.Objects[Cuenta]).swbs,[]);
    if qroorden.Found then
    Begin
      // Verificar si se trata de un paquete
      if TChartMarco(ListaObj.Objects[Cuenta]).Paquete then
      Begin
        // Si es un paquete se debe calcular su posición de acuerdo al espacio ocupado por sus hijos
        If (TChartMarco(ListaObj.Objects[Cuenta]).Hijos = 0) Or (TChartMarco(ListaObj.Objects[Cuenta]).HijosNivel = 0) Then
        Begin
          Factor := MarcosLevel;
        End
        Else
          Factor := TChartMarco(ListaObj.Objects[Cuenta]).HijosNivel / TChartMarco(ListaObj.Objects[Cuenta]).Hijos;

        Espacio := EspMaximo / Factor;
        Espaciado := (Espacio - (Ancho + MargenX)) / 2;

        if OldNivel <> TChartMarco(ListaObj.Objects[Cuenta]).Level then
          AcumCol := 0;

        TChartMarco(ListaObj.Objects[Cuenta]).x := Trunc(AcumCol + Espaciado);

        // Calcular la columna para centrar el wbs
        Canvas.Font.Size := TamFuente;
        pcadena := Canvas.TextWidth(TChartMarco(ListaObj.Objects[Cuenta]).swbs);
        TChartMarco(ListaObj.Objects[Cuenta]).wbsCenter := trunc(((TChartMarco(ListaObj.Objects[Cuenta]).Width - pcadena)/2) + TChartMarco(ListaObj.Objects[Cuenta]).x );
        TChartMarco(ListaObj.Objects[Cuenta]).wbsHeight := Canvas.TextHeight(TChartMarco(ListaObj.Objects[Cuenta]).swbs);

        // Calcular coordenadas para línea de bajada de marcos
        TChartMarco(ListaObj.Objects[Cuenta]).Marx := TChartMarco(ListaObj.Objects[Cuenta]).x + Trunc(TChartMarco(ListaObj.Objects[Cuenta]).Width / 2);
        TChartMarco(ListaObj.Objects[Cuenta]).Mary := TChartMarco(ListaObj.Objects[Cuenta]).y + TChartMarco(ListaObj.Objects[Cuenta]).Height;

        // Calcular coordenadas de inicio de línea de predecesora
        PreInd := ListaObj.IndexOf(TChartMarco(ListaObj.Objects[Cuenta]).swbsanterior);
        if PreInd >= 0 then
        Begin
          TChartMarco(ListaObj.Objects[Cuenta]).Merx := TChartMarco(ListaObj.Objects[PreInd]).x + Trunc(TChartMarco(ListaObj.Objects[PreInd]).Width / 2);
          TChartMarco(ListaObj.Objects[Cuenta]).Mery := TChartMarco(ListaObj.Objects[PreInd]).y + TChartMarco(ListaObj.Objects[PreInd]).Height;
        End;

        AcumCol := AcumCol + Espaciado + Ancho + MargenX + Espaciado;
        OldNivel := TChartMarco(ListaObj.Objects[Cuenta]).Level;
      End;
    End;
  End;
  Screen.Cursor := crDefault;
end;


procedure TIntelChart.cbOrdenesChange(Sender: TObject);
begin
  qroListaOrdenes.Locate('snumeroorden',cbOrdenes.Text,[]);
  Calculos('',2);
  Dibuja;
end;

procedure TIntelChart.cbOrdenesEnter(Sender: TObject);
begin
    cbordenes.Color := global_color_entradaERP;
end;

procedure TIntelChart.cbOrdenesExit(Sender: TObject);
begin
    cbordenes.Color := global_color_salidaPU;
end;

procedure TIntelChart.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'ChartPro');
  if not BotonPermiso.imprimir then
   Begin
     SpeedButton1.Enabled:=False;
     SpeedButton2.Enabled:=False;
   End;
  // Abrir la lista de ordenes de trabajo
  qroListaOrdenes.ParamByName('contrato').asstring := global_contrato;
  qroListaOrdenes.Open;

  cbOrdenes.Items.Clear;
  while Not qroListaOrdenes.Eof do
  Begin
    cbordenes.Items.Add(qroListaOrdenes.FieldValues['snumeroorden']);
    qroListaOrdenes.Next;
  End;
  qroListaOrdenes.First;
  cbOrdenes.Text := qroListaOrdenes.FieldValues['snumeroorden'];
  //cbOrdenes.OnChange(Sender);

  Self.Caption := Self.Caption + ' - ' + Global_Contrato + ' ';
  calculos('',2);
  Dibuja;
end;

procedure TIntelChart.linknavegacionClick(Sender: TObject);
begin
    qroorden.Locate('swbs',TChartMarco(ListaObj.Objects[0]).swbs,[]);
    if qroorden.Found then
    Begin
      if qroorden.FieldValues['swbsanterior'] = '' then
        calculos(qroorden.FieldValues['swbsanterior'],2)
      Else
        calculos(qroorden.FieldValues['swbsanterior'],1);
    End;
    Dibuja;
end;

procedure TIntelChart.PaintBox1Click(Sender: TObject);
begin
  // Aplicar el foco al botón inferior
  Btn_Control.SetFocus;
end;

procedure TIntelChart.PaintBox1DblClick(Sender: TObject);
Var
  Cuenta: Integer;
  Sigue: Boolean;

  xTemp, wTemp, aTemp: Integer;
begin
  Sigue := True;
  Mouse.Down := False;
  Cuenta := 0;
  while (Sigue) And (Cuenta < MaxMarcos) do
  Begin
    xTemp := TChartMarco(ListaObj.Objects[Cuenta]).x;
    wTemp := TChartMarco(ListaObj.Objects[Cuenta]).Width;
    aTemp := Ajuste(xTemp + wTemp);
    if (Mouse.x < Ajuste(Pantalla.Margen.X + xTemp + wTemp)) And (Mouse.x > Ajuste(Pantalla.Margen.X + xTemp))
    And (Mouse.y < Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).y + TChartMarco(ListaObj.Objects[Cuenta]).Height)) And (Mouse.y > Ajuste(Pantalla.Margen.Y + TChartMarco(ListaObj.Objects[Cuenta]).y)) then
    Begin
      // Verificar si el doble click se hizo sobre el primero elemento de la ventana, en cuyo caso se deberá regresar al nivel anterior
      Mouse.Select := Cuenta;
      Mouse.Respaldado := False;
      Sigue := False;
      If TChartMarco(Listaobj.Objects[Cuenta]).swbs = Pantalla.FirstWbs Then
      Begin
        // Verificar que exista un nivel anterior...
        if TChartMarco(ListaObj.Objects[Cuenta]).swbsanterior <> '' then
          Calculos(TChartMarco(ListaObj.Objects[Cuenta]).swbsanterior,1);
      End
      Else
        // Verificar si cuenta con hijos
        if TChartMarco(ListaObj.Objects[Cuenta]).Hijos > 0 then
          calculos(TChartMarco(ListaObj.Objects[Cuenta]).swbs,1);

      Dibuja;
      pressventana := true;
      Sigue := False;
    End;
    Inc(Cuenta);
  End;
end;

procedure TIntelChart.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not pressventana then

     Mouse.Down := True;
  pressventana:=false;
end;

procedure TIntelChart.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
  Tempo, Lapso: Integer;
begin
  if Mouse.Down then
  Begin
    if Mouse.x <> x then
    Begin
      Lapso := Mouse.x - x;
      Tempo := sbHorizontal.Position + Lapso;
      if Tempo > sbHorizontal.Max then Tempo := sbHorizontal.Max;
      if Tempo < sbHorizontal.Min then Tempo := sbHorizontal.Min;
      sbHorizontal.Position := Tempo;
    End;

    if Mouse.y <> y then
    Begin
      Lapso := Mouse.y - y;
      Tempo := sbVertical.Position + Lapso;
      if Tempo > sbVertical.Max Then Tempo := sbVertical.Max;
      if Tempo < sbVertical.Min then Tempo := sbVertical.Min;
      sbVertical.Position := Tempo;
    End;
  End;

  Mouse.Oldx := Mouse.x;
  Mouse.Oldy := Mouse.y;
  Mouse.x := X;
  Mouse.y := Y;
end;

procedure TIntelChart.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Mouse.Down := False;
  Mouse.Select := -1;
  Mouse.Respaldado := False;
end;

procedure TIntelChart.PaintBox1Paint(Sender: TObject);
begin
  BitBlt(PaintBox1.Canvas.Handle,0,0,PaintBox1.Width,PaintBox1.Height,Imagen.Canvas.Handle,0,0,srcCopy);
end;

procedure TIntelChart.sbMenosClick(Sender: TObject);
begin
  if Btn_Control.Focused then
  Begin
    if Mouse.Wheel then
      Dec(Pantalla.Zoom)
    Else
      Dec(Pantalla.zoom,5);

    Mouse.Wheel := False;

    if Pantalla.zoom <= 0 then
      Pantalla.zoom := 1;
    lblZoom.Caption := IntToStr(Pantalla.zoom);
    Dibuja;
  End;
end;

procedure TIntelChart.sbVerticalChange(Sender: TObject);
begin
  Pantalla.Margen.Y := (sbVertical.Position * -1);
  Dibuja;
end;

procedure TIntelChart.SpeedButton1Click(Sender: TObject);
begin
  GenerarExcel(Imprimir); // Generar la gráfica hacia excel
end;

procedure TIntelChart.SpeedButton2Click(Sender: TObject);
begin
  GenerarExcel(Not Imprimir); // Generar la gráfica hacia excel
end;

procedure TIntelChart.sbHorizontalChange(Sender: TObject);
begin
  Pantalla.Margen.X := (sbHorizontal.Position * -1);
  Dibuja;
end;

procedure TIntelChart.sbMasClick(Sender: TObject);
begin
  if Btn_Control.Focused then
  Begin
    if Mouse.Wheel then
      Inc(Pantalla.zoom)
    Else
      Inc(Pantalla.zoom,5);
    if Pantalla.zoom = 6 then Pantalla.zoom := 5;


    Mouse.Wheel := False;

    if Pantalla.zoom > 200 then
      Pantalla.zoom := 200;

    lblZoom.Caption := IntToStr(Pantalla.zoom);
    Dibuja;
  End;
end;

end.
