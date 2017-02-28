unit frm_Graficador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Global, frm_Connection, ZAbstractRODataset, ZDataset,
  DBCtrls, Mask, ExtCtrls, sSplitter, Grids, DateUtils, Buttons, sSpeedButton,
  ComObj, ComCtrls, UnitExcel, UnitExcepciones,UnitTBotonesPermisos;

type
  TfrmGraficador = class(TForm)
    dsContrato: TDataSource;
    qroDatos: TZReadOnlyQuery;
    dsDatos: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    sSplitter1: TsSplitter;
    sgDatos: TStringGrid;
    PaintBox1: TPaintBox;
    ScrollBar1: TScrollBar;
    Edit1: TEdit;
    Panel7: TPanel;
    Btn_Aceptar: TButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    Panel8: TPanel;
    ProgressBar1: TProgressBar;
    procedure Btn_AceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Dibuja;
    function Calculos: Boolean;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure sgDatosDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgDatosTopLeftChanged(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sSpeedButton2Click(Sender: TObject);
    Procedure GenerarExcel(Imprimir: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TBarra = class
    sWbs, Leyenda, Tipo: string;
    X, Width, xLey, SizeLeyenda, MargenXLeyenda, MargenYLeyenda, nMes, Margen: Integer;
    CostoM: Real;
  end;

  TGrafica = class
    iMesLargo: Integer;
    dInicio, dTermino: TDate;
    dRealInicio, dRealTermino: TDate;
    iDuracion: Integer;
    iWidth: Integer;
    imgOriginal: TImage;
  end;

const
  ColDesc = 1;
  ColIni = 4;
  ColFin = 5;
  ColUM = 2;
  ColCant = 3;
  ColPrecio = 4;
  ColTotal = 5;
  ColWbs = 6;
  AnchoBarra = 20;
  AnchoBarraExcel = 10;

  Imprimir = True;
  Columna = 1;
  Renglon = 2;
  RenTitulos = 3;
  MargenR = 200;
  AltoRenTitulos = 70;

var
  frmGraficador: TfrmGraficador;
  Lista: TStringList;
  Grafica: TGrafica;
  sbMax: Integer;
  NomMes: Array[1..12] Of String;
  NumMes, OrigPrecio, OrigTotal: Integer;
  UExcel: TExcel;
  Calculando: Boolean = False;
  TotalPar: Real;
  LeftFooter: String;
  BotonPermiso: TBotonesPermisos;
implementation

{$R *.dfm}

Function AjusteExcel(Valor: Integer; Cual: Word): Integer;
Begin
  if Cual = Columna then
    Result := Trunc(Valor * 0.25)
  Else
  Begin
    if Trunc(Valor * 1) > 400 then
      Result := 400
    Else
      Result := Trunc(Valor * 1);

  End;
End;

Function AjusteVersion(Valor: Integer): Integer;
Begin
  Result := Trunc(Valor * 1);
End;

function TfrmGraficador.Calculos: Boolean;
var
  Cuenta, cObj, Col: Integer;
  OldWbs: string;
  Query: TZReadOnlyQuery;
  dPaso, pFecha, dxInicio, dxTermino: TDateTime;
  An, Me, Di, Alto: Word;
  Maximo, FontSize, Ren, nMes, Margen, Margen2, OldnMes: Integer;
  Leyenda, Texto: string;
  Continua: Boolean;
  Rect: TRect;
begin
  Screen.Cursor := crHourGlass;

  sgDatos.TopRow := 1;
  Calculando := True;

  // Obtener la primera y última fecha para calcular el rango de la gráfica
  Query := TZReadOnlyQuery.Create(nil);
  Query.Connection := Connection.zConnection;
  Query.Sql.Text := 'select Min(a.dFechaInicio) as Inicio, Max(a.dFechaFinal) as Termino from actividadesxanexo a where scontrato = :contrato and sidconvenio = :convenio';
  //Query.Sql.Text := 'select Min(a.dIdFecha) as Inicio, Max(a.dIdFecha) as Termino from anexosmensuales a where scontrato = :contrato and sidconvenio = :convenio';
  Query.ParamByName('contrato').AsString := global_contrato;
  Query.ParamByName('convenio').AsString := global_convenio;
  Query.Open;
  if Query.RecordCount = 1 then
  begin
    Grafica.dInicio := Query.FieldValues['Inicio'];
    Grafica.dTermino := Query.FieldValues['Termino'];
    Grafica.dRealInicio := Query.FieldValues['Inicio'];
    Grafica.dRealTermino := Query.FieldValues['Termino'];
  end
  else
  begin
    Grafica.dInicio := qroDatos.FieldValues['didfecha'];
    qroDatos.Last;
    Grafica.dTermino := qroDatos.FieldValues['didfecha'];
    qroDatos.First;
  end;
  Query.Close;
  FreeAndNil(Query);

  // Mostrar la información de la gráfica generada
  Edit1.Text := 'GRAFICA ';
  case RadioGroup1.ItemIndex of
    0: Begin
      Edit1.Text := Edit1.Text + 'ECONÓMICA M.N. (DE)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'PDA';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'UNIDAD';
      sgDatos.Cells[3,0] := 'CANTIDAD';
      sgDatos.Cells[4,0] := 'PRECIO U.';
      sgDatos.Cells[5,0] := 'TOTAL';
      sgDatos.Cells[6,0] := 'WBS';
      sgDatos.ColWidths[4] := OrigPrecio;
      sgDatos.ColWidths[5] := OrigTotal;
    End;
    1: Begin
      Edit1.Text := Edit1.Text + 'DE MANO DE OBRA (DMO)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'PDA';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'INICIO';
      sgDatos.Cells[3,0] := 'TERMINO';
      sgDatos.Cells[4,0] := '';
      sgDatos.Cells[5,0] := '';
      sgDatos.Cells[6,0] := 'WBS';
      sgDatos.ColWidths[4] := 0;
      sgDatos.ColWidths[5] := 0;
    End;
    2: Begin
      Edit1.Text := Edit1.Text + 'TÉCNICA (DT)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'PDA';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'UNIDAD';
      sgDatos.Cells[3,0] := 'CANTIDAD';
      sgDatos.Cells[4,0] := 'INICIO';
      sgDatos.Cells[5,0] := 'TERMINO';
      sgDatos.Cells[6,0] := 'WBS';
      sgDatos.ColWidths[4] := OrigPrecio;
      sgDatos.ColWidths[5] := OrigTotal;
    End;
    3: Begin
      Edit1.Text := Edit1.Text + 'ECONÓMICA U.S.D. (DE)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'PDA';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'UNIDAD';
      sgDatos.Cells[3,0] := 'CANTIDAD';
      sgDatos.Cells[4,0] := 'PRECIO U.';
      sgDatos.Cells[5,0] := 'TOTAL';
      sgDatos.Cells[6,0] := 'WBS';
      sgDatos.ColWidths[4] := OrigPrecio;
      sgDatos.ColWidths[5] := OrigTotal;
    End;
    4: Begin
      Edit1.Text := Edit1.Text + 'DE EQUIPO DE TRABAJO (DME)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'PDA';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'INICIO';
      sgDatos.Cells[3,0] := 'TERMINO';
      sgDatos.Cells[4,0] := '';
      sgDatos.Cells[5,0] := '';
      sgDatos.Cells[6,0] := 'WBS';
      sgDatos.ColWidths[4] := 0;
      sgDatos.ColWidths[5] := 0;
    End;
    5: Begin
      Edit1.Text := Edit1.Text + 'DE MATERIALES (DMA)';
      sgDatos.ColCount := 7;
      sgDatos.Cells[0,0] := 'ID';
      sgDatos.Cells[1,0] := 'DESCRIPCION';
      sgDatos.Cells[2,0] := 'U.M.';
      sgDatos.Cells[3,0] := 'CANT.';
      sgDatos.Cells[4,0] := '';
      sgDatos.Cells[5,0] := '';
      sgDatos.Cells[6,0] := '';
      sgDatos.ColWidths[4] := 0;
      sgDatos.ColWidths[5] := 0;
      sgDatos.ColWidths[6] := 0;
    End;
  end;
  sgDatos.ColWidths[6] := 0;

  // Determinar cuantos meses ocupa la grafica en total
  DecodeDate(Grafica.dInicio, An, Me, Di);
  Edit1.Text := Edit1.Text + '   PERIODO DEL ' + IntToStr(Di) + ' DE ' + NomMes[Me] + ' DE ' + IntToStr(An);
  Grafica.dInicio := EncodeDate(An, Me, 1);
  DecodeDate(Grafica.dTermino, An, Me, Di);
  Edit1.Text := Edit1.Text + ' AL ' + IntToStr(Di) + ' DE ' + NomMes[Me] + ' DE ' + IntToStr(An);
  Grafica.dTermino := EncodeDate(An, Me, 1);
  Cuenta := 0;
  dPaso := Grafica.dInicio;
  while dPaso <= Grafica.dTermino do
  begin
    dPaso := IncMonth(dPaso);
    Inc(Cuenta);
  end;
  NumMes := Cuenta;

  // Calcular tamaño maximo de barra mensual
  Maximo := Trunc(65536 / Cuenta);
  if Maximo > 100 then
    Grafica.iMesLargo := 100 // Tamaño maximo de barra de 100 pixels
  else
    Grafica.iMesLargo := Maximo; // Tamaño máximo de barra

  Grafica.iDuracion := Cuenta; // Duración de la gráfica en meses
  Grafica.iWidth := ((Cuenta + 1) * Grafica.iMesLargo); // Ancho de la gráfica en pixels
  if Grafica.iWidth < Screen.Width then
    Grafica.iWidth := Screen.Width;


  // Modificar los valores del scrollbar
  ScrollBar1.Position := 0;
  sbMax := Cuenta;
  if sbMax - Trunc(PaintBox1.Width / Grafica.iMesLargo) < 0 then
    ScrollBar1.Max := 0
  Else
    ScrollBar1.Max := sbMax - Trunc(PaintBox1.Width / Grafica.iMesLargo);
  Margen := Trunc(Grafica.iWidth / 100);
  if Margen <= 0 then Margen := 1;
  ScrollBar1.SmallChange := 1;
  ScrollBar1.LargeChange := 3;

  {*****************************************************************************
   * Inicia rutina de generación de fondo de gráfica}
  FreeAndNil(Grafica.imgOriginal);
  Grafica.imgOriginal := TImage.Create(nil); // Imagen original del fondo del área de gráfica
  Grafica.imgOriginal.Top := 0;
  Grafica.imgOriginal.Left := 0;
  Grafica.imgOriginal.Width := Grafica.iWidth;
  Grafica.imgOriginal.Height := Screen.Height;

  // Diseñar el fondo de la gráfica
  Grafica.imgOriginal.Canvas.Brush.Color := clWhite;
  Grafica.imgOriginal.Canvas.Pen.Color := clWhite;
  Grafica.imgOriginal.Canvas.FillRect(Grafica.imgOriginal.Canvas.ClipRect);

  // Colocar el fondo del calendario
  Grafica.imgOriginal.Canvas.Pen.Color := clBlack;
  Grafica.imgOriginal.Canvas.Brush.Color := clBtnFace;
  Grafica.imgOriginal.Canvas.Rectangle(0,0,Grafica.imgOriginal.Width,sgDatos.RowHeights[0] + 2);

  // Determinar el espacio necesario para centrar el pedo
  Margen := Trunc((sgDatos.RowHeights[0] - Grafica.imgOriginal.Canvas.TextHeight('ENERO')) / 2);

  // Colocar las línea de división de la gráfica
  Grafica.imgOriginal.Canvas.Pen.Color := clBlack;
  Col := 0;
  dPaso := Grafica.dInicio;
  Grafica.imgOriginal.Canvas.Pen.Color := clSilver;
  for Cuenta := 0 to Grafica.iDuracion - 1 do
  begin
    DecodeDate(dPaso,An,Me,Di);
    Leyenda := NomMes[Me] + '/' + IntToStr(An);
    Grafica.imgOriginal.Canvas.Font.Size := 8;
    Grafica.imgOriginal.Canvas.TextOut(Trunc((Grafica.iMesLargo - Grafica.imgOriginal.Canvas.TextWidth(Leyenda)) / 2) + Col,Margen, NomMes[Me] + '/' + IntToStr(An));
    Grafica.imgOriginal.Canvas.MoveTo(Col, 0);
    Grafica.imgOriginal.Canvas.LineTo(Col, Grafica.imgOriginal.Height);
    Inc(Col, Grafica.iMesLargo);
    dPaso := IncMonth(dPaso);
  end;
  Grafica.imgOriginal.Canvas.MoveTo(Col, 0);
  Grafica.imgOriginal.Canvas.LineTo(Col, Grafica.imgOriginal.Height);

  {Termina rutina de fondo de grafica
   ****************************************************************************}

  // Inicializar lista de elementos de gráfica
  FreeAndNil(Lista);
  Lista := TStringList.Create;

  // Calcular el ancho de la columna cero
  if RadioGroup1.ItemIndex = 5 then
    sgDatos.ColWidths[0] := 100
  else
    sgDatos.ColWidths[0] := 50;

  // Leer todos los registros seleccionado
  OldWbs := '';
  Cuenta := 1;
  cObj := 0;
  TotalPar := 0;
  Ren := sgDatos.RowHeights[0] + 3;
  sgDatos.RowCount := qroDatos.RecordCount + 1;
  while not qroDatos.Eof do
  begin
    if OldWbs <> qroDatos.FieldValues['swbs'] then
    begin
      Texto := qroDatos.FieldValues['mDescripcion'];
      Rect.Top := 0;
      Rect.Left := 0;
      Rect.Bottom := sgDatos.RowHeights[Cuenta];
      Rect.Right := sgDatos.ColWidths[ColDesc];
      sgDatos.RowHeights[Cuenta] := DrawText(sgDatos.Canvas.Handle, PChar(Texto), -1, Rect, dt_wordbreak or dt_calcrect) + 6;

      sgDatos.Cells[0, Cuenta] := qroDatos.FieldValues['sNumeroActividad'];
      sgDatos.Cells[ColDesc, Cuenta] := qroDatos.FieldValues['mDescripcion'];

      if (RadioGroup1.ItemIndex = 0) Or (RadioGroup1.ItemIndex = 2) Or (RadioGroup1.ItemIndex = 3) then
      Begin
        sgDatos.Cells[ColUM, Cuenta] := qroDatos.FieldValues['sMedida'];
        sgDatos.Cells[ColCant, Cuenta] := qroDatos.FieldValues['dCantidadAnexo'];
        if RadioGroup1.ItemIndex = 0 then
        Begin
          sgDatos.Cells[ColPrecio, Cuenta] := qroDatos.FieldValues['dVentaMN'];
          sgDatos.Cells[ColTotal, Cuenta] := qroDatos.FieldValues['dVentaMN'] * qroDatos.FieldValues['dCantidadAnexo'];
          if qroDatos.FieldValues['sTipoActividad'] = 'Actividad' then
            TotalPar := TotalPar + (qroDatos.FieldValues['dVentaMN'] * qroDatos.FieldValues['dCantidadAnexo']);
        End;
        if RadioGroup1.ItemIndex = 2 then
        Begin
          sgDatos.Cells[ColIni, Cuenta] := FloatToStr(qroDatos.FieldByName('Inicio').AsFloat);
          sgDatos.Cells[ColFin, Cuenta] := FloatToStr(qroDatos.FieldByName('Termino').AsFloat);
        End;
        if RadioGroup1.ItemIndex = 3 then
        Begin
          sgDatos.Cells[ColPrecio, Cuenta] := qroDatos.FieldValues['dVentaDLL'];
          sgDatos.Cells[ColTotal, Cuenta] := qroDatos.FieldValues['dVentaDLL'] * qroDatos.FieldValues['dCantidadAnexo'];
          if qroDatos.FieldValues['sTipoActividad'] = 'Actividad' then
            TotalPar := TotalPar + (qroDatos.FieldValues['dVentaDLL'] * qroDatos.FieldValues['dCantidadAnexo']);
        End;
      End
      Else
      Begin
        if RadioGroup1.ItemIndex = 5 then
        Begin
          sgDatos.Cells[2, Cuenta] := qroDatos.FieldByName('sMedida').AsString;
          sgDatos.Cells[3, Cuenta] := qroDatos.FieldByName('dCantidad').AsString;
        End
        Else
        Begin
          sgDatos.Cells[2, Cuenta] := qroDatos.FieldByName('Inicio').AsString;
          sgDatos.Cells[3, Cuenta] := qroDatos.FieldByName('Termino').AsString;
        End;
      End;

      sgDatos.Cells[ColWbs, Cuenta] := qroDatos.FieldValues['sWbs'];

      Ren := Ren + sgDatos.RowHeights[Cuenta] + 1;
      Alto := sgDatos.RowHeights[Cuenta];
      Inc(Cuenta);
    end;

    // Cargar los elementos independientes para generar la gráfica
    cObj := Lista.AddObject(qrodatos.FieldValues['swbs'], TBarra.Create);
    TBarra(Lista.Objects[cObj]).sWbs := qrodatos.FieldValues['swbs'];
    TBarra(Lista.Objects[cObj]).Tipo := qroDatos.FieldValues['stipoactividad'];

    if qrodatos.FieldValues['stipoactividad'] = 'Actividad' then
    Begin
      if qroDatos.FieldValues['didfecha'] <> Null then
      Begin
        // Calcular las coordenadas para posicionamiento de barra de acuerdo al mes
        DecodeDate(qrodatos.FieldValues['didfecha'], An, Me, Di);
        dPaso := EncodeDate(An, Me, 1);
        pFecha := Grafica.dInicio;
        nMes := 0;
        while pFecha < dPaso do
        begin
          Inc(nMes);
          pFecha := IncMonth(pFecha);
        end;

        TBarra(Lista.Objects[cObj]).nMes := nMes;   // Número de mes donde se encuentra la barra

        // Verificar marca de inicio de barra (para dar aspecto de continuidad entre barras
        Margen := 0;
        if dPaso < qrodatos.FieldValues['Inicio'] then
          Margen := Trunc(((qrodatos.FieldValues['Inicio'] - dPaso) / DaysInMonth(dPaso)) * Grafica.iMesLargo)
        else
          if (OldWbs <> qroDatos.FieldValues['swbs']) or ((OldWbs = qroDatos.FieldValues['swbs']) and (OldnMes + 1 <> nMes)) then
            Margen := 1;

        TBarra(Lista.Objects[cObj]).X := (nMes * Grafica.iMesLargo) + Margen;
        TBarra(Lista.Objects[cObj]).Margen := Margen;
        TBarra(Lista.Objects[cObj]).XLey := (nMes * Grafica.iMesLargo);
        TBarra(Lista.Objects[cObj]).Width := TBarra(Lista.Objects[cObj]).X + Grafica.iMesLargo - Margen + 1;

        // Ok, la barra se generó hasta el último día del mes... verificar si esto es correcto
        Margen2 := Grafica.iMesLargo;
        dPaso := IncMonth(dPaso) - 1; // Avanzar hasta el último día de este mes
        DecodeDate(qrodatos.FieldValues['Termino'], An, Me, Di);
        if dPaso > qrodatos.FieldValues['Termino'] then
          Margen2 := Trunc((Di / DaysInMonth(dPaso)) * Grafica.iMesLargo) - Margen
        else
          if dPaso = qrodatos.FieldValues['Termino'] then
            Margen2 := (Grafica.iMesLargo - Margen)
          else
            Margen2 := (Grafica.iMesLargo - Margen) + 1;

        TBarra(Lista.Objects[cObj]).Width := Margen2;

        // Verificar que tipo de gráfica es
        case RadioGroup1.ItemIndex of
          0: begin
                // DE en MN
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['DEmn'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,2);
             end;
          1: Begin
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['dt'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,2);
             End;
          2: Begin
                // DT (cantidades)
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['DT'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,4);
             End;
          3: Begin
                // DE en USD
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['DEdll'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,2);
             End;
          4: Begin
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['dt'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,2);
             End;
          5: Begin
                TBarra(Lista.Objects[cObj]).CostoM := qroDatos.FieldValues['dt'];
                Leyenda := FloatToStrF(TBarra(Lista.Objects[cObj]).CostoM,ffNumber,12,2);
             End;
        end;

        FontSize := 8;
        Continua := True;
        while Continua do
        begin
          Grafica.imgOriginal.Canvas.Font.Size := FontSize;
          Continua := Grafica.imgOriginal.Canvas.TextWidth(Leyenda) > (Grafica.iMesLargo - 4);
          if Continua then
          begin
            Dec(FontSize);
            Continua := FontSize <> 0;
          end;
        end;

        // Justificar el texto a la derecha y centrarlo verticalmente
        Margen := Trunc((Grafica.iMesLargo - Grafica.imgOriginal.Canvas.TextWidth(Leyenda)) - 2);
        Margen2 := Trunc((Alto - Grafica.imgOriginal.Canvas.TextHeight(Leyenda)) / 2);

        TBarra(Lista.Objects[cObj]).Leyenda := Leyenda;
        TBarra(Lista.Objects[cObj]).SizeLeyenda := FontSize;
        TBarra(Lista.Objects[cObj]).MargenXLeyenda := Margen;
        TBarra(Lista.Objects[cObj]).MargenYLeyenda := Margen2;
      End;
    End;

    OldnMes := nMes;
    OldWbs := qroDatos.FieldValues['swbs'];
    qroDatos.Next;
  end;

  sgDatos.RowCount := Cuenta;
  Screen.Cursor := crDefault;
  Calculando := False;
  Result := True;
end;

procedure TfrmGraficador.Btn_AceptarClick(Sender: TObject);
begin
  try
    // Verificar si es una de las opciones disponibles
    {if RadioGroup1.ItemIndex = 5 then
    Begin
      ShowMessage('Esta opción se encuentra actualmente en desarrollo' + #10 + 'Disculpe las molestias ocacionadas...');
      Exit;
    End;}

    // Seleccionar los datos de acuerdo al tipo de gráfica que se haya seleccionado
    Btn_Aceptar.Enabled := False;

    qroDatos.Close;
    qroDatos.SQL.Clear;
    case RadioGroup1.ItemIndex of
      0, 2, 3: begin
            // Generar gráfica técnica
            qroDatos.SQL.Text := 'select a.didfecha, a.dt, a.demn, a.dedll, b.stipoactividad, b.snumeroactividad, b.swbs, b.dfechainicio as inicio, b.dfechafinal as termino, b.mdescripcion, b.iitemorden, b.smedida, b.dcantidadanexo, b.dventamn, b.dventadll ' + 'from actividadesxanexo b left join anexosmensuales a ' + 'on (b.scontrato = a.scontrato and b.sidconvenio = a.sidconvenio and b.swbs = a.swbs)' + ' where b.scontrato = :contrato and b.sidconvenio = :convenio order by iitemorden';
            qroDatos.ParamByName('contrato').AsString := global_contrato;
            qroDatos.ParamByName('convenio').AsString := global_convenio;
         end;
      1: Begin
            qroDatos.SQL.Text := 'select a.didfecha, a.dcantidad as dt, (a.dcantidad * b.dventamn) as demn, (a.dcantidad * b.dventadll) as dedll, a.sidpersonal as swbs, a.sidpersonal as snumeroactividad, ifnull(b.sdescripcion,"") as mdescripcion,' + ' "Actividad" as stipoactividad,' + ' b.dfechainicio as inicio, b.dfechafinal as termino' + ' from distribuciondepersonal a left join personal b on (b.scontrato = a.scontrato and b.sidpersonal = a.sidpersonal)' + ' where a.scontrato = :contrato and a.sidconvenio = :convenio and ((year(a.didfecha) < year(b.dfechafinal)) or (month(a.dIdFecha) <= month(b.dFechafinal) and YEAR(a.dIdFecha) = year(b.dFechafinal))) order by a.sidpersonal';
            qroDatos.ParamByName('contrato').AsString := global_contrato;
            qroDatos.ParamByName('convenio').AsString := global_convenio;
         End;
      4: Begin
            qroDatos.SQL.Text := 'select a.didfecha, a.dcantidad as dt, (a.dcantidad * b.dventamn) as demn, (a.dcantidad * b.dventadll) as dedll, a.sidequipo as swbs, a.sidequipo as snumeroactividad, ifnull(b.sdescripcion,"") as mdescripcion,' + ' "Actividad" as stipoactividad,' + ' b.dfechainicio as inicio, b.dfechafinal as termino' + ' from distribuciondeequipos a left join equipos b on (b.scontrato = a.scontrato and b.sidequipo = a.sidequipo)' + ' where a.scontrato = :contrato and a.sidconvenio = :convenio and ((year(a.didfecha) < year(b.dfechafinal)) or (month(a.dIdFecha) <= month(b.dFechafinal) and YEAR(a.dIdFecha) = year(b.dFechafinal))) order by a.sidequipo';
            qroDatos.ParamByName('contrato').AsString := global_contrato;
            qroDatos.ParamByName('convenio').AsString := global_convenio;
         End;
      5: Begin
            qroDatos.SQL.Text := 'select a.didfecha, a.dcantidad as dt, (a.dcantidad * b.dventamn) as demn, (a.dcantidad * b.dventadll) as dedll, a.sidmaterial as swbs, a.sidmaterial as snumeroactividad, ifnull(b.mdescripcion,"") as mdescripcion,' + ' "Actividad" as stipoactividad,' + ' b.dfechainicio as inicio, b.dfechafinal as termino,' + 'b.smedida, b.dcantidad from distribuciondematerial a left join insumos b on (b.scontrato = a.scontrato and b.sidinsumo = a.sidmaterial and b.sTipoActividad = "Material")' + ' where a.scontrato = :contrato and a.sidconvenio = :convenio and ((year(a.didfecha) < year(b.dfechafinal)) or (month(a.didfecha) <= month(b.dfechafinal) and year(a.didfecha) = year(b.dfechafinal))) order by a.sidmaterial';
            qroDatos.ParamByName('contrato').AsString := global_contrato;
            qroDatos.ParamByName('convenio').AsString := global_convenio;
         End;
    end;
    qroDatos.Open;

    // Verificar si se encontraron datos que graficar
    if qroDatos.RecordCount = 0 then
    begin
      Showmessage('No existen datos que graficar...');
      Exit;
    end;

    // Si existen datos, proceder a generar los cálculos necesario
    if Calculos then
      Dibuja;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Graficos Tecnico Economicos', 'Al generar grafica', 0);
    end;
  end;
end;

procedure TfrmGraficador.DBEdit1Enter(Sender: TObject);
begin
  dbedit1.Color := global_color_entradaERP;
end;

procedure TfrmGraficador.DBEdit1Exit(Sender: TObject);
begin
    dbedit1.Color := global_color_salidaPU;
end;

procedure TfrmGraficador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
    dbmemo1.SetFocus
end;

procedure TfrmGraficador.DBMemo1Enter(Sender: TObject);
begin
    dbmemo1.Color := global_color_entrada;
end;

procedure TfrmGraficador.DBMemo1Exit(Sender: TObject);
begin
    dbmemo1.Color := global_color_salida;
end;

procedure TfrmGraficador.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
    dbedit1.SetFocus
end;

procedure TfrmGraficador.Dibuja;
var
  Imagen: TImage;
  Ren, cObj, Cuenta, Alto, Margen, Margen2: Integer;
  OldWbs, Leyenda: String;
  FontSize: Word;
  Continua: Boolean;
  Temp, rScr: Integer;
begin
  if (Assigned(Grafica.imgOriginal)) And (Not Calculando) then
  Begin
    Temp := sbMax - Trunc(PaintBox1.Width / Grafica.iMesLargo);
    if Temp < 0 then
      Temp := 0;

    if Temp < ScrollBar1.Position then
      ScrollBar1.Position := Temp;

    ScrollBar1.Max := Temp;

    // Crear la imagen para generar ahí las graficas necesarias
    Imagen := TImage.Create(Nil);
    Imagen.Top := 0;
    Imagen.Left := 0;
    Imagen.Width := Grafica.iWidth;
    Imagen.Height := PaintBox1.Height;

    BitBlt(Imagen.Canvas.Handle, 0, 0, Imagen.Width, Imagen.Height, Grafica.imgOriginal.Canvas.Handle, 0, 0, SrcCopy);

    // Localizar el primer elemento del wbs seleccionado
    cObj := 0;
    rScr := sgDatos.TopRow - 1;   // Número de elementos fuera de visual hacia arriba
    While (TBarra(Lista.Objects[cObj]).sWbs <> sgDatos.Cells[ColWbs,sgDatos.TopRow]) And (cObj < Lista.Count) Do
      Inc(cObj);

    OldWbs := '';
    Cuenta := sgDatos.TopRow;
    Ren := sgDatos.RowHeights[0] + 3;
    while (cObj < Lista.Count) And (Ren <= Imagen.Height) do
    begin
      if OldWbs <> TBarra(Lista.Objects[cObj]).sWbs then
      begin
        Imagen.Canvas.Pen.Color := clSilver;
        Imagen.Canvas.MoveTo(0, Ren);
        Imagen.Canvas.LineTo(Grafica.iWidth, Ren);

        Ren := Ren + sgDatos.RowHeights[Cuenta] + 1;
        Alto := sgDatos.RowHeights[Cuenta];
        Inc(Cuenta);
      end;

      Imagen.Canvas.Font.Size := TBarra(Lista.Objects[cObj]).SizeLeyenda;
      Margen2 := Trunc((Alto - Imagen.Canvas.TextHeight(Leyenda)) / 2);

      Imagen.Canvas.Pen.Color := clBlack;
      Imagen.Canvas.Brush.Color := clWhite;
      Imagen.Canvas.Font.Size := TBarra(Lista.Objects[cObj]).SizeLeyenda;
      Imagen.Canvas.Rectangle(TBarra(Lista.Objects[cObj]).X, Ren - (sgDatos.RowHeights[Cuenta - 1] - 2), TBarra(Lista.Objects[cObj]).X + TBarra(Lista.Objects[cObj]).Width, Ren - sgDatos.RowHeights[Cuenta - 1] + AnchoBarra);
      Imagen.Canvas.TextOut(TBarra(Lista.Objects[cObj]).MargenXLeyenda + TBarra(Lista.Objects[cObj]).xLey, mARGEN2 + Ren - (sgDatos.RowHeights[Cuenta - 1]) + 2, TBarra(Lista.Objects[cObj]).Leyenda);

      OldWbs := TBarra(Lista.Objects[cObj]).sWbs;
      Inc(cObj);
    end;

    BitBlt(PaintBox1.Canvas.Handle, 0, 0, Imagen.Width, Imagen.Height, Imagen.Canvas.Handle, ScrollBar1.Position * Grafica.iMesLargo, 0, SrcCopy);
    FreeAndNil(Imagen);
  End;
end;

procedure TfrmGraficador.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
        dbedit1.SetFocus;
end;

procedure TfrmGraficador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  botonpermiso.free;
  FreeAndNil(Grafica.imgOriginal);
  Action := caFree;
end;

procedure TfrmGraficador.FormCreate(Sender: TObject);
var
  Cuenta: Integer;
begin
  Grafica := TGrafica.Create;
  Grafica.iMesLargo := 100; // Lago correspondiente a un mes
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
end;

procedure TfrmGraficador.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'Graficador');
  if not BotonPermiso.imprimir then
   Begin
     sSpeedButton1.Enabled:=False;
     sSpeedButton2.Enabled:=False;
   End; 
  Self.RadioGroup1.ItemIndex := 0; // Seleccionar por default la primera opción del radiogrupo
  OrigPrecio := sgDatos.ColWidths[ColPrecio];
  OrigTotal := sgDatos.ColWidths[ColTotal];
end;

procedure TfrmGraficador.PaintBox1Paint(Sender: TObject);
begin
  Dibuja;
end;

procedure TfrmGraficador.RadioGroup1Click(Sender: TObject);
begin
  Btn_Aceptar.Enabled := True;
end;

procedure TfrmGraficador.ScrollBar1Change(Sender: TObject);
begin
  Dibuja;
end;

procedure TfrmGraficador.sgDatosDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
Var
  PColor: TColor;
  Texto: String;
begin
  if (ACol = ColDesc) And (ARow > 0) then
  Begin
    Texto := sgDatos.Cells[ACol,ARow];
    // Eliminar los datos originales del rectangulo
    PColor := sgDAtos.Canvas.Pen.Color;

    sgDAtos.Canvas.Pen.Color := sgDAtos.Canvas.Brush.Color;
    sgDatos.Canvas.FillRect(Rect);

    sgDAtos.Canvas.Pen.Color := pColor;
    DrawText(sgDatos.Canvas.Handle,pChar(Texto),-1,Rect,dt_wordbreak);
  End;
end;

procedure TfrmGraficador.sgDatosTopLeftChanged(Sender: TObject);
begin
  Dibuja;
end;

procedure TfrmGraficador.sSpeedButton1Click(Sender: TObject);
begin
  try
    if Assigned(Grafica.imgOriginal) then
      GenerarExcel(Imprimir); // Generar la gráfica hacia excel
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Graficos Tecnico Economicos', 'Al imprimir', 0);
    end;
  end;
end;

procedure TfrmGraficador.sSpeedButton2Click(Sender: TObject);
begin
  try
    if Assigned(Grafica.imgOriginal) then
      GenerarExcel(Not Imprimir); // Generar la gráfica hacia excel
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Graficos Tecnico Economicos', 'Al Exportar a Excel', 0);
    end;
  end;
end;

Function Linea(Cadena: String; Cual: Integer; Delimitador: Char): String;
Var
  Cta, nCad: Integer;
  Sub: String;
  Continua: Boolean;
Begin
  Cta := 0;
  nCad := 0;

  while (Cta < Length(Cadena)) And (nCad < Cual) do
  Begin
    Inc(Cta);
    if ((Cadena[Cta] = Delimitador) Or (Cadena[Cta] = #10)) Or (Cta = Length(Cadena)) then
      Inc(nCad);
    if (Cadena[Cta] <> Delimitador) And (Cadena[Cta] <> #10) then
      Sub := Sub + Cadena[Cta];
  End;
  if nCad = Cual then
    Result := Sub
  Else
    Result := '';
End;

Procedure TfrmGraficador.GenerarExcel(Imprimir: Boolean);
Var
  Excel, Book, Hoja: Variant;
  Cta, Col, Resp, Ren, OldRen, myRow, Margen, PixelWidth, Largo: Integer;
  fName, Leyenda, NomCliente: String;
  OpenD: TOpenDialog;
  OldWbs: String;
  Continua: Boolean;
  cmWidth, Media: Real;
  fs: TStream;
  An,Me,Di: Word;
  dPaso: TDate;
Begin
  // Solicitar el nombre del archivo
  OpenD := TOpenDialog.Create(self);
  OpenD.Filter := 'Archivos de MS EXCEL|*.xls';
  OpenD.FilterIndex := 1;

  if Not Imprimir then
  Begin
    OpenD.FileName := Edit1.Text + '.xls';

    // Verificar la extención en el nombre de archivo
    If openD.Execute Then
      fName := OpenD.FileName
    Else
      Exit;
  End;

  // Mostrar la barra de avance para que el usuario no se desespere
  ProgressBar1.Position := 0;
  Panel8.Height := 16;

  // Crear el objeto para comunicación con excel
  Excel := CreateOleObject('Excel.Application');
  Book := Excel.WorkBooks.add;
  Hoja := Excel.Sheets[1];
  Excel.Visible := False;
  Excel.ScreenUpdating := False;
  Excel.DisplayAlerts := False;

  //  Dar amplitud a las columnas de los titulos
  Margen := 0;
  for Ren := 0 to sgDatos.ColCount - 1 do
  Begin
    Leyenda := Chr(65 + Ren) + ':' + Chr(65 + Ren);
    Excel.Columns[Leyenda].ColumnWidth := AjusteExcel(sgDatos.ColWidths[Ren], Columna);
    Margen := Margen + Excel.Columns[Leyenda].Width;
  End;

  // Determinar el ajuste necesario para ancho de columnas de acuerdo a pixels
  CmWidth := Grafica.iMesLargo;
  Continua := True;
  Repeat
    Excel.Columns[Chr(65 + sgDatos.ColCount + Ren) + ':' + Chr(65 + sgDatos.ColCount + Ren)].ColumnWidth := CmWidth;
    PixelWidth := Excel.Columns[Chr(65 + sgDatos.ColCount + Ren) + ':' + Chr(65 + sgDatos.ColCount + Ren)].Width;
    Continua := PixelWidth > Grafica.iMesLargo;
    if Continua then
    Begin
      Media := Grafica.iMesLargo / PixelWidth;
      CmWidth := CmWidth - ((1 - Media) * CmWidth);
    End;
  Until Not Continua;

  // Dar amplitud a las columnas de la grafica
  Excel.Columns[Chr(64 + sgDatos.ColCount + 1) + ':' + Chr(64 + sgDatos.ColCount + NumMes)].ColumnWidth := CmWidth;

  // Dar amplitur a los renglones del titulo
  Excel.Rows['1:1'].RowHeight := AltoRenTitulos;

  Ren := 0;
  OldRen := -1;

  // Considerar la altura de los renglones utilizados para el título
  OldWbs := TBarra(Lista.Objects[0]).sWbs;
  Media := 0;
  for myRow := 0 to RenTitulos - 1 do
    Media := Media + Excel.Rows[IntToStr(myRow + 1) + ':' + IntToStr(myRow + 1)].Height;

  // Insertar el logotipo de la empresa
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
  Hoja.Shapes.AddShape(1,0,0,100,AltoRenTitulos).Select;
  Excel.Selection.ShapeRange.Line.Visible := False;
  Excel.Selection.ShapeRange.Fill.UserPicture('c:\ImagenTemporal.tmp');

  // Agregar la información del contrato
  Hoja.Shapes.AddShape(1,101,0,(Margen + (NumMes * Grafica.iMesLargo)) - (100 + MargenR + 4),AltoRenTitulos).Select;
  Excel.Selection.ShapeRange.Line.Visible := msoFalse;

  NomCliente := 'PEMEX EXPLORACION Y PRODUCCION';
  Largo := Length(NomCliente);
  NomCliente := NomCliente + #10 + Linea(Connection.contrato.FieldValues['mCliente'], 1, #13) + #10 + #10;
  An := Length(NomCliente) - Largo;
  Excel.Selection.Characters.Text := NomCliente;
  NomCliente := NomCliente + Connection.Contrato.FieldValues['mDescripcion'];
  Me := Length(NomCliente) - An - Largo;
  Excel.Selection.Characters.Text := NomCliente;
  Excel.Selection.Characters[1,Largo].Font.Name := 'Arial';
  Excel.Selection.Characters[1,Largo].Font.FontStyle := 'Negrita';
  Excel.Selection.Characters[1,Largo].Font.Size := 14;
  Excel.Selection.Characters[1,Largo].Font.Strikethrough := False;

  Excel.Selection.Characters[Largo + 1,An].Font.Name := 'Arial';
  Excel.Selection.Characters[Largo + 1,An].Font.FontStyle := 'Negrita';
  Excel.Selection.Characters[Largo + 1,An].Font.Size := 12;
  Excel.Selection.Characters[Largo + 1,An].Font.Strikethrough := False;

  Excel.Selection.Characters[Largo + An + 1,Me].Font.Name := 'Arial';
  Excel.Selection.Characters[Largo + An + 1,Me].Font.FontStyle := 'Negrita';
  Excel.Selection.Characters[Largo + An + 1,Me].Font.Size := 8;
  Excel.Selection.Characters[Largo + An + 1,Me].Font.Strikethrough := False;
  Excel.Selection.HorizontalAlignment := xlCenter;

  DecodeDate(Now,An,Me,Di);
  Hoja.Shapes.AddShape(1,((Margen + (NumMes * Grafica.iMesLargo)) - (100 + MargenR + 4)),0,(100 + MargenR),AltoRenTitulos).Select;
  Excel.Selection.ShapeRange.Line.Visible := msoFalse;
  Case RadioGroup1.ItemIndex Of
    0: NomCliente := 'ANEXO "DE"' + #10 + 'PROGRAMA DE EROGACIONES EN MONEDA NACIONAL DE LA EJECUCION GENERAL DE LOS TRABAJOS' + #10;
    1: NomCliente := 'ANEXO "DMO"' + #10 + 'PROGRAMA CUANTIFICADO Y CALENDARIZADO DE SUMINISTRO UTILIZACIÓN MENSUAL DE LA MANO DE OBRA QUE INTERVIENE DIRECTAMENTE EN LA EJECUCION DE LOS TRABAJOS' + #10;
    2: NomCliente := 'ANEXO "DT"' + #10 + 'PROGRAMA CALENDARIZADO DE EJECUCION GENERAL DE LOS TRABAJOS' + #10 + '(CANTIDADES DE TRABAJO A REALIZAR POR MES)' + #10;
    3: NomCliente := 'ANEXO "DE"' + #10 + 'PROGRAMA DE EROGACIONES EN DOLARES AMERICANOS DE LA EJECUCION GENERAL DE LOS TRABAJOS' + #10;
    4: NomCliente := 'ANEXO "DME"' + #10 + 'PROGRAMA CUANTIFICADO Y CALENDARIZADO DE SUMINISTRO O UTILIZACION MENSUAL DE LA MAQUINARIA Y/O EQUIPO (EN HORAS EFECTIVAS DE TRABAJO)' + #10;
    5: NomCliente := 'ANEXO "DMA"' + #10 + 'PROGRAMA CUANTIFICADO Y CALENDARIZADO DE SUMINISTRO O UTILIZACION MENSUAL DE MATERIALES' + #10;
  End;
  NomCliente := NomCliente + 'CONTRATO No. ' + Global_Contrato + #10 + IntToStr(Di) + ' DE ' + NomMes[Me] + ' DE ' + IntToStr(An);
  Excel.Selection.Characters.Text := NomCliente;
  Excel.Selection.Characters[1,11].Font.Name := 'Arial';
  Excel.Selection.Characters[1,11].Font.FontStyle := 'Negrita';
  Excel.Selection.Characters[1,11].Font.Size := 10;
  Excel.Selection.Characters[1,11].Font.Strikethrough := False;

  Excel.Selection.Characters[12,Length(NomCliente)].Font.Name := 'Arial';
  Excel.Selection.Characters[12,Length(NomCliente)].Font.FontStyle := 'Normal';
  Excel.Selection.Characters[12,Length(NomCliente)].Font.Size := 8;
  Excel.Selection.Characters[12,Length(NomCliente)].Font.Strikethrough := False;

  Excel.Selection.HorizontalAlignment := xlRight;

  // Poner titulos del área de datos
  for Cta := 0 to sgDatos.ColCount - 1 do
    Excel.Cells[RenTitulos,Cta + 1].Value := sgDatos.Cells[Cta, 0];

  Col := sgDatos.ColCount + 1;
  dPaso := Grafica.dInicio;
  for Cta := 0 to Grafica.iDuracion - 1 do
  begin
    DecodeDate(dPaso,An,Me,Di);
    Leyenda := NomMes[Me] + '/' + IntToStr(An);

    Excel.Cells[RenTitulos,Col].Value := Leyenda;

    Inc(Col);
    dPaso := IncMonth(dPaso);
  end;

  // Recorrer todos los elementos para generarlos en excel
  for Cta := 0 to Lista.Count - 1 do
  Begin
    ProgressBar1.Position := Trunc((Cta / Lista.Count) * 100);

    if OldRen <> Ren then
    Begin
      Inc(myRow);
      Excel.Rows[IntToStr(myRow) + ':' + IntToStr(myRow)].RowHeight := AjusteExcel(sgDatos.RowHeights[myRow - RenTitulos], Renglon);
      Excel.Cells[myRow,1].Value := sgDatos.Cells[0,myRow - RenTitulos];
      Excel.Cells[myRow,2].Value := sgDatos.Cells[1,myRow - RenTitulos];
      Excel.Cells[myRow,3].Value := sgDatos.Cells[2,myRow - RenTitulos];
      Excel.Cells[myRow,4].Value := sgDatos.Cells[3,myRow - RenTitulos];
      Excel.Cells[myRow,5].Value := sgDatos.Cells[4,myRow - RenTitulos];
      Excel.Cells[myRow,6].Value := sgDatos.Cells[5,myRow - RenTitulos];
      Excel.Cells[myRow,7].Value := sgDatos.Cells[6,myRow - RenTitulos];
    End;

    if TBarra(Lista.Objects[Cta]).Tipo = 'Actividad' then
    Begin
      if TBarra(Lista.Objects[Cta]).Width > 0 then
      Begin
        // Calcular la posición de esta barra
        Hoja.Shapes.AddShape(61, AjusteVersion((Margen + (TBarra(Lista.Objects[Cta]).nMes * Grafica.iMesLargo)-1) + TBarra(Lista.Objects[Cta]).Margen), Media + 3, AjusteVersion(TBarra(Lista.Objects[Cta]).Width - 1), AnchoBarraExcel).Select;
        Excel.Selection.ShapeRange.Fill.Transparency := 1;
        Excel.Cells[myRow,sgDatos.ColCount + TBarra(Lista.Objects[Cta]).nMes + 1] := TBarra(Lista.Objects[Cta]).CostoM;
      End;
    End;

    OldRen := Ren;
    if Cta < Lista.Count - 1  then
    Begin
      if OldWbs <> TBarra(Lista.Objects[Cta + 1]).sWbs then
      Begin
        Ren := Ren + Excel.Rows[IntToStr(myRow) + ':' + IntToStr(myRow)].RowHeight;
        Media := Media + Excel.Rows[IntToStr(myRow) + ':' + IntToStr(myRow)].Height;
      End;

      OldWbs := TBarra(Lista.Objects[Cta + 1]).sWbs;
    End;
  End;

  Excel.Columns['A:A'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlTop;

  Excel.Columns['B:B'].Select;
  Excel.Selection.HorizontalAlignment := xlJustify;
  Excel.Selection.VerticalAlignment := xlTop;
  Excel.Selection.WrapText := False;

  Excel.Columns['C:C'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlTop;
  Excel.Selection.WrapText := False;

  Excel.Columns['D:D'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlTop;
  Excel.Selection.NumberFormat := '#,##0.00';
  Excel.Selection.WrapText := False;

  if (RadioGroup1.ItemIndex = 0) Or (RadioGroup1.ItemIndex = 3) then
  Begin
    Excel.Columns['E:E'].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlTop;
    Excel.Selection.NumberFormat := '#,##0.00';
    Excel.Selection.WrapText := False;

    Excel.Columns['F:F'].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlTop;
    Excel.Selection.NumberFormat := '#,##0.00';
    Excel.Selection.WrapText := False;
  End;
  if RadioGroup1.ItemIndex = 2 then
  Begin
    Excel.Columns['E:E'].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlTop;
    Excel.Selection.NumberFormat := 'd/mm/aaaa';
    Excel.Selection.WrapText := False;

    Excel.Columns['F:F'].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlTop;
    Excel.Selection.NumberFormat := 'd/mm/aaaa';
    Excel.Selection.WrapText := False;
  End;

  Excel.Columns['G:G'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlTop;
  Excel.Selection.WrapText := False;

  // Colocar línea de totales solo si se trata de una grafica económica y pie de página correspondiente
  if (RadioGroup1.ItemIndex = 0) Or (RadioGroup1.ItemIndex = 3) then
  Begin
    Inc(myRow);
    Excel.Cells[myRow, 1].Value := 'TOTAL PARCIAL:';
    Excel.Cells[myRow + 1, 1].Value := 'TOTAL ACUMULADO:';
    Excel.Cells[myRow, 1].HorizontalAlignment := UExcel.General;
    Excel.Cells[myRow + 1, 1].HorizontalAlignment := UExcel.General;
    Excel.Cells[myRow, ColTotal + 1].Value := TotalPar;
    for Cta := 1 to NumMes do
    Begin
      Excel.Cells[myRow, sgDatos.ColCount + Cta].FormulaR1C1 := '=+SUM(R[-' + IntToStr(1 + myRow - RenTitulos) + ']C:R[-1]C)';
      Excel.Cells[myRow + 1, sgDatos.ColCount + Cta].FormulaR1C1 := '=+R[-1]C+RC[-1]';
    End;
    Inc(myRow);
    LeftFooter := '';
  End;

  // Colocar pie de página adecuado a grafica técnica
  if RadioGroup1.ItemIndex = 2 then
  Begin
    DecodeDate(Grafica.dRealInicio,An,Me,Di);
    LeftFooter := 'PLAZO DE EJECUCIÓN: ' + FloatToStr(Grafica.dRealTermino - Grafica.dRealInicio) + 'DÍAS NATURALES' + #10 + 'INICIA: ' + IntToStr(Di) + ' DE ' + NomMes[Me] + ' DE ' + IntToStr(An) + #10 + 'TERMINA: ';
    DecodeDate(Grafica.dRealTermino,An,Me,Di);
    LeftFooter := LeftFooter + IntToStr(Di) + ' DE ' + NomMes[Me] + ' DE ' + IntToStr(An);
  End;

  Excel.ActiveWindow.DisplayGridlines := False;

  // Dar formato a los títulos
  Leyenda := 'A' + IntToStr(RenTitulos) + ':' + ColumnaNombre(sgDatos.ColCount + NumMes) + IntToStr(RenTitulos);
  Excel.Range[Leyenda].Select;
  Excel.Selection.Font.Name := 'Arial';
  Excel.Selection.Font.FontStyle := 'Normal';
  Excel.Selection.Font.Size := 10;
  Excel.Selection.Font.ColorIndex := 2;

  Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeLeft].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeTop].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeBottom].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeRight].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
  Excel.Selection.Interior.ColorIndex := 15;
  Excel.Selection.Interior.Pattern := UExcel.Solid;
  Excel.Selection.Interior.PatternColorIndex := 24;

  // Dar formato a las cantidades dentro del área de gráfica
  Leyenda := ColumnaNombre(sgDatos.ColCount + 1) + ':' + ColumnaNombre(sgDatos.ColCount + NumMes);
  Excel.Columns[Leyenda].Select;
  Excel.Selection.NumberFormat := '#,##0.00';
  Excel.Selection.VerticalAlignment := xlCenter;

  // Dar formato de lineas a la gráfica
  Leyenda := 'A' + IntToStr(RenTitulos + 1) + ':' + ColumnaNombre(sgDatos.ColCount + NumMes) + IntToStr(myRow);
  Excel.Range[Leyenda].Select;
  Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeLeft].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeTop].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeBottom].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeRight].Weight := UExcel.Medium;
  Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
  if RenTitulos + 1 < myRow then
  Begin
    Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;
  End;

  Excel.ActiveSheet.PageSetup.PrintArea := '$A:$' + ColumnaNombre(sgDatos.ColCount + NumMes);  // Asignar el área de impresión
  Excel.ActiveSheet.PageSetup.PrintTitleRows := '$1:$' + IntToStr(RenTitulos);

  Excel.ActiveSheet.PageSetup.LeftFooter := LeftFooter;
  Excel.ActiveSheet.PageSetup.CenterFooter := Connection.configuracion.FieldValues['sNombre'] + Chr(10) + 'PÁG. No. &P';
  Excel.ActiveSheet.PageSetup.RightFooter := '';
  Excel.ActiveSheet.PageSetup.LeftMargin := 5;
  Excel.ActiveSheet.PageSetup.RightMargin := 5;
  Excel.ActiveSheet.PageSetup.TopMargin := 5;
  Excel.ActiveSheet.PageSetup.BottomMargin := 30;
  Excel.ActiveSheet.PageSetup.HeaderMargin := 0;
  Excel.ActiveSheet.PageSetup.FooterMargin := 5;
  Excel.ActiveSheet.PageSetup.CenterHorizontally := True;
  Excel.ActiveSheet.PageSetup.CenterVertically := False;
  Excel.ActiveSheet.PageSetup.Orientation := UExcel.LandScape;
  Excel.ActiveSheet.PageSetup.Zoom := False;
  Excel.ActiveSheet.PageSetup.FitToPagesWide := 1;
  Excel.ActiveSheet.PageSetup.FitToPagesTall := False;

  // Inmovilizar paneles
  Excel.Range['A' + IntToStr(RenTitulos + 1)].Select;
  Excel.ActiveWindow.FreezePanes := True;

  Panel8.Height := 0;

  if Imprimir then
  Begin
{    Hoja.PageSetup.LeftMargin := 1;
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
    Hoja.PageSetup.FitToPagesTall := 1;}
    Excel.Visible := True;
    Excel.ActiveWindow.SelectedSheets.PrintPreview;
    Excel.Quit;
  End
  Else
  Begin
    Continua := True;
    while Continua do
    Begin
      Try
        Book.SaveAs(fName, -4143, '', '', False, False);
        Continua := False;
      Except
        Continua := MessageDlg('Un archivo de EXCEL con el mismo nombre del archivo que está intentando grabar se encuentra abierto en este momento.' + #10 + 'No es posible tener en memoria dos archivos de EXCEL con el mismo nombre al mismo tiempo.' + #10 + #10 + 'Debe cerrar primero este archivo y posteriormente proceder a intentar grabar nuevamente el archivo', mtConfirmation, [mbOk,mbCancel], 0) = mrOk;
      End;
    End;

    If MessageDlg('¿Desea ver ahora el archivo que fué generado?',mtconfirmation,[mbYes,mbNo],0) = mrYes Then
    Begin
      Excel.Visible := True;
      Excel.ScreenUpdating := True;
      Excel.DisplayAlerts := True;
    End
    Else
    Begin
      Excel.Quit;
    End;
  End;
End;

end.

