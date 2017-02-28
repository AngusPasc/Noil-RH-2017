unit frm_Zincroligent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, IniFiles, StdCtrls, ComCtrls, AdvGlowButton, ToolWin,
  AdvSmoothButton, ExtCtrls, NxCollection, Grids, DBGrids, frm_zinc_parametros,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, NxDBColumns,
  NxColumns, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, NxGrid,
  NxColumnClasses, ImgList, frm_Zinc_erroresDB, frm_Zinc_editarConexiones,
  frm_Zinc_ErroresTabla, global;

type
  TfrmZincroligent = class(TForm)
    MainMenu1: TMainMenu;
    Conectar1: TMenuItem;
    Panel2: TPanel;
    Agregarconexiones1: TMenuItem;
    EditarConexion1: TMenuItem;
    zq_1: TZQuery;
    zq_2: TZQuery;
    NextGrid1: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxImageColumn1: TNxImageColumn;
    NormalImageList: TImageList;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    StatusBar1: TStatusBar;
    NextGrid2: TNextGrid;
    NxIncrementColumn2: TNxIncrementColumn;
    NxTextColumn2: TNxTextColumn;
    zq_3: TZQuery;
    zq_4: TZQuery;
    NxMemoColumn1: TNxTextColumn;
    ProgressBar1: TProgressBar;
    NxMemoColumn2: TNxMemoColumn;
    Panel1: TPanel;
    BotonTabla1: TNxButton;
    BotonTabla2: TNxButton;
    Panel3: TPanel;
    Label1: TLabel;
    BotonError1: TNxButton;
    Panel_1: TPanel;
    Panel_2: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    NxButton3: TNxButton;
    NextGrid3: TNextGrid;
    sComboBox1: TComboBox;
    sComboBox2: TComboBox;
    procedure Panel2Resize(Sender: TObject);
    procedure Agregarconexiones1Click(Sender: TObject);
    procedure EditarConexion1Click(Sender: TObject);
    procedure BotonTabla1Click(Sender: TObject);
    procedure NextGrid1HeaderClick(Sender: TObject; ACol: Integer);
    procedure sComboBox1DropDown(Sender: TObject);
    procedure sComboBox2DropDown(Sender: TObject);
    procedure BotonTabla2Click(Sender: TObject);
    procedure BotonError1Click(Sender: TObject);
    procedure cargarTablas(bd,tabla:String);
    function compararTablas(tabla:String):Integer;
    procedure BarradeProgreso(Min,Max,Posicion,q:Integer);
    procedure NextGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
    procedure NextGrid2CellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles; CellState: TCellState);
    procedure NextGrid1CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure compararBD(bda,bdb:String);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MostrarPanel(Abrir:String);
    procedure NxButton1Click(Sender: TObject);
  private
    UltimoAbierto: string;
    procedure AbrirArchivo(Ruta: String);
  public
    { Public declarations }
  end;

var
  frmZincroligent: TfrmZincroligent;
  aDef,x,e,exerr:Integer;
  MensajeError:AnsiString;
  Lista1,Lista2,errores1,errores2,ListaDeIds,ListaDeIds2,
  SubLista1,SubLista2,SubErrores1,SubErrores2:TStringList;
  Iguales:Boolean;

implementation

uses frm_Zinc_agregarConexion;

{$R *.dfm}

function buscarCadena (lista : TStringList; cadena : string) : boolean;
var
 posicion : integer;
begin
  lista.Sort;
  buscarCadena := lista.Find(cadena, posicion);
end;

procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings));
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure TfrmZincroligent.cargarTablas(bd,tabla:String);
Var
  Ini:TIniFile;
  i,n:Integer;
  Lista,xt:TStringList;
  Seccion:Boolean;
  Query,Grid:TComponent;
begin
  Ini:=TIniFile.Create(RutaINI);
  Try
    if tabla='1' then begin
      HostDBa:=Ini.ReadString('ConexionesDB',bd,'Localhost');
      PortDBa:=Ini.ReadInteger(bd,'Puerto',3306);
      UserDBa:=Ini.ReadString(bd,'Usuario',IntelUser);
      PassDBa:=Ini.ReadString(bd,'Pass',IntelPass);
    end else begin
      HostDBb:=Ini.ReadString('ConexionesDB',bd,'Localhost');
      PortDBb:=Ini.ReadInteger(bd,'Puerto',3306);
      UserDBb:=Ini.ReadString(bd,'Usuario',IntelUser);
      PassDBb:=Ini.ReadString(bd,'Pass',IntelPass);
    end;
    frmparametros.conectarDB(bd);

    Query:=FindComponent('zq_'+tabla);
    TZQuery(Query).Close;
    TZQuery(Query).Params.ParamByName('database').Value:=bd;
    TZQuery(Query).Params.ParamByName('database').DataType:=ftString;
    TZQuery(Query).Open;
    TZQuery(Query).First;

    Grid:=FindComponent('NextGrid'+tabla);
    TNextGrid(Grid).ClearRows;
    n:=TZQuery(Query).RecordCount;
    i:=0;
    TNextGrid(Grid).AddRow(n);
    TNextGrid(Grid).BeginUpdate;
    while Not TZQuery(Query).EoF do begin
      TNextGrid(Grid).Cell[1,i].AsString:=TZQuery(Query).FieldValues['TABLE_NAME'];
      if TNextGrid(Grid).Name = 'NextGrid1' then begin
        TNextGrid(Grid).Cell[3,i].AsInteger:=0;
        TNextGrid(Grid).Cell[3,i].Hint:='Sincronizar '+TZQuery(Query).FieldValues['TABLE_NAME'];
      end;
      Inc(i);
      TZQuery(Query).Next;
    end;
    TNextGrid(Grid).EndUpdate;
    aDef:=0;
    if Tabla = '2' then
      frmZincroligent.Caption := 'Zincroligent: Sincronizando '+DB1+' - '+DB2;
  Finally
    Ini.Free;
  End;
end;

function TfrmZincroligent.compararTablas(tabla:String):integer;
Var
  ProgressBarStyle:Integer;
  hg:Integer;
begin
  SubLista1:=TStringList.Create;
  SubLista2:=TStringList.Create;
  SubErrores1:=TStringList.Create;
  SubErrores2:=TStringList.Create;
      //Verificar que cada una de las tablas tengan los mismos campos.
  frmparametros.conectarDB(DB1);
  zq_3.SQL.Clear;
  zq_3.SQL.Text:='DESCRIBE '+DB1+'.'+tabla;
  zq_3.Open;
  zq_3.First;
  while Not zq_3.EoF do begin
        {Cargas la tabla original en un string list}
    subLista1.Add(zq_3.FieldValues['Field']);
    zq_3.Next;
  end;
  zq_3.Close;
        {Carga la misma tabla en la segunda base de datos y busca compatibilidad de campos}
  frmparametros.conectarDB(DB2);
  zq_4.SQL.Clear;
  zq_4.SQL.Text:='DESCRIBE '+DB2+'.'+tabla;
  zq_4.Open;
  zq_4.First;
        //Valor de x igual a 0 por que por defecto no hay errores.
  hg:=0;
  while Not zq_4.EoF do begin
    //Aquí cargas la segunda tabla en otro stringlist y al mismo tiempo verificas
    //los campos que existen en
    //la tabla copia pero no en la original:
    subLista2.Add(zq_4.FieldValues['Field']);
    zq_4.Next;
  end;
  zq_4.Close;
  MensajeError:='';
    for e := 0 to SubLista2.Count - 1 do begin
    //Acá solo buscas los registros que estan en la segunda pero no en la primera.
      if buscarCadena(subLista1,SubLista2[e]) = False then begin
        MensajeError:=MensajeError+SubLista2[e]+'*1,';
        //SubErrores2.Add(SubLista2[e]);
        //Inc(hg);
      end;
    end;
    for e := 0 to SubLista1.Count - 1 do begin
    //Acá solo buscas los registros que estan en la primera tabla pero no en la segunda.
      if buscarCadena(subLista2,SubLista1[e]) = False then begin
        MensajeError:=MensajeError+SubLista1[e]+'*2,';
        //SubErrores1.Add(SubLista1[e]);
        Inc(hg);
      end;
    end;
    SubLista1.Free;
    SubLista2.Free;
    //SubErrores1.Free;
    //SubErrores2.Free;
    compararTablas:=hg;
end;

procedure TfrmZincroligent.compararBD(bda,bdb:String);
Var
  i,o,z,p:Integer;
begin
  ListaDeIds:=TStringList.Create;
  //if NextGrid1.RowCount <> NextGrid2.RowCount then begin
    x:=0;
    exerr:=0;
    Errores1:=TStringList.Create;
    Errores2:=TStringList.Create;
    ListaDeIds:=TStringList.Create;
    ListaDeIds2:=TStringList.Create;
    SubLista1:=TStringList.Create;
    SubLista2:=TStringList.Create;
    SubErrores1:=TStringList.Create;
    SubErrores2:=TStringList.Create;

    Iguales:=False;
    Lista1:=TStringList.Create;
    for i := 0 to NextGrid1.RowCount - 1 do begin
      Lista1.Add(NextGrid1.Cells[1,i]);
    end;
    Lista2:=TStringList.Create;
    for i := 0 to NextGrid2.RowCount - 1 do begin
      Lista2.Add(NextGrid2.Cells[1,i]);
    end;

    BarradeProgreso(0,NextGrid1.RowCount,0,1);
    for i := 0 to NextGrid1.RowCount - 1 do begin
      ProgressBar1.Position:=ProgressBar1.Position + 1;
      NextGrid1.Cell[1,i].Color:=$00E6FEFF;
      if buscarCadena(Lista2,NextGrid1.Cells[1,i]) = False then begin
        Errores1.Add(NextGrid1.Cells[1,i]);
        ListaDeIds.Add(IntToStr(i));{Esta lista sirve para detectar la posición en la tabla y así colorearla de rojo si no existe}
        NextGrid1.Cell[1,i].Color:=clRed;
        Inc(exerr);
      end else begin
        o:=compararTablas(NextGrid1.Cells[1,i]);
        if o > 0 then begin
          NextGrid1.Cell[1,i].Color:=$00DFFFFE;
          NextGrid1.Cell[4,i].AsString:='Ver Detalles (' + IntToStr(o)+')';
          NextGrid1.Cell[5,i].AsString:=MensajeError;
          ListaDeIds.Add(IntToStr(i));
        end;
      end;
    end;
    BarradeProgreso(0,0,0,0);
    for i := 0 to NextGrid2.RowCount - 1 do begin
      NextGrid2.Cell[1,i].Color:=$00E6FEFF;
      if buscarCadena(Lista1,NextGrid2.Cells[1,i]) = False then begin
        Errores2.Add(NextGrid2.Cells[1,i]);
        ListaDeIds2.Add(IntToStr(i));
        NextGrid2.Cell[1,i].Color:=clRed;
      end;
    end;
    if NextGrid1.RowCount <> NextGrid2.RowCount then begin
      Label1.Font.Color:=clRed;
      Label1.Caption:='Las bases de datos tienen distinto número de tablas: BD1: ('+IntToStr(NextGrid1.RowCount)+'), BD2: ('+IntToStr(NextGrid2.RowCount)+')';
      BotonError1.Left:=Label1.Width + 18;
      BotonError1.Visible:=True;
    end else begin
      Label1.Caption:='';
      BotonError1.Visible:=False;
    end;

    if exerr > 0 then
      BotonError1.Visible:=True
    else
      BotonError1.Visible:=False;
end;

procedure TfrmZincroligent.BarradeProgreso(Min,Max,Posicion,q:Integer);
Var
  ProgressBarStyle:Integer;
begin
  if q=1 then begin
  //enable status bar 2nd Panel custom drawing
    StatusBar1.Panels[2].Style := psOwnerDraw;
  //place the progress bar into the status bar
    ProgressBar1.Parent := StatusBar1;
  //remove progress bar border
    ProgressBarStyle := GetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE);
    ProgressBarStyle := ProgressBarStyle - WS_EX_STATICEDGE;
    SetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE, ProgressBarStyle);

    ProgressBar1.Min:=Min;
    ProgressBar1.Max:=Max;
    ProgressBar1.Position:=Posicion;
    ProgressBar1.Visible:=True;
  end else begin
    ProgressBar1.Position:=Posicion;
    //ProgressBar1.Free;
    //ProgressBar1.Visible:=False;
  end;
end;

procedure TfrmZincroligent.AbrirArchivo(Ruta: string);
begin
  { abrimos el archivo y realizamos algunas modificaciones a la barra de título }
  try
    if Ruta <> '' then begin
      frmZincroligent.Caption := 'Notas - ' + Ruta;
      UltimoAbierto := Ruta;
    end;
  except
    on EFOpenError do
      ShowMessage('El archivo que se abrió la última vez ya no existe!');
  end;
end;


procedure TfrmZincroligent.Agregarconexiones1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmagregarConexion, frmagregarConexion);
  frmagregarConexion.Show;
end;


procedure TfrmZincroligent.BotonError1Click(Sender: TObject);
begin
  //ShowMessage(MensajeError);
  //FaltantesPrimera:=TStringList.Create;
  //FaltantesSegunda:=TStringList.Create;
  FaltantesPrimeraDB:=Errores2;
  FaltantesSegundaDB:=Errores1;
  Application.CreateForm(TfrmErroresDB, frmErroresDB);
  frmerroresDB.ShowModal;
end;

procedure TfrmZincroligent.BotonTabla1Click(Sender: TObject);
begin
  if sComboBox1.Text <> '' then begin
    DB1:=sComboBox1.Text;
    cargarTablas(sComboBox1.Text,'1');
    if DB2 <> '' then
      compararBD(DB1,DB2);
  end;
end;

procedure TfrmZincroligent.BotonTabla2Click(Sender: TObject);
begin
  if sComboBox2.Text <> '' then begin
    DB2:=sComboBox2.Text;
    cargarTablas(sComboBox2.Text,'2');
    compararBD(DB1,DB2);
  end;
end;

procedure TfrmZincroligent.Button1Click(Sender: TObject);
begin
  if Panel_1.Visible then begin
    MostrarPanel('Panel_2');
  end else
  if Panel_2.Visible then begin
    MostrarPanel('Panel_1');
  end;
end;

procedure TfrmZincroligent.EditarConexion1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmEditarConexiones, frmEditarConexiones);
  frmEditarConexiones.Show;
end;

procedure TfrmZincroligent.FormCreate(Sender: TObject);
Var
  x:Integer;
begin
  MostrarPanel('Panel_1');
end;

procedure TfrmZincroligent.MostrarPanel(Abrir:String);
Var
  x:Integer;
begin
 for x := 0 to ControlCount - 1 do begin
    if Controls[x] is TPanel then begin
      if Pos('_',TPanel(Controls[x]).Name) > 0 then begin
        if TPanel(Controls[x]).Name = Abrir then begin
          TPanel(Controls[x]).Visible:=True;
          TPanel(Controls[x]).BringToFront;
          TPanel(Controls[x]).Show;
        end else begin
          TPanel(Controls[x]).SendToBack;
          TPanel(Controls[x]).Visible:=False;
          TPanel(Controls[x]).Hide;
        end;
      end;
    end;
  end;
end;

procedure TfrmZincroligent.NextGrid1CellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if ACol = 4 then begin
    if NextGrid1.Cells[ACol, ARow] <> '' then begin
      Erroresdetabla:=NextGrid1.Cells[5,ARow];
      tabla1:=NextGrid1.Cells[1,ARow];
      tabla2:=tabla1;
      //MensajeCompleto:=NextGrid1.Cells[5,ARow];
      Application.CreateForm(TfrmErroresTabla, frmErroresTabla);
      frmErroresTabla.Show;
    end;
  end;
end;

procedure TfrmZincroligent.NextGrid1CellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if Iguales then begin
    TextColor:=clBlack;
  end else begin
    if (Assigned(ListaDeIds)) then begin
      for x := 0 to ListaDeIds.Count - 1 do begin
        if ARow = StrToInt(ListaDeIds[x]) then
          if NextGrid1.Cell[1,ARow].ActualColor = $00DFFFFE then
            TextColor:=clBlack;
          if NextGrid1.Cell[1,ARow].ActualColor = clRed then
            TextColor:=clWhite;
      end;
    end;
  end;
end;

procedure TfrmZincroligent.NextGrid1HeaderClick(Sender: TObject; ACol: Integer);
var i,o:integer;
begin
  if aDef=0 then begin
    o:=NextGrid1.RowCount;
    if ACol=2 then begin
      for I := 0 to o - 1 do begin
        NextGrid1.Cells[2,i]:='1';
      end;
    end;
    aDef:=1;
  end else begin
    o:=NextGrid1.RowCount;
    if ACol=2 then begin
      for I := 0 to o - 1 do begin
        NextGrid1.Cells[2,i]:='0';
      end;
    end;
    aDef:=0;
  end;
end;

procedure TfrmZincroligent.NextGrid2CellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if Iguales then begin
    TextColor:=clBlack;
  end else begin
    if (Assigned(ListaDeIds2)) then begin
      for x := 0 to ListaDeIds2.Count - 1 do begin
        if ARow = StrToInt(ListaDeIds2[x]) then
          TextColor:=clWhite;
      end;
    end;
  end;
end;

procedure TfrmZincroligent.NxButton1Click(Sender: TObject);
begin
  MostrarPanel('Panel_2');
end;

procedure TfrmZincroligent.Panel2Resize(Sender: TObject);
begin
  NextGrid1.Width:=Trunc((Panel2.Width/2) - 5);
  NextGrid2.Width:=Trunc((Panel2.Width/2) - 5);
  sComboBox2.Left:= NextGrid2.Left;
  BotonTabla2.Left:= (NextGrid2.Left + 143);
end;

procedure TfrmZincroligent.sComboBox1DropDown(Sender: TObject);
Var
  Lista,xt:TStringList;
  Ini:TIniFile;
  Seccion:Boolean;
  i,n:Integer;
begin
  sComboBox1.Clear;
  Lista:=TStringList.Create;
  Ini := TIniFile.Create(RutaINI);
  Try
    Seccion:=Ini.SectionExists('ConexionesDB');
    if Seccion then begin
      Ini.ReadSectionValues('ConexionesDB',Lista);
    end;
  Finally
    Ini.Free;
  End;
  if Lista.Count > 0 then begin
    for i := 0 to Lista.Count - 1 do begin
      xt:=TStringList.Create;
      split('=',Lista[i],xt);
      sComboBox1.AddItem(xt[0],NIL);
      xt.Free;
    end;
  end;
end;

procedure TfrmZincroligent.sComboBox2DropDown(Sender: TObject);
Var
  Lista,xt:TStringList;
  Ini:TIniFile;
  Seccion:Boolean;
  i,n:Integer;
begin
  if sComboBox1.Text <> '' then begin
    sComboBox2.Clear;
      Lista:=TStringList.Create;
      Ini := TIniFile.Create(RutaINI);
      Try
        Seccion:=Ini.SectionExists('ConexionesDB');
        if Seccion then begin
          Ini.ReadSectionValues('ConexionesDB',Lista);
        end;
      Finally
        Ini.Free;
      End;
      if Lista.Count > 0 then begin
        for i := 0 to Lista.Count - 1 do begin
          xt:=TStringList.Create;
          split('=',Lista[i],xt);
          if xt[0] <> sComboBox1.Text then
            sComboBox2.AddItem(xt[0],NIL);
          xt.Free;
        end;
      end;
  end;
end;

procedure TfrmZincroligent.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  if Panel = StatusBar1.Panels[2] then begin
    with ProgressBar1 do begin
      Top := Rect.Top;
      Left := Rect.Left;
      Width := Rect.Right - Rect.Left - 15;
      Height := Rect.Bottom - Rect.Top;
    end;
  end;
end;

end.
