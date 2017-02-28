unit frm_Gantt2;
{
  Notas:
  C01 - Localizacion de dia y parida de programa de actividad real
  C02 - Opcion No. 1 del popupmenu para las opciones de la actividad
}
interface

uses
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, jpeg, global, 
  ZConnection, ExtCtrls, StdCtrls, DBCGrids, DateUtils, ComCtrls, Menus,
  Unit_Barras, DBCtrls, Mask;

type
  TfrmcargaPrograma = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1sContrato: TStringField;
    ZQuery1sIdConvenio: TStringField;
    ZQuery1iNivel: TIntegerField;
    ZQuery1sSimbolo: TStringField;
    ZQuery1sWbs: TStringField;
    ZQuery1sWbsAnterior: TStringField;
    ZQuery1sNumeroActividad: TStringField;
    ZQuery1sTipoActividad: TStringField;
    ZQuery1sEspecificacion: TStringField;
    ZQuery1sActividadAnterior: TStringField;
    ZQuery1iItemOrden: TStringField;
    ZQuery1mDescripcion: TMemoField;
    ZQuery1dFechaInicio: TDateField;
    ZQuery1dDuracion: TFloatField;
    ZQuery1dFechaFinal: TDateField;
    ZQuery1dPonderado: TFloatField;
    ZQuery1dCostoMN: TFloatField;
    ZQuery1dCostoDll: TFloatField;
    ZQuery1dVentaMN: TFloatField;
    ZQuery1dVentaDLL: TFloatField;
    ZQuery1lCalculo: TStringField;
    ZQuery1sMedida: TStringField;
    ZQuery1dCantidadAnexo: TFloatField;
    ZQuery1dCargado: TFloatField;
    ZQuery1dInstalado: TFloatField;
    ZQuery1dExcedente: TFloatField;
    ZQuery1iColor: TIntegerField;
    ZQuery1lExtraordinario: TStringField;
    ZQuery1sIdFase: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    ScrollBar1: TScrollBar;
    PaintBox1: TPaintBox;
    Panel5: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    StringGrid1: TStringGrid;
    ZQuery2: TZQuery;
    PopupMenu1: TPopupMenu;
    Accin11: TMenuItem;
    Accion21: TMenuItem;
    Label1: TLabel;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    DataSource2: TDataSource;
    Image1: TImage;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    DataSource3: TDataSource;
    Image2: TImage;
    Panel7: TPanel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    PaintBox2: TPaintBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure StringGrid1TopLeftChanged(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1DblClick(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Accin11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure PaintBox2Paint(Sender: TObject);
  private
    Ancho, Inicio, Termino, Periodo, RealInicio, RealTermino: Real;
    DivideDia, ColInicio, ColTermino, ColActividad, ColDesc, RangoIAct, RangoFAct: Integer;
    NomMes: Array[1..12] Of String;
    LastX, LastY, LastGridX, LastGridY, LastIniX, LastIniY, LastPosicion, ppAlto: Integer;
    LastInicio, LastFinal: TDateTime;
    kTipoA, kNumero: String;
    IsDown,IsBarra: Boolean;
    Difer: Integer;
  public
    { Public declarations }
  end;

var
  frmcargaPrograma: TfrmcargaPrograma;
  CurrFechaHora: TDateTime;
implementation

{$R *.dfm}
var
  Barras, BarrasReal: TBarras;

procedure TfrmcargaPrograma.Accin11Click(Sender: TObject);
begin
 {*****************************************************************************
  * C02 - Colocar aquí el codigo necesario para la acción 1 del popupmenu
  *****************************************************************************}
  ShowMessage('Acción No. 1' + chr(10) + chr(10) + 'Tipo de actividad: ' + kTipoA + chr(10) + 'Actividad No.: ' + knumero);
end;

procedure TfrmcargaPrograma.Button1Click(Sender: TObject);
begin
  If Ancho > 10 then Ancho := Ancho - 10 else Ancho := Ancho - 1;
  if Ancho = 0 then Ancho := 1;

  Self.Edit1.Text := Inttostr(Trunc(Ancho)) + '%';
  self.PaintBox1.Repaint;
end;

procedure TfrmcargaPrograma.Button2Click(Sender: TObject);
begin
  if ancho < 10 then Ancho := Ancho + 1 else Ancho := Ancho + 10;
  if Ancho > 1000 then Ancho := 1000;

  Self.Edit1.Text := Inttostr(Trunc(Ancho)) + '%';
  self.PaintBox1.Repaint;
end;

procedure TfrmcargaPrograma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Barras.Destroy; // Liberar la memoria de las barras utilizadas
end;

procedure TfrmcargaPrograma.FormPaint(Sender: TObject);
begin
{  With PaintBox2.Canvas Do
  begin
    Pen.Color := clBlack;
    Brush.Color := clBlack;
    Rectangle(10,15,100,Trunc(ppAlto / 2) + 15);

    Brush.Color := PaintBox2.Color;
    Font.size := 8;
    TextOut(110,15,'Paquete de actividades o Fase');

    Pen.Color := clBlack;
    Brush.Color := clActiveCaption;
    Rectangle(10,41,100,ppAlto + 41);

    Brush.Color := PaintBox2.Color;
    TextOut(110,41,'Periodo Programado');

    Pen.Color := clYellow;
    Brush.Color := clYellow;
    Rectangle(300,15,390,ppAlto + 15);

    Brush.Color := PaintBox2.Color;
    TextOut(400,15,'Actividad Real Reportada');
  end;}
end;

procedure TfrmcargaPrograma.FormShow(Sender: TObject);
var
  cta: Integer;
  BlobField: TField;
  bs: TStream;
  pic: TJpegImage;
begin

  self.ZReadOnlyQuery2.close;
  self.ZReadOnlyQuery2.SQL.Text := 'select t1.bimagen, t1.snombre from configuracion t1 where t1.scontrato = ' + quotedstr(Global_Contrato);
  self.ZReadOnlyQuery2.open;

  if self.ZReadOnlyQuery2.RecordCount > 0 then
  begin
    BlobField := self.ZReadOnlyQuery2.FieldByName('bImagen');
    BS := zreadonlyquery2.CreateBlobStream(BlobField,bmread);
    if bs.Size > 1 then
    begin
      try
        pic := tjpegimage.Create;
        try
          Pic.LoadFromStream(bs);
          Image2.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bs.free;
      end;
    end
    else
      Image2.Picture.LoadFromFile('');
  end;

  self.ZReadOnlyQuery1.Close;
  self.ZReadOnlyQuery1.SQL.Clear;
  self.ZReadOnlyQuery1.SQL.Text := 'select * from contratos t1 where t1.scontrato = ' + quotedstr(Global_Contrato);
  self.ZReadOnlyQuery1.Open;

  if zReadOnlyQuery1.RecordCount > 0 then
  Begin
    BlobField := ZReadOnlyQuery1.FieldByName('bImagen');
    BS := ZReadOnlyQuery1.CreateBlobStream(BlobField, bmRead);
    if bs.size > 1 then
    Begin
      try
        pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          Image1.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bs.Free;
      end;
    End
    else
      Image1.Picture.LoadFromFile('');
  End;

  self.ZQuery1.Close;
  self.ZQuery1.SQL.Text := 'select * from actividadesxanexo where actividadesxanexo.scontrato = "' + Global_Contrato + '" and actividadesxanexo.sidconvenio = "' + Global_Convenio + '" order by iitemorden';
  self.ZQuery1.Open;

  self.zquery2.close;
  self.zquery2.SQL.Text := 'select * from bitacoradeactividades t1 where t1.scontrato = "' + Global_Contrato + '" and t1.sidtipomovimiento = "E"';
  self.zquery2.open;

  self.ZQuery1.First;
  self.StringGrid1.RowCount := self.ZQuery1.RecordCount;
  cta := 1;
  Inicio := 0;
  Termino := 0;
  while Not zquery1.eof do
  begin
    with self.StringGrid1 do
    begin
      Cells[0,cta] := self.ZQuery1.FieldByName('stipoactividad').asstring[1] + '-' + self.ZQuery1.FieldByName('snumeroactividad').asstring;
      Cells[1,cta] := self.ZQuery1.FieldByName('snumeroactividad').asstring;
      Cells[2,cta] := self.ZQuery1.FieldByName('mdescripcion').asstring;
      Cells[3,cta] := self.ZQuery1.FieldByName('dfechainicio').asstring;
      Cells[4,cta] := self.ZQuery1.FieldByName('dfechafinal').asstring;
      Cells[5,cta] := self.ZQuery1.FieldByName('dCantidadanexo').asstring;
      Cells[6,cta] := self.ZQuery1.FieldByName('smedida').asstring;
    end;

    Inc(cta);
    if (Inicio = 0) or (Inicio > Self.ZQuery1.FieldByName('dfechaInicio').asfloat) then
      Inicio := Self.ZQuery1.FieldByName('dfechaInicio').asFloat;
    if (Termino < Self.ZQuery1.FieldByName('dfechafinal').AsFloat) then
      Termino := Self.ZQuery1.FieldByName('dfechafinal').AsFloat;

    zquery1.Next;
  end;

  // Las fechas no tienen horas, por ello hay que enviar la fecha de termino hasta las 24 horas para ajustar el día
  Termino := Termino + 1;

  RealInicio := Inicio;
  RealTermino := Termino;
  Inicio := Inicio - 1;
  Termino := Termino + 1;
  Periodo := Termino - Inicio;

  ppAlto := 16;
  Ancho := 40;
  self.ScrollBar1.Min := 0;
  self.ScrollBar1.Position := 0;
  Self.Edit1.Text := Inttostr(Trunc(Ancho)) + '%';
  DivideDia := 4;   // Por default 4 periodos de 6 horas
  self.StringGrid1.DefaultRowHeight := 60;

  // Establecer el tamaño de las columnas
  self.StringGrid1.ColWidths[1] := 70;
  self.StringGrid1.ColWidths[2] := 400;
  self.StringGrid1.ColWidths[3] := 70;
  self.StringGrid1.ColWidths[4] := 70;
  self.StringGrid1.ColWidths[5] := 70;
  self.StringGrid1.ColWidths[6] := 40;

  Self.StringGrid1.Cells[0,0] := 'ID';
  Self.StringGrid1.Cells[1,0] := 'PDA. ANEXO';
  Self.StringGrid1.Cells[2,0] := 'DESCRIPCIÓN';
  Self.StringGrid1.Cells[3,0] := 'INICIO';
  Self.StringGrid1.Cells[4,0] := 'FINAL';
  Self.StringGrid1.Cells[5,0] := 'CANTIDAD';
  Self.StringGrid1.Cells[6,0] := 'UNIDAD';

  NomMes[01] := 'ENERO';
  NomMes[02] := 'FEBRERO';
  NomMes[03] := 'MARZO';
  NomMes[04] := 'ABRIL';
  NomMes[05] := 'MAYO';
  NomMes[06] := 'JUNIO';
  NomMes[07] := 'JULIO';
  NomMes[08] := 'AGOSTO';
  NomMes[09] := 'SEPTIEMBRE';
  NomMes[10] := 'OCTUBRE';
  NomMes[11] := 'NOVIEMBRE';
  NomMes[12] := 'DICIEMBRE';

  // Identificación de posición de columnas
  ColActividad := 1;
  ColDesc := 2;
  ColInicio := 3;
  ColTermino := 4;
  RangoIAct := Self.StringGrid1.ColWidths[0];             // Indica el inicio de la columa del número de actividad
  RangoFAct := RangoIAct + Self.StringGrid1.ColWidths[1]; // Indica el termino de la columa del número de actividad

  Barras := TBarras.create;     // Crear el registro de las barras programadas
  BarrasReal := TBarras.create; // Crear el registro de las barras reales

End;

procedure TfrmcargaPrograma.PaintBox1DblClick(Sender: TObject);
Var
  CtaAlto, NumRen: Integer;
  mFecha: TDateTime;
  iInicia: Integer;
  HeightBarra: Integer;
  Procede: Boolean;
begin
 {*****************************************************************
  * Calcular de acuerdo a las coordenadas el registro seleccionado
  *****************************************************************}

  BarrasReal.ExisteBarra[LastX, LastY, 2];

  // Localizar primero el renglón del stringrid, el cual servirá para determinar el número deactividad clickado
  CtaAlto := 0;
  NumRen := Self.StringGrid1.TopRow;
  while (NumRen < Self.StringGrid1.Height) And (CtaAlto < LastY) do
  Begin
    Inc(CtaAlto, Self.StringGrid1.RowHeights[NumRen] + 1);
    If CtaAlto < LastY Then Inc(NumRen);
  End;
  Dec(NumRen); // Ajustar porque siempre sale un renglón despues

  // Verificar si el registro clickado es una actividad ya que en caso contrario no se debe proceder con este procedimiento
  if Self.StringGrid1.Cells[0,NumRen][1] = 'A' then
  Begin
    // ¿Se hizo click en el área de actividades reales?
    HeightBarra := CtaAlto - (Trunc(Self.StringGrid1.RowHeights[NumRen] / 2)) - 3;
    if (LastY <= CtaAlto) And (LastY >= HeightBarra) And (LastY <= HeightBarra + ppAlto) then
    Begin
      // Localizar ahora la fecha en la que se ha hecho click para verificar si ese día hay movimientos del registro clickado
      mFecha := Barras.FechaHora[LastX,Inicio,Termino,Periodo,Ancho,self.ScrollBar1.Position];

      // Verificar si hay movimientos para este registro este día
      self.ZQuery2.Filtered := False;
      self.ZQuery2.Filter := 'snumeroactividad = ' + quotedstr(Self.StringGrid1.Cells[1,NumRen]);
      self.ZQuery2.Filtered := True;
      self.zquery2.First;
      while (Not zquery2.eof) And (zquery2.fieldbyname('didfecha').asdatetime <> mFecha) do
        zquery2.Next;
      Procede := not zquery2.Eof;
      self.ZQuery2.Filtered := False;
      Self.ZQuery2.First;

      if Procede then
      Begin
       {******************************************************************************************************
        * C01 - GENERAR EL CODIGO NECESARIO PARA LA PRESENTACION DE LOS DATOS DE LA ACTIVIDAD REAL
        * (REPORTE DIARIO, AVANCES, ETC.
        ******************************************************************************************************}
        showmessage(Self.StringGrid1.Cells[1,NumRen] + '  ' + FormatDateTime('d/m/y',mFecha));
      End;
    End
    else
    begin
     {******************************************************************************************************
      * GENERAR EL CODIGO NECESARIO PARA LA PRESENTACION DE LOS DATOS GENERALES DE LA ACTIVIDAD PROGRAMADA
      ******************************************************************************************************}
    end;
  End;
end;

procedure TfrmcargaPrograma.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Verificar si se trata de una actividad programada
  // Identificar la actividad en que se pulsó click
  LastIniY := Barras.Y[Barras.LastNumBarra];
  LastIniX := Barras.X[Barras.LastNumBarra];
  LastPosicion := Barras.PosicionClick;

  Barras.ExisteBarra[X,Y,1];
  if Barras.LastBarra then
  Begin
    Self.Label1.Caption := FormatDateTime('dd/m/yyyy',Barras.Inicio[Barras.LastNumBarra]);
    Self.Label1.Left := LastIniX;
    Self.Label1.Top := LastIniY - ppAlto * 2;
    Self.Label1.Visible := True;
    IsDown := True;
    Difer := Barras.X[Barras.LastNumBarra] - X;

    // Respaldar los datos de la barra
    LastInicio := Barras.Inicio[Barras.LastNumBarra];
    LastFinal := Barras.Termino[Barras.LastNumBarra];
    IsBarra := True;
  End;
end;

procedure TfrmcargaPrograma.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  cta: Integer;
  iFecha: TDateTime;
  a,WhatColor: TColor;
  myFecha: Real;
begin
  if (IsDown) And (IsBarra) then
  Begin
    // Si el boton está pulsado mostrar las coordenadas y la escala temporal
    IFecha := Barras.Termino[Barras.LastNumBarra];
    Self.Label1.Left := X;
    Self.Label1.Top := LastIniY - ppAlto * 2;

    if LastPosicion <> 2 then
    Begin
      // Verificar en que día se estámoviendo el apuntador del mouse
      iFecha := Barras.FechaHora[LastX,Inicio,Termino,Periodo,Ancho,Self.ScrollBar1.Position];
      CurrFechaHora := iFecha;
      Self.Label1.Caption := (FormatDateTime('d/m/y',CurrFechaHora));

      Paintbox1.Canvas.Pen.Color := clWhite;
      Paintbox1.Canvas.Brush.Color := clWhite;
      Self.PaintBox1.Canvas.Rectangle(LastIniX, LastIniY, LastX, LastIniY + ppAlto);

      Paintbox1.canvas.Pen.Color := clBlack;
      PaintBox1.Canvas.Brush.Color := clAqua;
      if Barras.PosicionClick = 1 then
        Self.PaintBox1.Canvas.Rectangle(Barras.Width[Barras.LastNumBarra], LastIniY, X, LastIniY + ppAlto)
      Else
        Self.PaintBox1.Canvas.Rectangle(Barras.X[Barras.LastNumBarra], LastIniY, X, LastIniY + ppAlto)
    End
    else
    begin
      iFecha := Barras.FechaHora[LastX + Difer,Inicio,Termino,Periodo,Ancho,Self.ScrollBar1.Position];
      CurrFechaHora := iFecha;
      Self.Label1.Caption := (FormatDateTime('d/m/y',CurrFechaHora));

      // OK, movilizar toda la barra completamente
      Paintbox1.Canvas.Pen.Color := clWhite;
      Paintbox1.Canvas.Brush.Color := clWhite;
      //Self.PaintBox1.Canvas.Rectangle(LastIniX, LastIniY, LastX, LastIniY + ppAlto);
      Self.PaintBox1.Canvas.Rectangle((LastX - LastIniX) + Difer + Barras.X[Barras.LastNumBarra], LastIniY, (LastX - LastIniX) + Difer + Barras.Width[Barras.LastNumBarra], LastIniY + ppAlto);

      Paintbox1.canvas.Pen.Color := clBlack;
      PaintBox1.Canvas.Brush.Color := clAqua;
      Self.PaintBox1.Canvas.Rectangle((X - LastIniX) + Difer + Barras.X[Barras.LastNumBarra], LastIniY, (X - LastIniX) + Difer + Barras.Width[Barras.LastNumBarra], LastIniY + ppAlto);

      // showmessage('Rangel');
    end;
  End
  else
  begin
    // Si el mouse solo está pasando sobre los objetos, verificar si está pasando por una barra programada
    if Barras.ExisteBarra[X,Y,1] = 0 then
    Begin
      Screen.Cursor := crDefault;
    End
    else
    Begin
      if Barras.PosicionClick = 2 then
        Screen.Cursor := crsize
      else
        screen.Cursor := crsizewe;
    End;
  end;
  LastX := X;
  LastY := Y;
end;

procedure TfrmcargaPrograma.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  CtaAlto,NumRen: Integer;
  myDifer: TDateTime;
begin
  Self.Label1.Visible := False;
  IsDown := False;
  Barras.QuitaReferenciaBarra;
  BarrasReal.QuitaReferenciaBarra;

  // Modificar el dataset con las nuevas fechas
  if IsBarra then
  Begin
    // Localizar el registro que se está modificando
    CtaAlto := 0;
    NumRen := Self.StringGrid1.TopRow;
    while (NumRen < Self.StringGrid1.Height) And (CtaAlto < LastY) do
    Begin
      Inc(CtaAlto, Self.StringGrid1.RowHeights[NumRen] + 1);
      If CtaAlto < LastY Then Inc(NumRen);
    End;
    Dec(NumRen); // Ajustar porque siempre sale un renglón despues
    Self.zquery1.Filtered := False;
    Self.ZQuery1.Filter := 'stipoactividad = ' + quotedstr('Actividad');
    Self.ZQuery1.Filtered := True;
    Self.ZQuery1.First;

    If Not Self.ZQuery1.Eof then
    Begin
      Self.ZQuery1.Locate('snumeroactividad',Self.StringGrid1.Cells[ColActividad,NumRen],[]);
      if Self.Zquery1.Found then
      Begin
        // Verificar que opción se utilizó
        case LastPosicion of
          1 :
          Begin
            // Verificar que la fecha de inicio no seá posterior a la fecha terminación
            if CurrFechaHora > Self.Zquery1.FieldByName('dFechaFinal').AsDateTime then
              CurrFechaHora := Self.Zquery1.FieldByName('dFechaFinal').AsDateTime;

            self.zquery1.Edit;
            Self.ZQuery1.FieldByName('dFechaInicio').AsDateTime := CurrFechaHora;
            Self.StringGrid1.Cells[ColInicio,NumRen] := FormatDateTime('dd/m/yyyy',CurrFechaHora);
            Self.zquery1.Post;
          End;
          2 :
          Begin
            myDifer := LastFinal - LastInicio;
            self.zquery1.Edit;
            self.zquery1.FieldByName('dFechaInicio').AsDateTime := CurrFechaHora;
            self.zquery1.FieldByName('dFechaFinal').AsDateTime := CurrFechaHora + myDifer;
            self.zquery1.Post;
          End;
          3 :
          Begin
            // Verificar que la fecha de terminación no sea anterior a la fecha de inicio
            if CurrFechaHora < Self.Zquery1.FieldByName('dFechaInicio').AsDateTime then
              CurrFechaHora := Self.Zquery1.FieldByName('dFechaInicio').AsDateTime;

            self.zquery1.Edit;
            Self.ZQuery1.FieldByName('dFechaFinal').AsDateTime := CurrFechaHora;
            Self.StringGrid1.Cells[ColTermino,NumRen] := FormatDateTime('dd/m/yyyy',CurrFechaHora);
            Self.zquery1.Post;
          End;
        end;
      End;
    End;
    Self.ZQuery1.Filtered := False;
  End;

  Self.PaintBox1.Repaint;
end;

procedure TfrmcargaPrograma.PaintBox1Paint(Sender: TObject);
var
  Tipo, Llave, RealMes, RealAnio: String;
  cta,pAlto: Integer;
  continua: Boolean;
  iinicia,espacio,Alto: Integer;
  Porce: Real;
  mFecha, OldFecha, fInicio, fTermino: TDateTime;
  Incre: Real;
  EspDisp: Integer;
  WidthText: Integer;
  Formato,CadTime: String;
  cTiempo: Integer;
  H,mIncre,Rango,Indep,cMes,cOldMes,cAnio,cOldAnio: Integer;
  myAnio,a,myMes,d,NewMes,NewAnio: Word;
begin
  PaintBox1.Canvas.Font.Size := 8;
  Barras.Limpiar;       // Limpiar barras programadas anteriores
  BarrasReal.Limpiar;   // Limpiar barras programas anteriores

  // Borrar el área de gráficos
  Paintbox1.Canvas.Fillrect(PaintBox1.Canvas.ClipRect);

  Espacio := (Trunc(((Termino - Inicio) / Periodo) * (Periodo)));
  if Espacio < 10 then
     Espacio := 10;
  scrollbar1.Max := Espacio;

  // Colocar el calendario correspondiente
  mFecha := Inicio;

  // Verificar si la fecha cabe dentro del espacio disponible
  EspDisp := Trunc((((1 + mFecha - Inicio) / Periodo) * (Periodo * Ancho)) - (self.ScrollBar1.Position * Ancho)) - Trunc((((mFecha - Inicio) / Periodo) * (Periodo * Ancho)) - (self.ScrollBar1.Position * Ancho));
  Formato := 'd/m/yyyy';
  WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
  if WidthText + 10 > EspDisp then Formato := 'd/m/y';
  WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
  if WidthText + 10 > EspDisp then Formato := 'd/m';
  WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
  if WidthText + 10 > EspDisp then Formato := 'd';
  WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
  if WidthText + 10 > EspDisp then
  Begin
    // Modificar el formato de días a semanas

  End;

  // Fondo de calendario
  Paintbox1.canvas.Pen.Color := clMenuBar;
  PaintBox1.Canvas.Brush.Color := clMenuBar;
  Paintbox1.Canvas.Rectangle(0, 0, PaintBox1.Width, self.StringGrid1.RowHeights[0]);

  // Determinar el nivel de detalle del día
  DivideDia := Trunc(EspDisp / self.StringGrid1.Canvas.TextWidth('OO'));
  if DivideDia > 6 then DivideDia := 6;

  if DivideDia > 1 then
  Begin
    // Determinar que se traten de multiplos de 24;
    While (DivideDia > 1) And (24 Mod DivideDia > 0) Do
    Begin
      DivideDia := DivideDia - 1;
    End;
  End;

  Rango := 4;
  Decodedate(mFecha,myAnio,myMes,d);
  NewMes := myMes;
  NewAnio := myAnio;
  cOldMes := 0;
  while (mFecha < Termino) And (Trunc((((mFecha - Inicio) / Periodo) * (Periodo * Ancho)) - (self.ScrollBar1.Position * Ancho)) <= Self.PaintBox1.Width + EspDisp) do
  Begin
    iInicia := Trunc((((mFecha - Inicio) / Periodo) * (Periodo * Ancho)) - (self.ScrollBar1.Position * Ancho));
    Espacio := iInicia;

    Paintbox1.canvas.Font.Color := clBlack;
    PaintBox1.Canvas.Brush.Color := clMenuBar;

    // Mes de calendario
    if (myAnio <> NewAnio) or (myMes <> NewMes) Or (iInicia >= Self.PaintBox1.Width) Or (mFecha + 1 >= Termino) then
    Begin
      //if (iInicia + EspDisp >= Self.PaintBox1.Width) then
        //showmessage('Rangel');
      if iInicia >= Self.PaintBox1.Width then
      Begin
        cMes := Self.PaintBox1.Width;
        cAnio := Self.PaintBox1.Width;
      End
      else
      Begin
        cMes := iInicia;
        cAnio := iInicia;
      End;

      // Año Calendario
      if (myAnio <> NewAnio) Or (iInicia >= Self.PaintBox1.Width) Or (mFecha + 1 >= Termino) then
      Begin
        WidthText := self.StringGrid1.Canvas.TextWidth(IntToStr(myAnio));
        if cAnio - cOldAnio < WidthText then
        Begin
          RealAnio := Copy(IntToStr(myAnio),3,2);
          WidthText := self.StringGrid1.Canvas.TextWidth(RealAnio);
        End
        else
          RealAnio := IntToStr(myAnio);
        PaintBox1.Canvas.Rectangle(cOldAnio,0,cAnio,15);
        Paintbox1.canvas.TextOut(Trunc((((cAnio - cOldAnio) - WidthText) / 2)) + cOldAnio,1,RealAnio);
        cOldAnio := cAnio;
        myAnio := NewAnio;
      End;

      // Mes calendario
      WidthText := self.StringGrid1.Canvas.TextWidth(NomMes[myMes]);
      if cMes - cOldMes < WidthText then
      Begin
        RealMes := Copy(NomMes[myMes],1,2);    // Si no cabe, modificar la leyenda
        WidthText := self.StringGrid1.Canvas.TextWidth(RealMes);
      End
      else
        RealMes := NomMes[myMes];
      PaintBox1.Canvas.Rectangle(cOldMes,15,cMes,30);
      Paintbox1.canvas.TextOut(Trunc((((cMes - cOldMes) - WidthText) / 2)) + cOldMes,16,RealMes);
      cOldMes := cMes;
      myMes := NewMes;
      If (myAnio <> NewAnio) then
        cOldAnio := cAnio;
      myAnio := NewAnio;
    End;
    //showmessage(FloatToStr(iInicia) + '  ' + FloatToStr(Self.PaintBox1.Width) + '  ' + (FloatToStr(Self.PaintBox1.Width - iInicia)) + '  ' + IntToStr(EspDisp));
    // Fecha de calendario
    WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
    Paintbox1.canvas.TextOut(Trunc(((EspDisp - WidthText) / 2)) + Espacio,30,FormatDateTime(Formato,mFecha));

    if DivideDia > 1 then
    Begin
      // Horas de calendario en bloques dispuestos
      mIncre := Trunc(EspDisp / DivideDia);
      Indep := 0;
      for H := 1 to DivideDia do
      Begin
        WidthText := self.StringGrid1.Canvas.TextWidth(FormatDateTime(Formato,mFecha));
        CadTime := '00' + FloatToStr((24 / DivideDia) * (H - 1));
        Paintbox1.canvas.TextOut(Rango,46,Copy(CadTime,Length(CadTime) - 1,2));
        Rango := Rango + mIncre;
        Indep := Indep + mIncre;
      End;
    End;

    // Líneas de división
    Paintbox1.canvas.Pen.Color := clSilver;
    PaintBox1.Canvas.Brush.Color := clSilver;
    Paintbox1.Canvas.Rectangle(Espacio, 0, Espacio + 1, self.PaintBox1.Height);

    mFecha := mFecha + 1;
    Rango := Rango + (EspDisp - Indep);
    DecodeDate(mFecha,NewAnio,NewMes,d);
  End;

  // Tomar los datos que se encuentran en pantalla
  cta := Self.StringGrid1.TopRow;
  Alto := self.StringGrid1.RowHeights[0];
  continua := true;
  while (continua) and (cta <= self.ZQuery1.RecordCount) do
  begin
    Llave := self.StringGrid1.Cells[0,cta];
    If Llave[1] = 'A' Then Tipo := 'Actividad' Else Tipo := 'Paquete';
    Llave := Copy(Llave,3,length(Llave));

    // Poner divisiones entre actividades
    Paintbox1.canvas.Pen.Color := clsilver;
    PaintBox1.Canvas.Brush.Color := clWhite;
    Paintbox1.Canvas.Rectangle(0,Alto,PaintBox1.Width,Alto + 1);

    self.ZQuery1.Locate('snumeroactividad',Llave,[]);
    if self.ZQuery1.Found then
    Begin
      while (self.zquery1.fieldbyname('stipoactividad').asstring <> Tipo) and (self.zquery1.fieldbyname('snumeroactividad').asstring = Llave) do
        self.ZQuery1.Next;

      if self.zquery1.fieldbyname('snumeroactividad').asstring = Llave then
      begin
        {**************************************************************************************************************
        ** Proceso de barras programadas
        ***************************************************************************************************************}
        // Debido a que no existen horas en los campos de termino de actividad se debe ajustar la hora a las 24hrs
        mFecha := Self.ZQuery1.fieldbyname('dFechaFinal').AsFloat + 1;
        iInicia := Round((((self.ZQuery1.FieldByName('dfechainicio').asfloat - Inicio) / Periodo) * (Periodo * Ancho)) - Trunc(self.ScrollBar1.Position * Ancho));
        Espacio := Round(((mFecha - Self.ZQuery1.fieldbyname('dFechaInicio').AsFloat) / Periodo) * (Periodo * Ancho));
        If Self.ZQuery1.fieldbyname('stipoactividad').Asstring = 'Actividad' then
        begin
          Paintbox1.canvas.Pen.Color := clBlack;
          PaintBox1.Canvas.Brush.Color := clActiveCaption;
          pAlto := ppAlto;
        end
        else
        begin
          Paintbox1.canvas.Pen.Color := clBlack;
          PaintBox1.Canvas.Brush.Color := clBlack;
          pAlto := Trunc(ppAlto / 2);
        end;

        // Generar y registrar la barra diseñada
        Paintbox1.Canvas.Rectangle(iInicia, Alto + 6, iInicia + Espacio, Alto + pAlto + 6);
        Barras.CrearBarra(iInicia,Alto + 6,iInicia + Espacio,Alto + pAlto + 6,Self.ZQuery1.FieldByName('snumeroactividad').AsString,Self.ZQuery1.FieldByName('stipoactividad').AsString,Self.ZQuery1.FieldByName('dfechainicio').AsDateTime,Self.ZQuery1.FieldByName('dfechafinal').AsDateTime);

        {**************************************************************************************************************
        ** Proceso de barras REALES
        ***************************************************************************************************************}
        Self.ZQuery2.Filtered := False;
        Self.ZQuery2.Filter := 'snumeroactividad = ' + quotedstr(zQuery1.FieldByName('sNumeroActividad').asString);
        Self.ZQuery2.Filtered := True;
        Self.ZQuery2.First;

        if Not zquery2.eof then fInicio := Self.ZQuery2.fieldbyname('dIdFecha').AsFloat;
        while Not zQuery2.Eof do
        Begin
          // Debido a que no existen horas en los campos de termino de actividad se debe ajustar la hora a las 24hrs
          mFecha := Self.ZQuery2.fieldbyname('dIdFecha').AsFloat + 1;

          iInicia := Round((((self.ZQuery2.FieldByName('dIdFecha').asfloat - Inicio) / Periodo) * (Periodo * Ancho))) - Trunc((self.ScrollBar1.Position * Ancho));
          Espacio := Round(((mFecha - Self.ZQuery2.fieldbyname('dIdFecha').AsFloat) / Periodo) * (Periodo * Ancho));

          Paintbox1.canvas.Pen.Color := clYellow;
          PaintBox1.Canvas.Brush.Color := clYellow;
          pAlto := 16;

          // Generar y registrar la barra real
          Paintbox1.Canvas.Rectangle(iInicia, Alto + pAlto + 12, iInicia + Espacio, Alto + (pAlto * 2) + 12);
          BarrasReal.CrearBarra(iInicia, Alto + pAlto + 12, iInicia + Espacio, Alto + (pAlto * 2) + 12, Self.Zquery1.FieldByName('snumeroactividad').asstring, self.ZQuery1.fieldbyname('stipoactividad').asstring,Self.zquery2.fieldbyname('didfecha').asdatetime,Self.zquery2.fieldbyname('didfecha').asfloat + 1);

          zQuery2.Next;
        End;
        Self.ZQuery2.Filtered := false;
      end;
    End;
    Inc(cta);
    Alto := Alto + self.StringGrid1.RowHeights[cta] + 1;
    Continua := Alto < Paintbox1.Height;
  end;
end;

procedure TfrmcargaPrograma.PaintBox2Paint(Sender: TObject);
begin
  With PaintBox2.Canvas Do
  begin
    Pen.Color := clBlack;
    Brush.Color := clBlack;
    Rectangle(10,15,100,Trunc(ppAlto / 2) + 15);

    Brush.Color := PaintBox2.Color;
    Font.size := 8;
    TextOut(110,15,'Paquete de actividades o Fase');

    Pen.Color := clBlack;
    Brush.Color := clActiveCaption;
    Rectangle(10,41,100,ppAlto + 41);

    Brush.Color := PaintBox2.Color;
    TextOut(110,41,'Periodo Programado');

    Pen.Color := clYellow;
    Brush.Color := clYellow;
    Rectangle(300,15,390,ppAlto + 15);

    Brush.Color := PaintBox2.Color;
    TextOut(400,15,'Actividad Real Reportada');
  end;
end;

procedure TfrmcargaPrograma.ScrollBar1Change(Sender: TObject);
begin
  self.PaintBox1.Repaint;
end;

procedure TfrmcargaPrograma.StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  Rango, NumRen: Integer;
begin
  // Determinar el número de actividad en el cual hizo click derecho
  Rango := 0;
  NumRen := Self.StringGrid1.TopRow;
  while (Rango < Self.StringGrid1.Height) And (Rango < LastGridY) do
  Begin
    Rango := Rango + Self.StringGrid1.RowHeights[NumRen];
    If Rango < LastGridY then Inc(NumRen);
  End;
  Dec(NumRen);
  if NumRen > 0 then
  Begin
    kNumero := Self.StringGrid1.Cells[ColActividad,NumRen];
    if Self.StringGrid1.Cells[0,NumRen][1] = 'P' then kTipoA := 'Paquete' else kTipoA := 'Actividad';
  end;
  // Establecer si se hizo el click en la columna de 'numero de actividad'
  if (LastGridX < RangoIAct) Or (LastGridX > RangoFAct) Or (LastGridY <= Self.StringGrid1.RowHeights[0]) then
  Begin
    SendMessage(PopupMenu1.WindowHandle, WM_CANCELMODE, 0, 0 );
    Handled := True;
  End
end;

procedure TfrmcargaPrograma.StringGrid1DblClick(Sender: TObject);
Var
  Rect: TRect;
  Cta: Integer;
  Continua: Boolean;
begin
  Continua := True;
  Cta := Self.StringGrid1.LeftCol;
  while (Cta <= Self.StringGrid1.ColCount) and (Self.StringGrid1.CellRect(Cta,1).Left > 0) And (Continua) do
  Begin
    Rect := Self.StringGrid1.CellRect(Cta,1);
    Continua := Rect.Left < LastGridX;
    if Continua then Inc(Cta);
  End;
end;

procedure TfrmcargaPrograma.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  Texto: String;
begin
  Texto := StringGrid1.Cells[ACol,ARow];
  StringGrid1.Canvas.FillRect(Rect);
  if ACol = ColActividad Then
    DrawText(StringGrid1.Canvas.Handle, PChar(Texto), StrLen(PChar(Texto)), Rect, 1)
  else
    if ACol = ColDesc then
      DrawText(StringGrid1.Canvas.Handle, PChar(Texto), StrLen(PChar(Texto)), Rect, 4)
    else
      if ACol = ColDesc then
        DrawText(StringGrid1.Canvas.Handle, PChar(Texto), StrLen(PChar(Texto)), Rect, 4)
      else
        DrawText(StringGrid1.Canvas.Handle, PChar(Texto), StrLen(PChar(Texto)), Rect, 1)
end;

procedure TfrmcargaPrograma.StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  Self.PaintBox1.Repaint;
end;

procedure TfrmcargaPrograma.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

  LastGridX := X;
  LastGridY := Y;
end;

procedure TfrmcargaPrograma.StringGrid1TopLeftChanged(Sender: TObject);
begin
  Self.PaintBox1.Repaint;
end;

end.
