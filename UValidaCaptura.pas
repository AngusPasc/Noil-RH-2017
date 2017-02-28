unit UValidaCaptura;

interface

Uses
  Forms, StdCtrls, DBCtrls, Classes, Buttons, Grids, Graphics, Windows,
  ExtCtrls, RXDBCtrl, rxCurrEdit;

type
  TError = Class
    X,Y: Integer;
    Nombre: String;
    Descripcion: String;
    Objeto: TObject;
  End;

type
  TValidaCaptura = Class
  private
    VCadError: String;
    VContenedor: TForm;
    function fValidaCaptura: Boolean;
    function windowsDesktopCanvas: TCanvas;
    procedure DblClick(Sender: TObject);
  public
    constructor Create(Parent: TObject);
    property ValidaCaptura: Boolean read fValidaCaptura;
  End;

implementation

Const
  TagIdentificador = 64;

var
  Errores: TStringList;
  RespCanvas, WorkCanvas: Graphics.TBitMap;

constructor TValidaCaptura.Create(Parent: TObject);
begin
  VCadError := '';
  VContenedor := TForm(Parent);
  WorkCanvas := Graphics.TBitmap.Create;
  RespCanvas := Graphics.TBitMap.Create;
  WorkCanvas.Width := GetSystemMetrics(SM_CXSCREEN);
  WorkCanvas.Height := GetSystemMetrics(SM_CYSCREEN);
  RespCanvas.Width := GetSystemMetrics(SM_CXSCREEN);
  RespCanvas.Height := GetSystemMetrics(SM_CYSCREEN);
end;

function TValidaCaptura.windowsDesktopCanvas: TCanvas;
var
  DC: HDc;
begin
  DC := getWindowDC ( GetDeskTopWindow );
  result := TCanvas.Create;
  result.Handle := DC;
end;

procedure TValidaCaptura.DblClick(Sender: TObject);
var
  DskCanvas: TCanvas;
  Objeto: TError;
  cInicio, cFinal,
  rInicio, rFinal,
  cRel, rRel: Extended;
  Continua, Continua1: Boolean;
  Vel: Integer;
begin
  DskCanvas := windowsDesktopCanvas;

  //Objeto := TError.Create;
  Objeto := TError(Errores.Objects[TStringGrid(Sender).Row]);

  cInicio := TForm(TStringGrid(Sender).Parent).Left + TStringGrid(Sender).Left;
  cFinal := Objeto.X;

  rInicio := TForm(TStringGrid(Sender).Parent).Top + TStringGrid(Sender).Top + 50 + (TStringGrid(Sender).Row * TStringGrid(Sender).DefaultRowHeight);
  rFinal := Objeto.Y;

  if cInicio > cFinal then
    cRel := cInicio - cFinal
  else
    cRel := cFinal - cInicio;

  if rInicio > rFinal then
    rRel := rInicio - rFinal
  else
    rRel := rFinal - rInicio;

  if cRel > rRel then
  begin
    rRel := rRel / cRel;
    cRel := 1;
  end
  else
  begin
    cRel := cRel / rRel;
    rRel := 1;
  end;

  Continua := True;
  Continua1 := True;

  BitBlt(RespCanvas.Canvas.Handle, 0, 0, Screen.Width, Screen.Height, DskCanvas.Handle, 0, 0, SrcCopy);
  Vel := 100;
  WorkCanvas.Canvas.Brush.Color := clYellow;
  WorkCanvas.Canvas.Pen.Color := clBlack;
  while Continua or Continua1 do
  begin
    if Continua then
      if cInicio > cFinal then
      begin
        cInicio := cInicio - (Vel * cRel);
        Continua := cInicio > cFinal;
      end
      else
      begin
        cInicio := cInicio + (Vel * cRel);
        Continua := cInicio < cFinal;
      end;

    if Continua1 then
      if rInicio > rFinal then
      begin
        rInicio := rInicio - (Vel * rRel);
        Continua1 := rInicio > rFinal;
      end
      else
      begin
        rInicio := rInicio + (Vel * rRel);
        Continua1 := rInicio < rFinal;
      end;

    BitBlt(WorkCanvas.Canvas.Handle, 0, 0, Screen.Width, Screen.Height, RespCanvas.Canvas.Handle, 0, 0, SrcCopy);
    WorkCanvas.Canvas.Rectangle(Trunc(cInicio), Trunc(rInicio), Trunc(cInicio) + 10, Trunc(rInicio) + 10);
    BitBlt(DskCanvas.Handle, 0, 0, Screen.Width, Screen.Height, WorkCanvas.Canvas.Handle, 0, 0, SrcCopy);
  end;

  BitBlt(DskCanvas.Handle, 0, 0, Screen.Width, Screen.Height, RespCanvas.Canvas.Handle, 0, 0, SrcCopy);

  TEdit(Objeto.Objeto).SetFocus;
  TForm(TStringGrid(Sender).Parent).Close;
end;

function TValidaCaptura.fValidaCaptura;
var
  Cta: Integer;
  Valida: Boolean;
  Forma: TForm;
  Button1: TBitBtn;
  Grid: TStringGrid;
  sLabel: TLabel;
  Objeto: TError;
begin
  // Recorrer todos los objetos de la ventana para verificar si están capturados
  Errores := TStringList.Create;
  Errores.Clear;

  for Cta := 0 to VContenedor.ControlCount - 1 do
  begin
    if VContenedor.Controls[Cta].Tag = TagIdentificador then
    begin
      // Verificar el tipo de campo
      Valida := True;
      if VContenedor.Controls[Cta].ClassName = 'TDBEdit' then
        Valida := TDBEdit(VContenedor.Controls[Cta]).Text <> '';
      if VContenedor.Controls[Cta].ClassName = 'TEdit' then
        Valida := TEdit(VContenedor.Controls[Cta]).Text <> '';
      if VContenedor.Controls[Cta].ClassName = 'TRxDBCalcEdit' then
        Valida := TRxDBCalcEdit(VContenedor.Controls[Cta]).Value > 0;
      if VContenedor.Controls[Cta].ClassName = 'TRxCalcEdit' then
        Valida := TRxCalcEdit(VContenedor.Controls[Cta]).Value > 0;
      if VContenedor.Controls[Cta].ClassName = 'TDBMemo' then
        Valida := TDBMemo(VContenedor.Controls[Cta]).Text <> '';
      if VContenedor.Controls[Cta].ClassName = 'TDBComboBox' then
        Valida := TDBComboBox(VContenedor.Controls[Cta]).ItemIndex >= 0;
      if VContenedor.Controls[Cta].ClassName = 'TComboBox' then
        Valida := TComboBox(VContenedor.Controls[Cta]).ItemIndex >= 0;
      if VContenedor.Controls[Cta].ClassName = 'TDBLookUpComboBox' then
        Valida := TDBLookUpComboBox(VContenedor.Controls[Cta]).Text <> '';

      if Not Valida then
      begin
        Objeto := TError.Create;
        Objeto.X := VContenedor.Left + VContenedor.Controls[Cta].Left + Trunc(VContenedor.Controls[Cta].Width / 2);
        Objeto.Y := VContenedor.Top + VContenedor.Controls[Cta].Top + VContenedor.Controls[Cta].Height + 50;
        if VContenedor.Controls[Cta].Hint = '' then
          Objeto.Descripcion := VContenedor.Controls[Cta].Name
        else
          Objeto.Descripcion := VContenedor.Controls[Cta].Hint;
        Objeto.Objeto := VContenedor.Controls[Cta];
        Errores.AddObject(VContenedor.Controls[Cta].Name, Objeto);
      end;
    end;
  end;

  if Errores.Count > 0 then
  begin
    // Crear un formulario para mostrar los errores encontrador
    Application.CreateForm(TForm, Forma);
    Forma.Parent := Nil;
    Forma.Name := 'ErrorValida';
    Forma.Caption := 'Excepciones de captura...';
    Forma.Width := 350;
    Forma.Height := 400;
    Forma.Position := poScreenCenter;
    Button1 := TBitBtn.Create(Forma);
    Button1.Parent := Forma;
    Button1.Width := 75;
    Button1.Height := 25;
    Button1.Left := Trunc((Forma.Width - Button1.Width) / 2);
    Button1.Top := Forma.Height - Trunc(Button1.Height * 2.5);
    Button1.Kind := bkOk;
    Grid := TStringGrid.Create(Forma);
    Grid.Parent := Forma;
    Grid.Top := 25;
    Grid.Left := 6;
    Grid.Width := 330;
    Grid.Height := 200;
    Grid.FixedCols := 0;
    Grid.FixedRows := 0;
    Grid.ColCount := 1;
    Grid.ColWidths[0] := 330;
    Grid.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected,goRowSelect];
    Grid.ScrollBars := ssVertical;
    Grid.OnDblClick := DblClick;
    sLabel := TLabel.Create(Forma);
    sLabel.Parent := Forma;
    sLabel.Left := 6;
    slabel.Top := 4;
    sLabel.Font.Style := [fsBold];
    sLabel.Caption := 'Los siguientes campos deben ser capturados:';

    // Poblar el formulario con los errores
    Grid.RowCount := Errores.Count;
    for Cta := 0 to Errores.Count - 1 do
      Grid.Cells[0,Cta] := TError(Errores.Objects[Cta]).Descripcion;

    try
      Forma.ShowModal;
    finally
      Forma.Free;
    end;
  end;

  Valida := Errores.Count = 0;
  Errores.Free;

  Result := Valida;
end;

end.
