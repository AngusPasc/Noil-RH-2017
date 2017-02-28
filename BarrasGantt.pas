unit BarrasGantt;

interface

Uses
  Windows, Forms, SysUtils, Classes, ZDataset, DB, ExtCtrls, Graphics, Grids,
  DBGrids, StdCtrls, Menus, Tabs, DateUtils, Frm_Propiedades, Messages, global,
  Controls ;
Type
  { Estructura para información de las barras }
  TBarra = Class
    Tipo: String;
    NumeroActividad: String;
    Duracion: Real;
    FechaInicio: Real;
    FechaTermino: Real;
    Color: Integer;
    X1,Y1,X2,Y2: Integer;   // Coordenadas de posicionamiento en pantalla de la barra
    InScreen: Boolean;
  Private
    Constructor Create;
    Destructor Destroy;
  End;

  TDatos = Class
    GeneralKey: String;
    ItemKey: String;
    NumeroActividad: String;
    TipoActividad: String;
    Wbs: String;
    WbsAnterior: String;
    Inicio: String;
    Termino: String;
    ColBarra: String;

    Constructor Create;
  End;

  { Estructura de elementos contenedores de barras }
  TGraficaGantt = Class
  Private
    Dibujar: Boolean;
    TimerCursor: TTimer;
    FirstInScreen: String;
    LastBarMouse: String;
    TipoBarra: Integer;
    IsDown: Boolean;
    ListaBarras: TStringList;
    Segmentos: TStringList;
    QueryGen: TZQuery;
    QueryData: TZQuery;
    IntNumItems: Integer;
    Grafico: TPaintBox;
    InicioGraph, TerminoGraph: Real;   // Fecha de inicio y término de área de gráfica
    Imagen: TImage;
    Forma: TForm;
    TabSet: TTabSet;
    Scroll: TScrollBar;
    Grid: TStringGrid;
    PintaCal: Boolean;
    Porcentaje: Real;
    AlturaBarra: Integer;
    MargenBarra: Integer;
    pAncho: Integer;
    pTab: Word;
    DatosBefore: TBarra;
    //ncWbs: String;                // Nombre del campo del wbs
    //ncWbsAnterior: String;        // Nombre del campo del Wbs anterior
    ncDuracion: String;           // Nombre del campo de duración de actividad
    ncColor: String;              // Nombre del campo del color de la barra
    Dif: Byte;                    // Porcentaje de degradado de las barras (0 = Color solido y 255 = Desde color original hasta blanco)
    pHoriz: Boolean;              // Dibujar líneas de división horizontales
    pVert: Boolean;               // Dibujar líneas de división verticales
    cFondo: Integer;              // Color del fondo de la gráfica
    cActividad: Integer;          // Color general de las barras de actividad
    cPaquete: Integer;            // Color general de las barras de paquete
    Especificos: Boolean;         // ¿Se deben usar los colores especificos de cada barra?
    MargenFecha: Integer;         // Espacio entre limite de espacio y fecha de calendario
    FormatoCal: Byte;             // Número de formato de calendario (Variable 'Formato')
    IniSem: Byte;                 // Día de inicio de semana para sus respectivos cortes (1 = Lunes... 7 = Domingo)
    PosX, PosY: Integer;          // Última posición del mouse
    NewPosX1, NewPosY1: Integer;  // Posición original de inicio de la barra seleccionada por el mouse
    NewPosX2, NewPosY2: Integer;  // Posición original de termino de la barra seleccionada por el mouse
    FirstCol: Integer;            // Primera columna dibujada en el grid para referenciar evento único de generación de barras
    totalregistros : integer;     // contador de registros desplegados en el grid

    Procedure LoadGenData(Query: TObject; Llave: String);
  Public

    Constructor Create;
    Destructor Destroy;

    Procedure OnTimer(Sender: TObject);
    Procedure SetQuery(Query: TZQuery; Llave: String); overload;
    Procedure SetQuery(Query: TZReadOnlyQuery; Llave: String); overload;
    Procedure LoadData(Query: TZQuery; TipoActividad, NumeroActividad, Llave, LLaveAnterior, Inicio, Termino, Duracion, ColorBarra: String); overload;
    Procedure LoadData(Query: TZReadOnlyQuery; TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra: String); overload;
    Procedure UploadBar(Query: TObject; TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra: String);
    Procedure SetGraphic(GanttForm: TForm; GanttGrid: TObject; GanttCanvas: TPaintBox; GanttTabSet: TTabSet; GanttScroll: TScrollBar);
    Procedure DrawCalendar;
    Procedure DrawBar(Rect: TRect; pWbs: String);
    Procedure SetScroll(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
    Procedure SetTab(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
    Procedure BarraChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
    Procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    Procedure BeforeChangeData(DataSet: TDataSet);
    Procedure AfterChangeData(DataSet: TDataSet);
    Procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    Procedure Mouseleave(Sender: TObject);
    Procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    Procedure MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    Procedure ActualizaPaquetes(DataSet: TDataSet);

    Property NumItems: Integer Read IntNumItems;
  End;

implementation

Uses
  Dialogs, Utilerias;

(*
Nota de Rangel:
  Estos valores constantes son los valores que deben de ir en la ventana de opciones de la gráfica la cual
  se va a activar con la cejilla identificada por '...' en la parte baja de la gráfica.
  Se pueden modificar a criterio para que se pueda apreciar su funcionamiento, solo resta analizar en que
  parte de la base de datos deberá ser grabada ya que no sé si estos valores deben ser registrados en las
  tablas a nivel de contrato o bien a nivel contrato-usuario; es decir que cada usuario pudiera tener una
  diferente visualización de las gráficas pudiendo modificarlas de manera independiente o bien que cuando
  un usuario modifique la visualización de la gráfica todos los usuarios la vean de la misma manera.
*)

Const
  gDefault = 1;           // Iniciar la visualización de esta gráfica en modo 3 (Mensual)
  ValMarFecha = 2;        // Ancho de margenes para fechas entre su bloque de espacios
  valEspec = False;   // Valor de color especifico de barras en verdadero

Var
  Formato: Array[1..14] Of String;
  Datos: TDatos;

Constructor TDatos.Create;
begin
  GeneralKey := '';
  ItemKey := '';
end;

Constructor TBarra.Create;
begin
  // Inicializar los valores de la barra para que sirvan de verificador cuando se trate de ejecutar el
  // evento afterchangedata sin haber pasado por el evento beforechangedata...
  Tipo := '';
  Duracion := 0;
  FechaInicio := 0;
  FechaTermino := 0;
  Color := 0;
  X1 := 0;
  Y1 := 0;
  X2 := 0;
  Y2 := 0;
  InScreen := False;
end;

Destructor TBarra.Destroy;
begin
  // Solo por procedimiento, ya que el objeto estará disponible durante toda la vida de esta ventana
  Tipo := '';
  Duracion := 0;
  FechaInicio := 0;
  FechaTermino := 0;
  Color := 0;
end;

Procedure TGraficaGantt.OnTimer(Sender: TObject);
Var
  Cuantos: Integer;
Begin
  Cuantos := -1;
  if PosX < 0 then
  Begin
    Cuantos := Trunc(PosX / 10);
    if Cuantos = 0 then Cuantos := -1;   // Mínimo debe avanzar de uno en uno
  End;
  if PosX > Grafico.Width then
  Begin
    Cuantos := Trunc((PosX - Grafico.Width) / 10);
    if Cuantos = 0 then Cuantos := 1;   // Mínimo debe avanzar de uno en uno
  End;
  
  // Si se ha desbordado el mouse se debe modificar la gráfica
  if Cuantos <> -1 then
  Begin
    Scroll.Position := Scroll.Position + Cuantos;
    SetScroll(Scroll,scLineUp,Cuantos);
  End;
End;

Procedure TGraficaGantt.SetScroll(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
Begin
  case ScrollCode of
    scLineUp:
    Begin
      if ScrollPos <= InicioGraph then
        TScrollBar(Sender).Min := TScrollBar(Sender).Min - TScrollBar(Sender).SmallChange;
      if ScrollPos >= TerminoGraph then
        TScrollBar(Sender).Max := TScrollBar(Sender).Max - TScrollBar(Sender).SmallChange;
    End;
    scLineDown:
    Begin
      if ScrollPos <= InicioGraph then
        TScrollBar(Sender).Min := TScrollBar(Sender).Min + TScrollBar(Sender).SmallChange;
      if ScrollPos >= TerminoGraph then
        TScrollBar(Sender).Max := TScrollBar(Sender).Max + TScrollBar(Sender).SmallChange;
    End;
    scPageUp:
    Begin
      if ScrollPos <= InicioGraph then
        TScrollBar(Sender).Min := TScrollBar(Sender).Min - TScrollBar(Sender).LargeChange;
      if ScrollPos >= TerminoGraph then
        TScrollBar(Sender).Max := TScrollBar(Sender).Max - TScrollBar(Sender).LargeChange;
    End;
    scPageDown:
    Begin
      if ScrollPos <= InicioGraph then
        TScrollBar(Sender).Min := TScrollBar(Sender).Min + TScrollBar(Sender).LargeChange;
      if ScrollPos >= TerminoGraph then
        TScrollBar(Sender).Max := TScrollBar(Sender).Max + TScrollBar(Sender).LargeChange;
    End;
    scPosition: ;
    scTrack: ;
    scTop: ;
    scBottom: ;
    scEndScroll: ;
  end;
  PintaCal := True;
  Grid.Repaint;
End;

Procedure TGraficaGantt.LoadGenData(Query: TObject; Llave: String);
Var
  Procede: Boolean;
Begin
  QueryGen := TZQuery(Query);
  Datos.GeneralKey := Llave;
  Procede := True;

  QueryGen.DisableControls;   // Deshabilitar los controls ligados a este query

  // Verificar que el query esté abierto
  if Not QueryGen.Active then
    Raise Exception.CreateFmt('El query especificado está cerrado o ya no está disponible : ''%s''', [TZQuery(Query).Name]);

  // Recorrer todo el query indicado para cargar todos sus elementos al vector de control
  Try
    QueryGen.First;   // Verficiar si está disponible el query
  Except
    Procede := False;
  End;

  if Procede then
  Begin
    While Not QueryGen.Eof Do
    Begin
      ListaBarras.Add(QueryGen.FieldValues[Llave]);
      QueryGen.Next;
    End;

    IntNumItems := ListaBarras.Count;   // Mover numero de items a variable de control
  End;

  QueryGen.First;
  QueryGen.EnableControls;    // Habilitar nuevamente los controles ligados a este query
End;

Constructor TGraficaGantt.Create;
Var
  T: Byte;
Begin
  TimerCursor := TTimer.Create(Nil);
  TimerCursor.Enabled := False;
  TimerCursor.Interval := 1;
  TimerCursor.OnTimer := Ontimer;
  IsDown := False;                      // El mouse no se encuentra pulsado
  PosX := -1;
  PosX := -1;
  ListaBarras := TStringList.Create;    // Inicializar objeto para almacenamiento de partidas
  Segmentos := TStringList.Create;
  QueryData := TZQuery.Create(Nil);
  Imagen := TImage.Create(Nil);
  Scroll := TScrollBar.Create(Nil);
  DatosBefore := TBarra.Create;
  IntNumItems := 0;
  Porcentaje  := 1;
  //ncWbs := '';
  ncDuracion := '';
  ncColor := '';
  Dibujar := True;
  FirstCol := -1;                       // No se ha pintado ningúna celda en el grid

  Imagen.Left := 0;
  Imagen.Top := 0;
  Imagen.Width := Screen.Width;
  Imagen.Height := Screen.Height;

  Datos := TDatos.Create;

  Formato[1]  := 'dddd dd mmmm yyyy';
  Formato[2]  := 'dddd dd mmmm yy';
  Formato[3]  := 'dddd dd/mm/yyyy';
  Formato[4]  := 'dddd dd/mm/yy';
  Formato[5]  := 'dddd dd/mm';
  Formato[6]  := 'dddd dd';
  Formato[7]  := 'dd/mmmm/yyyy';
  Formato[8]  := 'dd/mmmm/yy';
  Formato[9]  := 'dd/mmmm';
  Formato[10] := 'dd/mm/yyyy';
  Formato[11] := 'dd/mm/yy';
  Formato[12] := 'dd mmmm';
  Formato[13] := 'dd/mm';
  Formato[14] := 'dd';

  // Estos datos se debe guardar en alguna parte para que no se tengan que estar solicitando simpre que se inicie la ventana
  Dif := 126;              // Degradado para barras
  pHoriz := True;          // Dibujar líneas de división horizontales
  pVert := False;           // Dibujar líneas de división verticales
  cFondo := clMoneyGreen;  // Color del fondo de la gráfica
  cActividad := clBlue;    // Color de barras de actividad en azul
  cPaquete := 0;           // Color de barras de paquetes en negro
  FormatoCal := 3;         // Número de formato de calendario (Variable 'Formato')
  IniSem := 7;             // Día de inicio de semana para sus respectivos cortes (1 = Lunes... 7 = Domingo)
  Especificos := ValEspec;    // Utilizar colores especificos por default
  MargenFecha := ValMarFecha;
End;

Destructor TGraficaGantt.Destroy;
Begin
  FreeAndNil(TimerCursor);
  IntNumItems := -1;            // Numero de items sin valor
  FreeAndNil(ListaBarras);      // Liberar memoria de lista de barras
  FreeAndNil(Segmentos);
  QueryData.Destroy;
  Imagen.Destroy;   // Desocupar la memoria
  Scroll.Destroy;
  DatosBefore.Destroy;  // Eliminar la información existente de cualquier before pendiente
End;

Procedure TGraficaGantt.SetQuery(Query: TZQuery; Llave: String);
Begin
  // Barrer todos los elementos indicados por el query y cargarlos en memoria
  LoadGenData(Query, Llave);
End;

Procedure TGraficaGantt.SetQuery(Query: TZReadonlyQuery; Llave: String);
Begin
  // Barrer todos los elementos indicados por el query y cargarlos en memoria
  LoadGenData(Query, Llave);
End;

Procedure TGraficaGantt.Mouseleave(Sender: TObject);
begin
    Screen.Cursor := crDefault;
end;


Procedure TGraficaGantt.MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
Var
  Indice: Integer;
  Continua: Boolean;
  ParFormato: String;
Begin
  // Guardar la última posición por la cual se va desplazando el cursor del mouse
  if (TipoBarra = 1) Or (TipoBarra = 2) then
    NewPosX1 := NewPosX1 + (X - PosX);
  if (TipoBarra = 2) Or (TipoBarra = 3) then
    NewPosX2 := NewPosX2 + (X - PosX);

  PosX := X;
  PosY := Y;

  // Verifica si se encuentra seleccionada una barra de actividad con el mouse y el botón del mouse se encuentra pulsado
  if (LastBarMouse <> '') And (IsDown) then
  Begin
    // Eliminar la barra original y substituirla por la nueva
    Grafico.Canvas.Brush.Color := cFondo;
    Grafico.Canvas.Pen.Color := cFondo;
    Grafico.Canvas.Rectangle(0,NewPosY1,Grafico.Width,NewPosY2 + 1);

    Grafico.Canvas.Brush.Color := clRed;
    Grafico.Canvas.Pen.Color := clRed;

    // Verificar de donde se tomó la barra al hacer click
    case TipoBarra of
      1: Grafico.Canvas.Rectangle(NewPosX1,NewPosY1,TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).X2, NewPosY2);   // Cambiar inicio
      2: Grafico.Canvas.Rectangle(NewPosX1,NewPosY1,NewPosX2,NewPosY2);   // Cambiar terminación
      3: Grafico.Canvas.Rectangle(TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).X1,NewPosY1,NewPosX2,NewPosY2);   // Mover la barra completa
    end;
  End
  Else
  Begin
    Grafico.Hint := '';
    Grafico.ShowHint := False;
    LastBarMouse := '';
    // Verificar en que parte se está pasando el mouse
    TipoBarra := -1;
    Indice := Segmentos.IndexOf(FirstInScreen + ':1');
    if Indice >= 0 then
    Begin
      Continua := True;
      while (TBarra(Segmentos.Objects[Indice]).InScreen) And (Continua) And (Indice + 1 < Segmentos.Count) do
      Begin
        Continua := (Not ((X >= (TBarra(Segmentos.Objects[Indice]).X1)) And (X <= (TBarra(Segmentos.Objects[Indice]).X2)) And (Y >= (TBarra(Segmentos.Objects[Indice]).Y1)) And (Y <= (TBarra(Segmentos.Objects[Indice]).Y2))));
        if Continua then
          Inc(Indice);
      End;
      if (Continua) and (Segmentos.Count = Indice + 1) then
        Continua := (Not ((X >= (TBarra(Segmentos.Objects[Indice]).X1)) And (X <= (TBarra(Segmentos.Objects[Indice]).X2)) And (Y >= (TBarra(Segmentos.Objects[Indice]).Y1)) And (Y <= (TBarra(Segmentos.Objects[Indice]).Y2))));

      if Not Continua then
      Begin
        { Area de ajustes
          Mostrar la fecha y hora final a las 24 horas del día anterior para que coinsida con lo mostado en el grid
          debido a que inteligent no maneja horario }
        ParFormato := FormatDateTime('dd/mm/yyyy',TBarra(Segmentos.Objects[Indice]).FechaTermino - 1);
        ParFormato := ParFormato + ' 24:00';
        
        Grafico.Hint := TBarra(Segmentos.Objects[Indice]).Tipo + ': ' + TBarra(Segmentos.Objects[Indice]).NumeroActividad + #13 + 'Del  ' + FormatDateTime('dd/mm/yyyy hh:mm',TBarra(Segmentos.Objects[Indice]).FechaInicio) + #13 + 'Al  ' + ParFormato;
        Grafico.ShowHint := True;
        if TBarra(Segmentos.Objects[Indice]).Tipo = 'Paquete' then TipoBarra := 0 else TipoBarra := 1;  // Tipo de mouse
        if TipoBarra = 1 then
        Begin
          // Verificar la posición exacta del mouse
          TipoBarra := 0;
          if X < TBarra(Segmentos.Objects[Indice]).X1 + 4 then TipoBarra := 1;
          if X > TBarra(Segmentos.Objects[Indice]).X2 - 4 then TipoBarra := 3;
          if TipoBarra = 0 then TipoBarra := 2;
          LastBarMouse := Segmentos[Indice];
        End;
      End;
    End;

    { Modificar el puntero del mouse de acuerdo a los objetos en la gráfica }
    case TipoBarra of
      1: Screen.Cursor := crSizeWe;
      2: Screen.Cursor := crSize;
      3: Screen.Cursor := crSizeWe;
      Else Screen.Cursor := crDefault;
    end;
  End;
End;

Procedure TGraficaGantt.MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  nLlave, Posicion, WbsSel: String;
  Respaldo: TBitMap;
Begin
  // Verificar si el apuntador del mouse se encuentra sobre una barra
  if LastBarMouse <> '' then
  Begin
    IsDown := True;
    // Mover las coordenadas de la barra a las variables de reposicionamiento
    NewPosX1 := TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).X1;
    NewPosY1 := TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).Y1;
    NewPosX2 := TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).X2;
    NewPosY2 := TBarra(Segmentos.Objects[Segmentos.IndexOf(LastBarMouse)]).Y2;
    WbsSel := Segmentos[Segmentos.IndexOf(LastBarMouse)];
    WbsSel := Copy(WbsSel,1,Pos(':',WbsSel) - 1);

    PosX := X;
    PosY := Y;

    // Ocultar el movimiento del grid
    Respaldo := TBitMap.Create;
    Respaldo.Width := Grid.Width;
    Respaldo.Height := Grid.Height;
    BitBlt(Respaldo.Canvas.Handle,0,0,Grid.Width,Grid.Height,GetDC(GetDeskTopWindow),Forma.Left + (GetSystemMetrics(SM_CYEDGE) * 2),Forma.Top + GetSystemMetrics(SM_CYCAPTION) + (GetSystemMetrics(SM_CYEDGE) * 2),srcCopy);

    Grid.Visible := False;
    BitBlt(TForm(Forma).Canvas.Handle,0,0,Grid.Width,Grid.Height,Respaldo.Canvas.Handle,0,0,srcCopy);

    // Seleccionar el registro correspondiente a la barra clickada

    QueryGen.DisableControls;
    Posicion := QueryGen.Bookmark;
    while (QueryGen.FieldByName(Datos.Wbs).AsString <> FirstInScreen) And (QueryGen.FieldByName(Datos.Wbs).AsString <> WbsSel) And (Not QueryGen.Bof) do
      QueryGen.Prior;

    if QueryGen.Bof then
      QueryGen.First;

    // Recorrer hasta localizar el registro seleccionado
    while (QueryGen.FieldByName(Datos.Wbs).AsString <> WbsSel) And (Not QueryGen.Eof) do
      QueryGen.Next;

    if QueryGen.Eof then
      QueryGen.Bookmark := Posicion;

    QueryGen.EnableControls;
    Grid.Visible := True;
    FreeAndNil(Respaldo);

    // Activar el timer del cursor
    TimerCursor.Enabled := True;
  End;
End;

Procedure TGraficaGantt.MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  Duracion, Inicio, Termino: Real;
  Indice: Integer;
  nLlave, Posicion: String;
  Respaldo: TBitMap;
Begin
  TimerCursor.Enabled := False;  // Desactivar el timer del cursor

  // Registrar el cambio de la barra
  Indice := Segmentos.IndexOf(LastBarMouse);
  if Indice >= 0 then
  Begin
    Inicio := TBarra(Segmentos.Objects[Indice]).FechaInicio;
    Termino := TBarra(Segmentos.Objects[Indice]).FechaTermino;
    case TipoBarra of
      1: Inicio := Trunc((NewPosX1 / pAncho) + Scroll.Position);
      2: Begin
           Duracion := TBarra(Segmentos.Objects[Indice]).FechaTermino - TBarra(Segmentos.Objects[Indice]).FechaInicio;
           Inicio := Trunc((NewPosX1 / pAncho) + Scroll.Position);
           Termino := Inicio + Duracion;
         End;
      3: Termino := Trunc((NewPosX2 / pAncho) + Scroll.Position);
    end;

    // Verificar si no se enciman las fechas
    if Inicio < Termino then
    Begin
      if (Inicio <> QueryData.FieldByName(Datos.Inicio).AsFloat) Or ((Termino - 1) <> QueryData.FieldByName(Datos.Termino).AsFloat) then
      Begin
        TBarra(Segmentos.Objects[Indice]).FechaInicio := Inicio;
        TBarra(Segmentos.Objects[Indice]).FechaTermino := Termino;

        Try
          QueryData.Edit;
          QueryData.FieldByName(ncDuracion).AsFloat := Termino - Inicio;
          QueryData.FieldByName(Datos.Inicio).AsFloat := Inicio;
          QueryData.FieldByName(Datos.Termino).AsFloat := Termino - 1;
          QueryData.UpdateRecord;
          QueryData.Post;

          ActualizaPaquetes(QueryData);
        Except
          Raise Exception.CreateFmt('El query especificado está cerrado o ya no está disponible : ''%s''', [TZQuery(QueryData).Name]);
        End;
      End;
    End;
  End;

  IsDown := False;
  LastBarMouse := '';
  PosX := X;
  PosY := Y;

  Grid.Repaint;
End;

Procedure TGraficaGantt.SetGraphic(GanttForm: TForm; GanttGrid: TObject; GanttCanvas: TPaintBox; GanttTabSet: TTabSet; GanttScroll: TScrollBar);
Begin
  // Establecer al área gráfica en la cual se requiere que se muestre la gráfica de gantt
  Forma := GanttForm;
  Grid := TStringGrid(GanttGrid);        // Grid que tiene la estructura espejo para el diseño de grafica
  TabSet := TTabSet.Create(Nil);
  totalregistros := 0;

  Grafico := GanttCanvas;   // Área de gráfica
  TabSet := GanttTabSet;    // Selector de formato de gráfica
  Scroll := GanttScroll;    // Objeto que realiza el scroll horizontal de la imagen

  { Asignar el evento onchange del tabset }
  if Not Assigned(TabSet.OnChange) then
    TabSet.OnChange := BarraChange;

  TabSet.Tabs.Add('Dia');
  TabSet.Tabs.Add('Semana');
  TabSet.Tabs.Add('Quincena');
  TabSet.Tabs.Add('Mes');
  TabSet.Tabs.Add('Año');
  TabSet.Tabs.Add('Opciones...');
  TabSet.SelectedColor := clYellow;
  TabSet.TabIndex := gDefault;

  MargenBarra := Trunc(Grid.RowHeights[0] / 3);              // Espacio entre barras
  AlturaBarra := Trunc(Grid.RowHeights[0] - MargenBarra);    // Tamaño total de la barra
  Grafico.ShowHint := True;

    if Not Assigned(GanttCanvas.OnMouseMove) then
    GanttCanvas.OnMouseleave := Mouseleave;


  { Asignar evento de movimiento de mouse }
  if Not Assigned(GanttCanvas.OnMouseMove) then
    GanttCanvas.OnMouseMove := MouseMove;

  { Asignar evento de presionar un botón del mouse }
  if Not Assigned(GanttCanvas.OnMouseDown) then
    GanttCanvas.OnMouseDown := MouseDown;

  { Asignar evento de soltar el botón presionado del mouse }
  if Not Assigned(GanttCanvas.OnMouseUp) then
    GanttCanvas.OnMouseUp := MouseUp;

  { Asignar evento de activación de scrollbar }
  if Not Assigned(GanttScroll.OnScroll) then
    GanttScroll.OnScroll := SetScroll;

  { Asignar el evento para dibujar las celdas del query }
  if Not Assigned(TDbGrid(GanttGrid).OnDrawColumnCell) then
    TDbGrid(GanttGrid).OnDrawColumnCell := DrawColumnCell;
End;

Procedure TGraficaGantt.UploadBar(Query: TObject; TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra: String);
Var
  Cta, Indice: Integer;
  OldWbs: String;
begin
  // Respaldar los nombres de los campos que se cargan al objeto de las barras
  Datos.Wbs := Llave;
  Datos.WbsAnterior := LlaveAnterior;
  ncDuracion := Duracion;
  ncColor := ColorBarra;

  Datos.NumeroActividad := NumeroActividad;
  Datos.TipoActividad := TipoActividad;
  Datos.Inicio := Inicio;
  Datos.Termino := Termino;
  Datos.ColBarra := ColorBarra;

  // Recorrer todas las barras y ligarlas con sus generales
  QueryData := TZQuery(Query);
  QueryData.DisableControls;
  QueryData.First;

  Cta := 0;
  InicioGraph := 0;
  TerminoGraph := 0;
  OldWbs := '';

  while Not TZQuery(Query).Eof do
  Begin
    if (InicioGraph = 0) Or (InicioGraph > QueryData.FieldByName(Inicio).AsFloat) then InicioGraph := QueryData.FieldByName(Inicio).AsFloat;
    if TerminoGraph < QueryData.FieldByName(Termino).AsFloat then TerminoGraph := QueryData.FieldByName(Termino).AsFloat;

    // Meter la información de las barras
    if (OldWbs = '') Or (OldWbs <> QueryData.FieldByName(Llave).asstring) then
      Cta := 0;

    Inc(Cta);
    Indice := Segmentos.AddObject(QueryData.FieldByName(Llave).asstring + ':' + IntToStr(Cta), TBarra.Create);
    TBarra(Segmentos.Objects[Indice]).NumeroActividad := QueryData.FieldByName(NumeroActividad).AsString;
    TBarra(Segmentos.Objects[Indice]).Tipo := QueryData.FieldByName(TipoActividad).AsString;
    TBarra(Segmentos.Objects[Indice]).FechaInicio := QueryData.FieldByName(Inicio).AsFloat;
    TBarra(Segmentos.Objects[Indice]).FechaTermino := QueryData.FieldByName(Termino).AsFloat + 1;  // Fecha final hasta las 24 horas porque no tienen periodos parciales de dias
    TBarra(Segmentos.Objects[Indice]).Color := QueryData.FieldVAlues[ColorBarra];

    OldWbs := TZQuery(Query).FieldByName(Llave).asstring;
    TZQuery(Query).Next;
  End;

  { Área de ajustes:
      - Se debe considerar que el INTELLIGENT no maneja horas por consiguiente
        se deben ajustar todas las fechas finales para que terminen a las 24horas
        ya que tal como están terminan el día que indican a las 0horas, lo cual
        es igual al día anterior a las 24horas, perdiendose un día en este proceso }
  TerminoGraph := Trunc(TerminoGraph + 1);

  // Ajustar el inicio para que empieze a las 0 horas
  InicioGraph := Trunc(InicioGraph);

  Scroll.Max := Trunc(TerminoGraph);      // Barra por default con máximo hasta la última fecha de proceso
  Scroll.Position := Trunc(InicioGraph);  // Posición de la barra al inicio del periodo
  Scroll.Min := Trunc(InicioGraph);       // Rango mínimo de la barra
  Scroll.SmallChange := 1;                // Cambio de rango por día
  Scroll.LargeChange := Trunc((QueryData.RecordCount * 0.01) + 0.99);  // 1% del total de registros, si es menor a 1 se ajusta a este

  QueryData.First;
  QueryData.EnableControls;   // Deshabilitar los controls ligados a este query
end;

Procedure TGraficaGantt.LoadData(Query: TZQuery; TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra: String);
Begin
  // Cargar todas las barras correspondientes a la lista general
  UpLoadBar(Query, TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra);
End;

Procedure TGraficaGantt.LoadData(Query: TZReadOnlyQuery; TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra: String);
Begin
  // Cargar todas las barras correspondientes a la lista general
  UpLoadBar(Query, TipoActividad, NumeroActividad, Llave, LlaveAnterior, Inicio, Termino, Duracion, ColorBarra);
End;

Procedure TGraficaGantt.DrawCalendar;
Var
  Rect: TRect;
  Cuenta: Real;
  myFecha: TDateTime;
  Texto: String;
  Espacio: Integer;
  IniDesp: Integer;
  Procede: Boolean;
  OldFecha: Real;
  P: Word;
  IniFecha, ParSeg: Real;
  Ciclos: Byte;
  I, Arriba, NumB: Integer;
  NumSeg: Word;
  SegBloque: Real;
Begin
  FirstCol := -1; // Inicializar la primera columna no ha sido pintada en una nueva generación de la gráfica

  Imagen.Width := Grafico.Width;      // Imagen debe contener el mismo ancho que el área visual de gráfico
  Imagen.Height := TStringGrid(Grid).Height;  // El gráfico debe tener el mismo alto que el grid

  // Área de calendario
  Rect.Left := 0;
  Rect.Top := 0;
  Rect.Right := Imagen.Width;
  Rect.Bottom := TStringGrid(Grid).RowHeights[0] + 2;
  Imagen.Canvas.Brush.Color := TStringGrid(Grid).FixedColor;
  Imagen.Canvas.Pen.Color := clSilver;
  Imagen.Canvas.Rectangle(Rect);

  // Margen del área
  Imagen.Canvas.Pen.Color := clInfoBK;
  Imagen.Canvas.Brush.Color := clInfoBK;
  Imagen.Canvas.Rectangle(1,1,Imagen.Width - 1, 2);

  Imagen.Canvas.Pen.Color := clBlack;
  Imagen.Canvas.MoveTo(2,Grid.RowHeights[0] + 1);
  Imagen.Canvas.LineTo(Imagen.Width - 2, Grid.RowHeights[0] + 1);

  // Determinar el inicio del periodo actual
  IniDesp := 0;
  NumB := 1;
  IniFecha := Scroll.Position;
  if inifecha <= 1 then
      inifecha := date;

  case pTab of
    1:
    Begin
      // Determinar el número de ciclos que se deben realizar para ajustar al día de inicio de la semana
      If DayOfTheWeek(IniFecha) < IniSem then
        Ciclos := 7 - (IniSem - DayOfTheWeek(IniFecha))
      Else
        Ciclos := DayOfTheWeek(IniFecha) - IniSem;

      IniDesp := (pAncho * Ciclos) * -1;  // Posición exacta de inicio de semana (fuera de visual o no)
      IniFecha := IniFecha - Ciclos;      // Un número de días hacia atras hasta el inicio de semana
      NumB := 7;
    End;
    2:
    Begin
      // Determinar el número de ciclos que se deben realizar para ajustar al día de inicio de la quincena
       if (DayOfTheMonth(IniFecha) > 0) And (DayOfTheMonth(IniFecha) < 16) then
        Ciclos := DayOfTheMonth(IniFecha) - 1
      Else
        Ciclos := DayOfTheMonth(IniFecha) - 15;

      IniDesp := (pAncho * Ciclos) * -1;
      IniFecha := IniFecha - Ciclos;
      NumB := 13;
    End;
    3:
    Begin
      // Determinar el número de ciclos que se deben realizar para ajustar al día de inicio del mes
      Ciclos := DayOfTheMonth(IniFecha) - 1;

      IniDesp := (pAncho * Ciclos) * -1;
      IniFecha := IniFecha - Ciclos;
      NumB := 28;
    End;
    4:
    Begin
      // Determinar el número de ciclos que se deben realizar para ajustar al primer día del año
      Ciclos := DayOfTheYear(IniFecha) - 1;

      IniDesp := (pAncho * Ciclos) * -1;
      IniFecha := IniFecha - Ciclos;
      NumB := 365;
    End;
  end;

  // Colocar le calendario de acuerdo al scrollbar
  Cuenta := IniDesp;
  myFecha := IniFecha;
  OldFecha := myFecha;
  Imagen.Canvas.Font.Size := 7;
  Imagen.Canvas.Font.Color := clBlack;

  while Trunc(Cuenta) <= Grafico.Width do
  Begin
    // Definir si se ha de colocar la división de acuerdo al formato de gráfica seleccionado por el usuario
    case pTab of
      0:    // Diaria
      Begin
        Procede := True;
        NumSeg := 4;          // Dividir los boques en 4 numeros de segmentos
        SegBloque := pAncho / NumSeg; // Ancho de segmentos por bloque
      End;
      1:    // Semanal
      Begin
        Procede := (DayOfTheWeek(myFecha) = IniSem);  // Proceder al inicio de nueva semana o al iniciar la gráfica
        NumSeg := 7;
        SegBloque := pAncho;
      End;
      2:    // Quincenal
      Begin
        Procede := (DayOfTheMonth(myFecha) = 1) Or (DayOfTheMonth(myFecha) = 16);
        if DayOfTheMonth(myFecha) < 16 then
          NumSeg := 15
        Else
          NumSeg := 16 - (31 - DaysInMonth(myFecha));
        SegBloque := pAncho;
      End;
      3:    // Mensual
      Begin
        Procede := (MonthOf(OldFecha) <> MonthOf(myFecha)) Or (OldFecha = myFecha);
        NumSeg := DaysInMonth(myFecha);
        SegBloque := pAncho;
      End;
      4:    // Anual
      Begin
        Procede := (YearOf(OldFecha) <> YearOf(myFecha)) Or (OldFecha = myFecha);
        NumSeg := 12;
        SegBloque := 0;
      End;
      5:
      Begin
        Procede := False;   // No hacer nada...
      End;
    end;

    If Procede Then
    Begin
      Texto := FormatDateTime(Formato[FormatoCal], myFecha);   // Obtener cadena de fecha

      // Determinar espaciado requerido para centrar el texto solo en caso de dias, meses y años
      if (pTab = 0) Or (pTab = 3) Or (pTab = 4) then
      Begin
        Espacio := Imagen.Canvas.TextWidth(Texto);
        Espacio := Trunc((pAncho + MargenFecha - Espacio) / 2);
        if Espacio < 0 then Espacio := 0;
      End
      Else Espacio := 0;

      // Colocar el texto de la fecha
      Imagen.Canvas.Brush.Color := Grid.FixedColor;
      Imagen.Canvas.Pen.Color := clBlack;
      Imagen.Canvas.TextOut(Trunc(Cuenta) + Espacio + MargenFecha,3,Texto);

      // Colocar lineas de división de bloque
      ParSeg := 0;
      Imagen.Canvas.Pen.Color := clBlack;
      Imagen.Canvas.Brush.Color := clBlack;

      for P := 1 to NumSeg - 1 do
      Begin
        // Ojo, si es grafica anual el número de segmentos por bloque es según los dias del mes
        if pTab = 4 then
          SegBloque := DaysInMonth(IniFecha);

        ParSeg := ParSeg + SegBloque;

        // Verificar si es necesario detectar el inicio de semana (solo para gráficas quincenales y mensuales)
        Arriba := 1;
        if (pTab = 2) Or (pTab = 3) then
        Begin
          if (DayOfTheWeek(myFecha + P) = IniSem) Or (DayOfTheWeek(myFecha + P - 1) = IniSem) then
            Arriba := (-1);
        End;
        if pTab = 4 then
        Begin
          if MonthOf(OldFecha) <> MonthOf(myFecha) then
            Arriba := (-1);
        End;

        // Mostrar las líneas de división
        if pvert then
        begin
        if totalregistros >= querydata.RecordCount then
        begin
           Imagen.Canvas.MoveTo(Trunc(Cuenta + ParSeg),Grid.RowHeights[0] + Arriba);
           Imagen.Canvas.LineTo(Trunc(Cuenta + ParSeg),((Grid.RowHeights[0] + 1) * (totalregistros + 1 )));
        end
        else
        begin
           Imagen.Canvas.MoveTo(Trunc(Cuenta + ParSeg),Grid.RowHeights[0] + Arriba);
           Imagen.Canvas.LineTo(Trunc(Cuenta + ParSeg),((Grid.RowHeights[0] + 1) * (  trunc(Grafico.Height / (Grid.RowHeights[0] + 1)))));
        end;
        end
        else
        begin
           Imagen.Canvas.MoveTo(Trunc(Cuenta + ParSeg),Grid.RowHeights[0] + Arriba);
           Imagen.Canvas.LineTo(Trunc(Cuenta + ParSeg),(Grid.RowHeights[0] + 1) + 5 );
        end;

      End;




      if pvert then
      begin

      if totalregistros >= querydata.RecordCount then
      begin
         Imagen.Canvas.Pen.Color := clInfoBk;
         Imagen.Canvas.MoveTo(Trunc(Cuenta) - 1, 1);
         Imagen.Canvas.LineTo(Trunc(Cuenta) - 1, ((Grid.RowHeights[0] + 1) * (totalregistros + 1)));

         Imagen.Canvas.Pen.Color := clSilver;
         Imagen.Canvas.MoveTo(Trunc(Cuenta), 2);
         Imagen.Canvas.LineTo(Trunc(Cuenta), ((Grid.RowHeights[0] + 1) * (totalregistros + 1)));
      end
      else
      begin
         Imagen.Canvas.Pen.Color := clInfoBk;
         Imagen.Canvas.MoveTo(Trunc(Cuenta) - 1, 1);
         Imagen.Canvas.LineTo(Trunc(Cuenta) - 1, ((Grid.RowHeights[0] + 1) * (  trunc(Grafico.Height / (Grid.RowHeights[0] + 1)))));

         Imagen.Canvas.Pen.Color := clSilver;
         Imagen.Canvas.MoveTo(Trunc(Cuenta), 2);
         Imagen.Canvas.LineTo(Trunc(Cuenta), ((Grid.RowHeights[0] + 1) * (  trunc(Grafico.Height / (Grid.RowHeights[0] + 1)))));
      end;
      end
      else
      begin
         Imagen.Canvas.Pen.Color := clInfoBk;
         Imagen.Canvas.MoveTo(Trunc(Cuenta) - 1, 1);
         Imagen.Canvas.LineTo(Trunc(Cuenta) - 1, (Grid.RowHeights[0] + 1) + 5);

         Imagen.Canvas.Pen.Color := clSilver;
         Imagen.Canvas.MoveTo(Trunc(Cuenta), 2);
         Imagen.Canvas.LineTo(Trunc(Cuenta), (Grid.RowHeights[0] + 1) + 5);
      end;


//  showmessage(inttostr(totalregistros));
    End;

    Cuenta := Cuenta + pAncho;    // Avanzar al límite del bloque el cual marca el inicio del nuevo

    OldFecha := myFecha;
    myFecha := myFecha + 1;

  End;
End;

Procedure TGraficaGantt.DrawBar(Rect: TRect; pWbs: String);
Var
  Cta: Integer;
  Sigue: Boolean;
  Datos: TBarra;
  Duracion: Real;
  P, Indice, gInicio, Color, Altura, AltoB: Integer;
  Puntos: TPoint;
  ri,gi,bi: integer;   // (Red, Green, Blue) del color inicial indicado para la barra
  rf,gf,bf: integer;   // (Red, Green, Blue) del color final para la barra (Blanco)
  pr,pg,pb: double;    // (Red, gree, blue) Parametros para degradado
  r,g,b: integer;
  Y: integer;
  Incre: Byte;
  ScreenRect: TRect;
Begin
  if Dibujar then
  Begin
    // Registrar la primera actividad que se muestra en pantalla
    if Grid.RowHeights[0] + 1 = Rect.Top then
  Begin
    // Eliminar toda la información previa de visualización
    Indice := Segmentos.IndexOf(FirstInScreen + ':1');
    totalregistros := 0;
    Imagen.Canvas.Pen.Color := clInfoBK;
    Imagen.Canvas.Brush.Color := clInfoBK;
    Imagen.Canvas.Rectangle(0,0,Imagen.Width , imagen.Height  );

    if Indice >= 0 then
      while TBarra(Segmentos.Objects[Indice]).InScreen do
      Begin
        TBarra(Segmentos.Objects[Indice]).X1 := 0;
        TBarra(Segmentos.Objects[Indice]).Y1 := 0;
        TBarra(Segmentos.Objects[Indice]).X2 := 0;
        TBarra(Segmentos.Objects[Indice]).Y2 := 0;
        TBarra(Segmentos.Objects[Indice]).InScreen := False;
      End;

    FirstInScreen := pWbs;
  End;

  // Verificar si está presente la barra de desplazamiento vertical
  Incre := 0;
  if (TStringGrid(Grid).Scrollbars = ssBoth) Or (TStringGrid(Grid).Scrollbars = ssHorizontal) then
    Incre := TStringGrid(Grid).RowHeights[0];

{  Imagen.Width := Grafico.Width;
  Imagen.Height := Grafico.Height;
}
  // Borrar la información anterior
  Imagen.Canvas.Brush.Color := cFondo;

  // Revisar si se deben mostrar las lineas de división horizontales
  If pHoriz Then
    Imagen.Canvas.Pen.Color := clSilver   // Mostrar división horizontal
  Else
    Imagen.Canvas.Pen.Color := cFondo;  // No mostrar división horizontal

  Imagen.Canvas.Brush.Style := bsSolid;
  Imagen.Canvas.Rectangle(0, Rect.Top, Grafico.Width, Rect.Top + MargenBarra + AlturaBarra + 2);

  // Localizar la información de los segmentos de esta wbs
  Cta := 1;
  Sigue := True;
  while Sigue do
  Begin
    Indice := Segmentos.IndexOf(pWbs + ':' + IntToStr(Cta));
    Sigue := Indice <> -1;
    if Sigue then
    Begin
      Imagen.Canvas.Brush.Color := clRed;
      Imagen.Canvas.Pen.Color := clBlack;

      Datos := TBarra(Segmentos.Objects[Indice]); // Obtener información del segmento de barra

      // Calcular las coordenadas de la barra
      Duracion := Datos.FechaTermino - Datos.FechaInicio;
      GInicio := ((Trunc(Datos.FechaInicio - Scroll.Position)) * pAncho);

      // Definir la barra con los colores prestablecidos
//      especificos := false;
//    if datos.color <> 0 then   // define si existe un color determinado en la barra o si se aplicaran los colores predeterminados, siendo el valor 0 el color predeterminado
//        especificos := true;

      if Especificos and (datos.color <> 0) then
      Begin
        Imagen.Canvas.Brush.Color := escolor(Datos.Color);
        Imagen.Canvas.Pen.Color := escolor(Datos.Color);
      End
      Else
      Begin
        If Datos.Tipo = 'Actividad' Then
        Begin
          Imagen.Canvas.Brush.Color := cActividad;
          Imagen.Canvas.Pen.Color := cActividad;
        End
        Else
        Begin
          Imagen.Canvas.Brush.Color := cPaquete;
          Imagen.Canvas.Pen.Color := cPaquete;
        End;
      End;

      // Verificar tipo de barra para calcular alto de barra
      if Datos.Tipo = 'Actividad' then
      Begin
        // Poner las barras de actividades en forma degradada
        AltoB := AlturaBarra;

        // Tomar los valores iniciales desde el registro de la barra
        ri := GetRValue(Imagen.Canvas.Brush.Color);
        gi := GetGValue(Imagen.Canvas.Brush.Color);
        bi := GetBValue(Imagen.Canvas.Brush.Color);

        // Determinar los valores finales del degradado (La variable Dif permite cambiar el porcentaje de degradado)
        if ri + Dif > 255 then rf := 255 else rf := ri + Dif;
        if gi + Dif > 255 then gf := 255 else gf := gi + Dif;
        if bi + Dif > 255 then bf := 255 else bf := bi + Dif;

        // Determinar el punto o color intermedio del degradado en base al los colores iniciales y finales
        pr := (rf - ri) / (AltoB / 2);
        pg := (gf - gi) / (AltoB / 2);
        pb := (bf - bi) / (AltoB / 2);

        // Pintar con líneas la barra por dos mitades
        for Y := 0 to (AltoB div 2) do
        begin
          // Tomar colores para la línea
          r := ri + round(pr * Y);
          g := gi + round(pg * Y);
          b := bi + round(pb * Y);

          Imagen.Canvas.Pen.Color := RGB(r,g,b);   // Establecer color para esta línea

          // Pintar la parte superior
          Imagen.Canvas.MoveTo(GInicio,Rect.Top + MargenBarra + Y);
          Imagen.Canvas.LineTo(GInicio + Trunc(Duracion * pAncho),Rect.Top + MargenBarra + Y);

          // Pintar la parte inferior
          Imagen.Canvas.MoveTo(GInicio,Rect.Top + MargenBarra + AltoB - Y);
          Imagen.Canvas.LineTo(GInicio + Trunc(Duracion * pAncho),Rect.Top + MargenBarra + AltoB - Y);
        End;
      End
      else
      Begin
        // Poner las barras de paquetes en forma sólida
        AltoB := Trunc(AlturaBarra / 2);

        Imagen.Canvas.Rectangle(GInicio, Rect.Top + MargenBarra, GInicio + Trunc(Duracion * pAncho), Rect.Top + MargenBarra + AltoB);
        //Imagen.Canvas.RoundRect(GInicio, Rect.Top + MargenBarra, GInicio + Trunc(Duracion * pAncho), Rect.Top + MargenBarra + AltoB,6,6);
      End;

      // Colocar los indicadores de inicio y terminación de paquetes entregables
      if Datos.Tipo <> 'Actividad' then
      Begin
        { Apuntador izquierdo}  Imagen.Canvas.Polygon([Point(GInicio,Rect.Top + MargenBarra), Point(GInicio + AlturaBarra,Rect.Top + MargenBarra {+ AltoB}), Point(GInicio,Rect.Top + MargenBarra + AlturaBarra {- Trunc(MargenBarra / 2)})]);
        { Apuntador derecho}    Imagen.Canvas.Polygon([Point((GInicio + Trunc(Duracion * pAncho)) - AlturaBarra, Rect.Top + MargenBarra {+ AltoB}), Point((GInicio + Trunc(Duracion * pAncho)), Rect.Top + MargenBarra {+ AltoB}), Point((GInicio + Trunc(Duracion * pAncho)), Rect.Top + MargenBarra + AlturaBarra)]);
      End;

      // Registrar información de la posición de la barra
      TBarra(Segmentos.Objects[Indice]).InScreen := True;
      TBarra(Segmentos.Objects[Indice]).X1 := gInicio;
      TBarra(Segmentos.Objects[Indice]).Y1 := Rect.Top + MargenBarra;
      TBarra(Segmentos.Objects[Indice]).X2 := GInicio + Trunc(Duracion * pAncho);
      TBarra(Segmentos.Objects[Indice]).Y2 := Rect.Top + MargenBarra + AltoB;
    End;
    Inc(Cta);
  End;
  
  // Verificar si ya se cargó toda la gráfica
  SystemParametersInfo(SPI_GETWORKAREA, 0, @ScreenRect, 0);
  totalregistros := totalregistros + 1;
  if (Rect.Bottom + Incre + (Rect.Bottom - Rect.Top) > Grafico.Height)  or (totalregistros >= querydata.RecordCount) {Or ((Forma.Top + Rect.Bottom + (Rect.Bottom - Rect.Top) + (ScreenRect.Bottom - ScreenRect.Top) > Screen.Height) and (Not (Rect.Bottom + Incre + (Rect.Bottom - Rect.Top) > Grafico.Height)))} then
//  if (totalregistros >= int(Grafico.Height / (Grid.RowHeights[0] + 1)))  or (querydata.RecordCount = totalregistros ) then {Or ((Forma.Top + Rect.Bottom + (Rect.Bottom - Rect.Top) + (ScreenRect.Bottom - ScreenRect.Top) > Screen.Height) and (Not (Rect.Bottom + Incre + (Rect.Bottom - Rect.Top) > Grafico.Height)))}
  Begin
    DrawCalendar;
    BitBlt(Grafico.Canvas.Handle,0,0,Imagen.Width,Imagen.Height,Imagen.Canvas.Handle,0,0,SRCCOPY);  // Mover la imagen diseñada hacia el área grafica
    totalregistros := 0;
  End;
  End;
End;

Procedure TGraficaGantt.SetTab(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
var
  t: Integer;
Begin
  // Analizar que número de tab se seleccionó
  case NewTab of
    0:    // Gráfica diária
    Begin
      pAncho := 100;
      pTab := NewTab;
    End;
    1:    // Semanal
    Begin
      pAncho := 19;
      pTab := NewTab;
    End;
    2:    // Quincenal
    Begin
      pAncho := 12;
      pTab := NewTab;
    End;
    3:    // Mensual
    Begin
      pAncho := 7;
      pTab := NewTab;
    End;
    4:    // Anual
    Begin
      pAncho := 1;
      pTab := NewTab;
    End;
    5:
    Begin
      for t := 1 to 14 do
        FrmPropiedades.pFormato[T] := FormatDateTime(Formato[T],25345);
      FrmPropiedades.pTipoGrafica := gDefault;
      FrmPropiedades.pHorizontal := pHoriz;
      FrmPropiedades.pVertical := pvert;
      FrmPropiedades.pColorFondo := cFondo;
      FrmPropiedades.pColorActividad := cActividad;
      FrmPropiedades.pColorPaquete := cPaquete;
      FrmPropiedades.pEspecifico := Especificos;
      FrmPropiedades.pMargenFecha := MargenFecha;
      FrmPropiedades.pInicioSemana := IniSem;
      FrmPropiedades.pDegradado := Dif;
      FrmPropiedades.pSelCal := FormatoCal - 1;
      // Calcular la posición de acuerdo a pantalla del tabset para posicionar la ventana
//      FrmPropiedades.Top := Forma.Top + TabSet.Top + GetSystemMetrics(SM_CXEDGE) + GetSystemMetrics(SM_CXBORDER) + GetSystemMetrics(SM_CYCAPTION) - FrmPropiedades.Height;
//      FrmPropiedades.Left := Forma.Left + GetSystemMetrics(SM_CYEDGE) + GetSystemMetrics(SM_CYBORDER) + Grafico.Left;
      FrmPropiedades.ShowModal;

      if FrmPropiedades.cSalida then
      Begin
        Dif := FrmPropiedades.pDegradado;
        pHoriz := FrmPropiedades.pHorizontal;
        pVert := FrmPropiedades.pVertical;
        cFondo := FrmPropiedades.pColorFondo;
        cActividad := FrmPropiedades.pColorActividad;
        cPaquete := FrmPropiedades.pColorPaquete;
        Especificos := FrmPropiedades.pEspecifico;
        MargenFecha := FrmPropiedades.pMargenFecha;
        IniSem := FrmPropiedades.pInicioSemana;

        FormatoCal := FrmPropiedades.pSelCal + 1;
      End;

      AllowChange := False;   // Prohibir la selección de esta cejilla
    End;
  end;

  Grid.Repaint;   // Volver a pintar despues de las modificaciones
End;

Procedure TGraficaGantt.BarraChange(Sender: TObject; NewTab: Integer; var AllowChange: Boolean);
Begin
  SetTab(Sender, NewTab, AllowChange);
End;

procedure TGraficaGantt.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FirstCol < 0 then
    FirstCol := DataCol;

  if DataCol = FirstCol then
    DrawBar(Rect, QueryGen.FieldByName(Datos.Wbs).AsString);
end;

Procedure TGraficaGantt.BeforeChangeData(DataSet: TDataSet);
Begin
  // Verificar que la modificación provenga del query secundario
  if DataSet.Name <> QueryData.Name then
    Raise Exception.CreateFmt('Solo es posible validar en este modulo las modificaciones realizadas en el query secundario (%s) debido a que solo los registros del query secundario son registrados para la presentación de las barras de la grafica de gantt.', [QueryData.Name]);

  // Cargar los datos originales del dataset al objeto destinado para ello
  DatosBefore.Tipo := DataSet.FieldByName(Datos.TipoActividad).AsString;
  DatosBefore.Duracion := DataSet.FieldByName(ncDuracion).AsFloat;
  DatosBefore.FechaInicio := DataSet.FieldByName(Datos.Inicio).AsFloat;
  DatosBefore.FechaTermino := DataSet.FieldByName(Datos.Termino).AsFloat;

  DatosBefore.Color := DataSet.FieldByName(ncColor).AsInteger;
End;

Procedure TGraficaGantt.AfterChangeData(DataSet: TDataSet);
Var
  C, Indice: Integer;
  Continua: Boolean;
  fInicio, fTermino: Real;
  WbsAnterior, IniTipo: String;
  tQuery: TZQuery;
  vInicio, vTermino: Real;
Begin
  if Dibujar then
  Begin
    // Verificar que la modificación provenga del query secundario
    if DataSet.Name <> QueryData.Name then
      Raise Exception.CreateFmt('Solo es posible validar en este modulo las modificaciones realizadas en el query secundario (%s) debido a que solo los registros del query secundario son registrados para la presentación de las barras de la grafica de gantt.', [QueryData.Name]);

    {***********************************************************************
     Inicia rutina de verificación de datos por EDICIÓN de registro
     ***********************************************************************}
    If QueryGen.State = dsEdit Then
    Begin
      // Validar antes de ejecutar el afterchangedata que se haya ejecutado previamente el beforechangedata
      if DatosBefore.FechaInicio = 0 then
        Raise Exception.CreateFmt('Error de secuencia de comandos. Los datos utilizados para validar una modificación de registro deben provenir del query secundario (%s)', [QueryData.Name]);

      if  DatosBefore.color <> DataSet.FieldByName(datos.colbarra).AsFloat then
      begin
          C := 1;
          Continua := True;
          while (C < Segmentos.Count) do
          Begin
            Indice := Segmentos.IndexOf(DataSet.FieldByName(Datos.Wbs).AsString + ':' + IntToStr(C));
            If Indice >= 0 then
              // Datos localizados, analizar si se trata de los que se están buscando
              TBarra(Segmentos.Objects[Indice]).Color := DataSet.FieldByName(ncColor).AsInteger;

            Inc(C);
          End;

      end;

      // Si existen datos de compración analizar que se hayan hecho cambios
      if (DatosBefore.Duracion <> DataSet.FieldByName(ncDuracion).AsFloat) Or (DatosBefore.FechaInicio <> DataSet.FieldByName(Datos.Inicio).AsFloat) Or (DatosBefore.FechaTermino <> DataSet.FieldByName(Datos.Termino).AsFloat) then
      Begin
        If DatosBefore.Duracion <> DataSet.FieldByName(ncDuracion).AsFloat Then
          DataSet.FieldByName(Datos.Termino).AsFloat := (DataSet.FieldByName(Datos.Inicio).AsFloat + DataSet.FieldByName(ncDuracion).AsFloat) - 1
        Else
          DataSet.FieldByName(ncDuracion).AsFloat := (DataSet.FieldByName(Datos.Termino).AsFloat - DataSet.FieldByName(Datos.Inicio).AsFloat) + 1;

        // Verificar que no se esté intentando modificar un paquete de actividades en las fechas de inicio y terminación
        if (DataSet.FieldByName(Datos.TipoActividad).AsString <> 'Paquete') then
        Begin
          // Ante la modificación de un campo de fecha se debe localizar el elemento en la memoria para cambiar los datos originales por los nuevos
          C := 1;
          Continua := True;
          while (C < Segmentos.Count) And (Continua) do
          Begin
            Indice := Segmentos.IndexOf(DataSet.FieldByName(Datos.Wbs).AsString + ':' + IntToStr(C));
            If Indice >= 0 then
              // Datos localizados, analizar si se trata de los que se están buscando
              Continua := Not ((TBarra(Segmentos.Objects[Indice]).FechaInicio = DatosBefore.FechaInicio) And (TBarra(Segmentos.Objects[Indice]).FechaTermino = DAtosBefore.FechaTermino + 1))
            Else
            Begin
              Continua := False;  // Se han terminado los elementos correspondientes a este Wbs, termina el ciclo sin localizar datos
              C := -1;  // Indicar de ausencia de datos buscados
            End;
            If Continua Then Inc(C);
          End;
          // Modificar los datos dentro de la memoria de la gráfica
          if C > 0 then
          Begin
            TBarra(Segmentos.Objects[Indice]).Tipo := DataSet.FieldByName(Datos.TipoActividad).AsString;
            TBarra(Segmentos.Objects[Indice]).Duracion := DataSet.FieldByName(ncDuracion).AsFloat;
            TBarra(Segmentos.Objects[Indice]).FechaInicio := DataSet.FieldByName(Datos.Inicio).AsFloat;

            { ********* AJUSTE POR FALTA DE HORARIO EN CAMPOS DE FECHA FINAL
              Agregar un día a la fecha final porque no cuentan con horas }
            TBarra(Segmentos.Objects[Indice]).FechaTermino := DataSet.FieldByName(Datos.Termino).AsFloat + 1;

            TBarra(Segmentos.Objects[Indice]).Color := DataSet.FieldByName(ncColor).AsInteger;

            ActualizaPaquetes(DataSet); // Actualizar periodos de paquetes en caso de ser necesario
          End;
        End
        Else
        Begin
          DataSet.FieldByName(ncDuracion).AsFloat := DatosBefore.Duracion;
          DataSet.FieldByName(Datos.Inicio).AsFloat := DatosBefore.FechaInicio;
          DataSet.FieldByName(Datos.Termino).AsFloat := DatosBefore.FechaTermino;
          {ShowMessage('No es posible modificar la fecha de inicio y/o terminación de un paquete de actividades.' + #13 + #13 + 'El periodo de un paquete de actividades se modifica en base a los periodos de las actividades que el paquete contenga.');}
        End;
      End;
    End    // Termina rutina de validación de datos por edición de registro
    Else
    Begin
      {**********************************************************************
       Validación de registros de datos por INSERCIÓN
       ********************************************************************** }
      Indice := Segmentos.AddObject(QueryData.FieldByName(Datos.GeneralKey).asstring + ':1', TBarra.Create);
      TBarra(Segmentos.Objects[Indice]).NumeroActividad := DataSet.FieldByName(Datos.NumeroActividad).AsString;
      TBarra(Segmentos.Objects[Indice]).Tipo := DataSet.FieldByName(Datos.TipoActividad).AsString;
      TBarra(Segmentos.Objects[Indice]).FechaInicio := DataSet.FieldByName(Datos.Inicio).AsFloat;
      TBarra(Segmentos.Objects[Indice]).FechaTermino := DataSet.FieldByName(Datos.Termino).AsFloat + 1;  // Fecha final hasta las 24 horas porque no tienen periodos parciales de dias
      TBarra(Segmentos.Objects[Indice]).Color := DataSet.FieldVAlues[Datos.ColBarra];

      ActualizaPaquetes(DataSet); // Actualizar periodos de paquetes en caso de ser necesario
    End;
  End;
End;

Procedure TGraficaGantt.ActualizaPaquetes(DataSet: TDataSet);
Var
  tQuery: TZQuery;
  WbsAnterior: String;
  vInicio, vTermino: Real;
  Indice: Integer;
Begin
  // Verificar si esta modificación afecta a barras concentradoras
  tQuery := TZQuery.Create(Nil);
  tQuery.Connection := QueryGen.Connection;

  // Obtener una copia de la información del programa
  tQuery.SQL.Text := QueryGen.SQL.Text;
  tquery.Params.ParamByName('contrato').DataType := ftstring;
  tquery.Params.ParamByName('contrato').Value := Global_Contrato;
  tquery.Params.ParamByName('convenio').DataType := ftstring;
  tquery.Params.ParamByName('convenio').Value := Global_Convenio;
  tQuery.Open;

//  showmessage(QueryGen.SQL.Text);
//  showmessage(inttostr(tquery.RecordCount));
  WbsAnterior := Dataset.FieldByName(Datos.WbsAnterior).AsString;

  while (WbsAnterior <> '0') and (WbsAnterior <> '') do
  Begin
    // Filtrar las partidas de los paquetes afectados
    tQuery.Filter := Datos.WbsAnterior + ' = ' + QuotedStr(WbsAnterior);

//    showmessage(tQuery.Filter);
    tQuery.Filtered := True;
    tQuery.First;
    vInicio := Dataset.FieldByName(Datos.Inicio).AsFloat;
    vTermino := DataSet.FieldByName(Datos.Termino).AsFloat;
    While Not tQuery.Eof Do
    Begin
      if tQuery.FieldByName(Datos.Wbs).AsString <> DataSet.FieldByName(Datos.Wbs).AsString then
      Begin
        If (vInicio = 0) Or (vInicio > tQuery.FieldByName(Datos.Inicio).AsFloat) then vInicio := tQuery.FieldByName(Datos.Inicio).AsFloat;
        If vTermino < tQuery.FieldByName(Datos.Termino).AsFloat then vTermino := tQuery.FieldByName(Datos.Termino).AsFloat;
      End;

      tQuery.Next;
    End;

    tQuery.Filtered := False;
    if vInicio <> 0 then
    Begin
      // Localizar el paquete
      tQuery.Locate(Datos.Wbs,WbsAnterior,[]);
      if tQuery.Found then
      Begin
        if (tQuery.FieldByName(Datos.Inicio).AsFloat <> vInicio) Or (tQuery.FieldByName(Datos.Termino).AsFloat <> vTermino) then
        Begin
          // Modificar los datos en caso de ser necesario
          tQuery.Edit;
          tQuery.FieldByName(ncDuracion).AsFloat := (vTermino - vInicio) + 1;
          tQuery.FieldByName(Datos.Inicio).AsFloat := vInicio;
          tQuery.FieldByName(Datos.Termino).AsFloat := vTermino;
          tQuery.UpdateRecord;
          tQuery.Post;

          // Actualizar los vectores de memoria
          Indice := Segmentos.IndexOf(tQuery.FieldByName(Datos.Wbs).AsString + ':1');
          If Indice >= 0 then
          Begin
            TBarra(Segmentos.Objects[Indice]).FechaInicio := vInicio;

            { ********* AJUSTE POR FALTA DE HORARIO EN CAMPOS DE FECHA FINAL
              Agregar un día a la fecha final porque no cuentan con horas }
            TBarra(Segmentos.Objects[Indice]).FechaTermino := vTermino + 1;
          End;
        End;
        WbsAnterior := tQuery.FieldByName(Datos.WbsAnterior).AsString;  // Continuar con los paquetes hacia arriba
      End
      Else
        WbsAnterior := '';
    End;
  End;
  QueryGen.Refresh;
  tQuery.Close;
  FreeAndNil(tQuery);

  Grid.Repaint;   // Volver a dibujar la gráfica despues de las modificaciones*)
End;

end.
