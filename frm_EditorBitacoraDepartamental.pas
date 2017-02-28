unit frm_EditorBitacoraDepartamental;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
  ToolWin, ActnList, ImgList, DBCtrls, ZDataset,  DB, global,
  ZAbstractRODataset, ZAbstractDataset, Grids, BaseGrid, AdvGrid, DBAdvGrid,
  frxpngimage, AdvCircularProgress ;

type
  TfrmEditorBitacoraDepartamental = class(TForm)
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    Ruler: TPanel;
    FontDialog1: TFontDialog;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    StatusBar: TStatusBar;
    StandardToolBar: TToolBar;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    UndoButton: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    FontSize: TEdit;
    ToolButton11: TToolButton;
    UpDown1: TUpDown;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    ToolbarImages: TImageList;
    ActionList1: TActionList;
    FileNewCmd: TAction;
    FileOpenCmd: TAction;
    FileSaveCmd: TAction;
    FilePrintCmd: TAction;
    FileExitCmd: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Bevel1: TBevel;
    EditCutCmd: TAction;
    EditCopyCmd: TAction;
    EditPasteCmd: TAction;
    EditUndoCmd: TAction;
    EditFontCmd: TAction;
    FileSaveAsCmd: TAction;
    zqRegistro: TZQuery;
    dsRegistro: TDataSource;
    MemoFondo: TMemo;
    Editor: TDBMemo;

    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FilePrint(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure EditUndo(Sender: TObject);
    procedure EditCut(Sender: TObject);
    procedure EditCopy(Sender: TObject);
    procedure EditPaste(Sender: TObject);
    procedure SelectFont(Sender: TObject);
    procedure RulerResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure RichEditChange(Sender: TObject);
    procedure ActionList2Update(Action: TBasicAction;
      var Handled: Boolean);
    function Rtf2Html(Memo : TDBRichEdit) : String ;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);

  private
    FFileName: string;
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    function CurrText: TTextAttributes;
    procedure GetFontNames;
    procedure SetFileName(const FileName: String);
    procedure CheckFileSave;
    procedure SetupRuler;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure PerformFileOpen(const AFileName: string);
    procedure SetModified(Value: Boolean);
  end;

var
  frmEditorBitacoraDepartamental: TfrmEditorBitacoraDepartamental;

implementation

uses RichEdit, ShellAPI, frm_connection, frm_bitacoradepartamental_2;

resourcestring
  sSaveChanges = 'Save changes to %s?';
  sOverWrite = 'OK to overwrite %s';
  sUntitled = 'Untitled';
  sModified = 'Modified';
  sColRowInfo = 'Line: %3d   Col: %3d';

const
  RulerAdj = 4/3;
  GutterWid = 6;

  ENGLISH = (SUBLANG_ENGLISH_US shl 10) or LANG_ENGLISH;
  FRENCH  = (SUBLANG_FRENCH shl 10) or LANG_FRENCH;
  GERMAN  = (SUBLANG_GERMAN shl 10) or LANG_GERMAN;
  SPANISH  = (SUBLANG_SPANISH shl 10) or LANG_GERMAN;

{$R *.dfm}

procedure TfrmEditorBitacoraDepartamental.SelectionChange(Sender: TObject);
begin
  {with Editor.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end; }
end;

function TfrmEditorBitacoraDepartamental.CurrText: TTextAttributes;
begin
  {if Editor.SelLength > 0 then Result := Editor.SelAttributes
  else Result := Editor.DefAttributes;}
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TfrmEditorBitacoraDepartamental.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure TfrmEditorBitacoraDepartamental.SetFileName(const FileName: String);
begin
  FFileName := FileName;
  Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;

procedure TfrmEditorBitacoraDepartamental.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not Editor.Modified then Exit;
  SaveResp := MessageDlg(Format(sSaveChanges, [FFileName]),
    mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;

procedure TfrmEditorBitacoraDepartamental.SetupRuler;
var
  I: Integer;
  S: String;
begin
  SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
  Ruler.Caption := S;
end;

procedure TfrmEditorBitacoraDepartamental.SetEditRect;
var
  R: TRect;
begin
  with Editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

{ Event Handlers }

procedure TfrmEditorBitacoraDepartamental.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog.InitialDir := OpenDialog.InitialDir;
  SetFileName(sUntitled);
  GetFontNames;
  SetupRuler;
  SelectionChange(Self);
end;


procedure TfrmEditorBitacoraDepartamental.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False;
end;

procedure TfrmEditorBitacoraDepartamental.ToolButton1Click(Sender: TObject);
begin
  Editor.Modified := False;
  If zqRegistro.State <> dsEdit Then
      zqRegistro.Edit ;
end;

procedure TfrmEditorBitacoraDepartamental.PerformFileOpen(const AFileName: string);
begin
  Editor.Lines.LoadFromFile(AFileName);
  SetFileName(AFileName);
  Editor.SetFocus;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TfrmEditorBitacoraDepartamental.FileOpen(Sender: TObject);
begin
//  CheckFileSave;
  if OpenDialog.Execute then
  begin
    PerformFileOpen(OpenDialog.FileName);
    Editor.ReadOnly := ofReadOnly in OpenDialog.Options;
  end;
end;

procedure TfrmEditorBitacoraDepartamental.FileSave(Sender: TObject);
var
    Q_ReporteDiario : TZReadOnlyQuery;
begin
    Q_ReporteDiario := TZReadOnlyQuery.Create(self);
    Q_ReporteDiario.Connection := connection.zConnection;
    Q_ReporteDiario.Active := False;
    Q_ReporteDiario.SQL.Clear;
    Q_ReporteDiario.SQL.Add('select lStatus from reportediario where sContrato = :contrato and dIdFecha = :fecha and sNumeroOrden = :orden And sIdTurno = :Turno');
    Q_ReporteDiario.Params.ParamByName('Contrato').DataType := ftString;
    Q_ReporteDiario.Params.ParamByName('Contrato').Value    := param_global_contrato;
    Q_ReporteDiario.Params.ParamByName('Turno').DataType    := ftString;
    Q_ReporteDiario.Params.ParamByName('Turno').Value       := global_turno_reporte;
    Q_ReporteDiario.Params.ParamByName('Fecha').DataType    := ftDate;
    Q_ReporteDiario.Params.ParamByName('Fecha').Value       := frmbitacoradepartamental_2.tdIdFecha.Date;
    Q_ReporteDiario.Params.ParamByName('Orden').DataType    := ftString;
    Q_ReporteDiario.Params.ParamByName('Orden').Value       := frmbitacoradepartamental_2.tsNumeroOrden.KeyValue;
    Q_ReporteDiario.Open;

    if Q_ReporteDiario.RecordCount > 0 then
    begin
        if Q_ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
           MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0)
        else
        begin
            If zqRegistro.State = dsEdit Then
            begin
                Editor.Visible := False;
                MemoFondo.Text := '   GUARDANDO DATOS...';
                Editor.SelectAll;
                CurrText.Size := CurrText.Size - 3;
                zqRegistro.Post ;
                Editor.SelectAll;
                CurrText.Size := CurrText.Size +  3;
                Editor.SelStart  := 0;
                Editor.Visible   := True;
            end;
        end
    end;
    Q_ReporteDiario.Destroy;

//    procedure TEdit1.CreateParams(var Params: TCreateParams);
//begin
//inherited CreateParams(Params);
//Params.Style := Params.Style or ES_MULTILINE or ES_RIGHT;
//end;
end;

procedure TfrmEditorBitacoraDepartamental.FilePrint(Sender: TObject);
begin
  {if PrintDialog.Execute then
    Editor.Print(FFileName);}
end;

procedure TfrmEditorBitacoraDepartamental.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditorBitacoraDepartamental.EditUndo(Sender: TObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TfrmEditorBitacoraDepartamental.EditCut(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TfrmEditorBitacoraDepartamental.EditCopy(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TfrmEditorBitacoraDepartamental.EditPaste(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TfrmEditorBitacoraDepartamental.SelectFont(Sender: TObject);
begin
 {FontDialog1.Font.Assign(Editor.SelAttributes);}
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  SelectionChange(Self);
  Editor.SetFocus;
end;

procedure TfrmEditorBitacoraDepartamental.RulerResize(Sender: TObject);
begin
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure TfrmEditorBitacoraDepartamental.FormResize(Sender: TObject);
begin
  SetEditRect;
  SelectionChange(Sender);
end;

procedure TfrmEditorBitacoraDepartamental.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure TfrmEditorBitacoraDepartamental.BoldButtonClick(Sender: TObject);
begin
  if BoldButton.Down then
    Editor.Font.Style := Editor.Font.Style  + [fsBold]
  else
    Editor.Font.Style := Editor.Font.Style  - [fsBold];
end;

procedure TfrmEditorBitacoraDepartamental.ItalicButtonClick(Sender: TObject);
begin
  if ItalicButton.Down then
    Editor.Font.Style := Editor.Font.Style  + [fsItalic]
  else
    Editor.Font.Style := Editor.Font.Style  - [fsItalic];
end;

procedure TfrmEditorBitacoraDepartamental.FontSizeChange(Sender: TObject);
begin
  if FUpdating then Exit;
  Editor.Font.Size := StrToInt(FontSize.Text);
end;

procedure TfrmEditorBitacoraDepartamental.AlignButtonClick(Sender: TObject);
begin
  {if FUpdating then Exit;
  Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);}
end;

procedure TfrmEditorBitacoraDepartamental.FontNameChange(Sender: TObject);
begin
  Editor.Font.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TfrmEditorBitacoraDepartamental.UnderlineButtonClick(Sender: TObject);
begin

  if UnderlineButton.Down then
    Editor.Font.Style := Editor.Font.Style  + [fsUnderline]
  else
    Editor.Font.Style := Editor.Font.Style  - [fsUnderline];
end;

procedure TfrmEditorBitacoraDepartamental.BulletsButtonClick(Sender: TObject);
begin
  {if FUpdating then Exit;
  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);}
end;

procedure TfrmEditorBitacoraDepartamental.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmbitacoradepartamental_2.QryBitacora.Refresh;
    if Caption = ' DESCRIPCION PARTIDA / NOTAS GENERALES' then
       frmBitacoraDepartamental_2.tmDescripcion.Text      := Editor.Text
    else
       frmBitacoraDepartamental_2.tmNotas.Text      := Editor.Text;
end;

procedure TfrmEditorBitacoraDepartamental.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
    sHtml : String ;
begin
//  try
//    CheckFileSave;
//  except
//    CanClose := False;
//  end ;

end;

{ Ruler Indent Dragging }

procedure TfrmEditorBitacoraDepartamental.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TfrmEditorBitacoraDepartamental.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TfrmEditorBitacoraDepartamental.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  {FDragging := False;
  Editor.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);}
end;

procedure TfrmEditorBitacoraDepartamental.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 { FDragging := False;
  Editor.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Editor.Paragraph.FirstIndent;
  SelectionChange(Sender);}
end;

procedure TfrmEditorBitacoraDepartamental.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 { FDragging := False;
  Editor.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);}
end;

procedure TfrmEditorBitacoraDepartamental.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0,
    Editor.SelStart);
  CharPos.X := (Editor.SelStart -
    SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

procedure TfrmEditorBitacoraDepartamental.FormShow(Sender: TObject);
var
   i : integer;
begin
    Caption := sTituloVentana ;
    Editor.DataField  := '' ;
    zqRegistro.Active := False ;
    zqRegistro.SQL.Clear ;
    zqRegistro.SQL.Add('select * from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
    zqRegistro.Params.ParamByName('Contrato').DataType := ftString ;
    zqRegistro.Params.ParamByName('Contrato').Value    := param_global_contrato;
    zqRegistro.Params.ParamByName('Fecha').DataType    := ftDate ;
    zqRegistro.Params.ParamByName('Fecha').Value       := frmbitacoradepartamental_2.tdIdFecha.Date ;
    zqRegistro.Params.ParamByName('Diario').DataType   := ftInteger ;
    zqRegistro.Params.ParamByName('Diario').Value      := frmbitacoradepartamental_2.ds_bitacora.DataSet.FieldValues['iIdDiario'];
    zqRegistro.Open ;
    zqRegistro.Edit ;
    if Caption = ' DESCRIPCION PARTIDA / NOTAS GENERALES' then
       Editor.DataField  := 'mDescripcion'
    else
       Editor.DataField := 'mNotas';
    Editor.Refresh ;
    UpdateCursorPos;
    DragAcceptFiles(Handle, True);
    RichEditChange(nil);

    if global_Editor = 'Nuevo'  then
    begin
        if Caption = ' DESCRIPCION PARTIDA / NOTAS GENERALES' then
           Editor.Text := frmBitacoradepartamental_2.tmDescripcion.Text
        else
           Editor.Text := frmBitacoradepartamental_2.tmNotas.Text;
    end;

    if Editor.DataField = 'mNotas' then
    begin
        if frmBitacoradepartamental_2.RxAvances.RecordCount > 0 then
        begin
            i := pos('TOTAL A INSTALAR: ', Editor.Text);
            if i > 0 then
               Editor.Text := copy(Editor.Text, 0, i -1)
            else
                Editor.Text := Editor.Text + #13 + #13;

            Editor.Text := Editor.Text + 'TOTAL A INSTALAR: '+ FloatToStr(frmBitacoradepartamental_2.rxAvances.FieldValues['dCantidad']) + ' ' + frmBitacoradepartamental_2.rxAvances.FieldValues['sMedida']+ '       CANTIDAD INSTALADA: '+ FloatToStr(frmBitacoradepartamental_2.rxAvances.FieldValues['dCantidadActual']) + ' ' + frmBitacoradepartamental_2.rxAvances.FieldValues['sMedida'] + #13 +
                                         '  ACUM. ANTERIOR: '+ FloatToStr(frmBitacoradepartamental_2.rxAvances.FieldValues['dCantidadAnterior']) + ' ' + frmBitacoradepartamental_2.rxAvances.FieldValues['sMedida']+ '       ACUM. ACTUAL: '+ FloatToStr(frmBitacoradepartamental_2.rxAvances.FieldValues['dCantidadAcumulada']) + ' ' + frmBitacoradepartamental_2.rxAvances.FieldValues['sMedida'];
        end;
    end;
    FontName.Text := 'Arial';
    FontSize.Text := '9';
    Editor.SetFocus;
end;

procedure TfrmEditorBitacoraDepartamental.WMDropFiles(var Msg: TWMDropFiles);
var
  CFileName: array[0..MAX_PATH] of Char;
begin
  try
    if DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then
    begin
//      CheckFileSave;
      PerformFileOpen(CFileName);
      Msg.Result := 0;
    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;

procedure TfrmEditorBitacoraDepartamental.RichEditChange(Sender: TObject);
begin
//  If zqRegistro.State <> dsEdit Then
//      zqRegistro.Edit ;
 // SetModified(Editor.Modified);
end;

procedure TfrmEditorBitacoraDepartamental.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := sModified
  else StatusBar.Panels[1].Text := '';
end;

procedure TfrmEditorBitacoraDepartamental.ActionList2Update(Action: TBasicAction;
  var Handled: Boolean);
begin
 { Update the status of the edit commands }
  EditCutCmd.Enabled := Editor.SelLength > 0;
  EditCopyCmd.Enabled := EditCutCmd.Enabled;
  if Editor.HandleAllocated then
  begin
    EditUndoCmd.Enabled := Editor.Perform(EM_CANUNDO, 0, 0) <> 0;
    EditPasteCmd.Enabled := Editor.Perform(EM_CANPASTE, 0, 0) <> 0;
  end;
end;

function TfrmEditorBitacoraDepartamental.Rtf2Html(Memo : TDBRichEdit ) :String ;
var Contador,Contador2:integer; // Contadores
    s,s2:string; // cadenas
    negrita1,negrita2,cursiva1,cursiva2,subrayado1,subrayado2,lista1,lista2:boolean; // Atributos caracter anterior (1) y caracter actual (2)
    ccolor1, ccolor2:tColor; // color de letra anterior (1) y color de letra actual (2)
    ccolorFondo:tColor; // color de fondo
    iSize1, iSize2:integer; // Tamaño de letra anterior (1) y tamaño de letra actual (2)
    Alineacion1, Alineacion2:TAlignment; // Alineacion de parrafo anterior(1) y alineacion de parrafo actual (2)

begin
  ccolorFondo:= Memo.Color;

  // creamos la cabecera
  s:= '';

  //inicializamos las variables de tipo boolean
  negrita1:=false;
  cursiva1:=false;
  subrayado1:=false;
  lista1:=false;
  negrita2:=false;
  cursiva2:=false;
  subrayado2:=false;
  lista2:=false;

  // Contabilizamos el número de caracteres
  Memo.SelectAll;
  Contador2:=Memo.SelLength;

  // Seleccionamos el primer caracter y sus propiedades
  Memo.SelLength:=1;
  cColor1:= Memo.SelAttributes.Color;
//  iSize1:= Memo.SelAttributes.Size;
  Alineacion1:= Memo.Paragraph.Alignment;

  // creamos la cadena correspondiente al primer carácter
  s:=s+'<font color="#'+IntToHex(GetRValue(cColor1),2)+IntToHex(GetGValue(cColor1),2)+IntToHex(GetBValue(cColor1),2)+'">';
  // comprobamos la alineación del párrafo
  case Alineacion1 of
    taLeftJustify:s:=s+'<p align="left">';
    taRightJustify:s:=s+'<p align="right">';
    taCenter:s:=s+'<p align="center">';
  end;
  //comprobamos si estamos en una lista
  if Memo.Paragraph.Numbering = TNumberingStyle(true) then
    begin
      Lista1:=true;
      s:= s + '<li>';
    end;

  // Bucle para los siguientes caracteres
  for Contador:=0 to Contador2 do
  begin
    Memo.SelStart:=Contador;
    Memo.SelLength:=1;
    // Con el carácter seleccionado ...
    with Memo.SelAttributes do
    begin
      cColor2:= Color;
//      iSize2:= Size;
      Alineacion2:= Memo.Paragraph.Alignment;

      if fsBold in Style then
        negrita2:=true
      else
        negrita2:=false;

      if fsItalic in Style then
        cursiva2:=true
      else
        cursiva2:=false;

      if fsUnderline in Style then
        subrayado2:=true
      else
        subrayado2:=false;

      if Memo.Paragraph.Numbering = TNumberingStyle(true) then
        Lista2:=true
      else
        Lista2:=false;
    end;

    // Comprobamos si ha cambiado el estilo con respecto al caracter anterior
    if lista2 = true then
      if lista1 <> lista2 then
      begin
        s:=s + '<li>';
        lista1:= true;
      end;

    if negrita1 <> negrita2 then
      if negrita2 = true then
        s := s + '<b>';

    if cursiva1 <> cursiva2 then
      if cursiva2 = true then
        s := s + '<i>';

    if subrayado1 <> subrayado2 then
      if subrayado2 = true then
        s := s + '<u>';

    if subrayado1 <> subrayado2 then
      if subrayado2 = false then
        s := s + '</u>';

    if cursiva1 <> cursiva2 then
      if cursiva2 = false then
        s := s + '</i>';

    if negrita1 <> negrita2 then
      if negrita2 = false then
        s := s + '</b>';

    if Alineacion1 <> Alineacion2 then
    begin
      case Alineacion2 of
        //Alineacion Izquierda
        taLeftJustify:
        begin
        if cColor1 <> cColor2 then
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="left">'
          else
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="left">'
        else
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor1),2)+IntToHex(GetGValue(cColor1),2)+IntToHex(GetBValue(cColor1),2)+'"><p align="left">'
          else
            s:=s+'</p><p align="left">';
        end;
        //Alineacion Derecha
        taRightJustify:
        begin
        if cColor1 <> cColor2 then
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="right">'
          else
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="right">'
        else
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor1),2)+IntToHex(GetGValue(cColor1),2)+IntToHex(GetBValue(cColor1),2)+'"><p align="right">'
          else
            s:=s+'</p><p align="right">';
        end;
        //Alineacion Centrada
        taCenter:
        begin
        if cColor1 <> cColor2 then
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="center">'
          else
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'"><p align="center">'
        else
          if iSize1 <> iSize2 then
            s:=s+'</p></font><font color="#'+IntToHex(GetRValue(cColor1),2)+IntToHex(GetGValue(cColor1),2)+IntToHex(GetBValue(cColor1),2)+'"><p align="center">'
          else
            s:=s+'</p><p align="center">';
        end
      end;
      Alineacion1 := Alineacion2;
    end
    else
    begin
      if cColor1 <> cColor2 then
        if iSize1 <> iSize2 then
          s:=s+'</font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'">'
        else
          s:=s+'</font><font color="#'+IntToHex(GetRValue(cColor2),2)+IntToHex(GetGValue(cColor2),2)+IntToHex(GetBValue(cColor2),2)+'">'
      else
        if iSize1 <> iSize2 then
          s:=s+'</font><font color="#'+IntToHex(GetRValue(cColor1),2)+IntToHex(GetGValue(cColor1),2)+IntToHex(GetBValue(cColor1),2)+'">'
    end;

    // Comprobamos si existen caracteres extraños
    if Memo.SelText='"' then
      s:=s+'&quot;'
    else
    if Memo.SelText='<' then
      s:=s+'&lt;'
    else
    if Memo.SelText='>' then
      s:=s+'&gt;'
    else
    if Memo.SelText='á' then
      s:=s+'&aacute;'
    else
    if Memo.SelText='Á' then
      s:=s+'&Aacute;'
    else
    if Memo.SelText='é' then
      s:=s+'&eacute;'
    else
    if Memo.SelText='É' then
      s:=s+'&Eacute;'
    else
    if Memo.SelText='í' then
      s:=s+'&iacute;'
    else
    if Memo.SelText='Í' then
      s:=s+'&Iacute;'
    else
    if Memo.SelText='ó' then
      s:=s+'&oacute;'
    else
    if Memo.SelText='Ó' then
      s:=s+'&Oacute;'
    else
    if Memo.SelText='ú' then
      s:=s+'&uacute;'
    else
    if Memo.SelText='Ú' then
      s:=s+'&Uacute;'
    else
    if Memo.SelText='ñ' then
      s:=s+'&ntilde;'
    else
    if Memo.SelText='Ñ' then
      s:=s+'&Ntilde;'
    else
    if Memo.SelText='ä' then
      s:=s+'&auml;'
    else
    if Memo.SelText='Ä' then
      s:=s+'&Auml;'
    else
    if Memo.SelText='ö' then
      s:=s+'&ouml;'
    else
    if Memo.SelText='Ö' then
      s:=s+'&Ouml;'
    else
    if Memo.SelText='ü' then
      s:=s+'&uuml;'
    else
    if Memo.SelText='Ü' then
      s:=s+'&Uuml;'
    else
    if Memo.SelText='ß' then
      s:=s+'&szlig;'
    else
    if Memo.SelText='' then
      begin
        Memo.SelStart := Contador + 1;
        Memo.SelLength := 1;
        if Memo.SelText = '' then
          s:=s+'<br>'
        else
          if Lista1 = lista2 then
          begin
            s := s + '</li>';
            lista1:=false;
          end;
      end
    else
      s:=s+Memo.SelText;

    // establecemos las propiedades para comparar con el siguiente carácter
    negrita1:=negrita2;
    cursiva1:=cursiva2;
    subrayado1:=subrayado2;
    cColor1 := cColor2;
    iSize1 := iSize2;
  end; // fin del for

 // eliminamos los comentarios y los espacios en blanco los sustituimos por '&nbsp;'
 for Contador:=100 downto 2 do
  begin
   s2:='';
   for Contador2:=1 to Contador do
    s2:=s2+' ';
   s:=StringReplace(s,s2,'<!--'+IntToStr(Contador)+'-->',[rfReplaceAll,rfIgnoreCase]);
  end;

 for Contador:=100 downto 2 do
  begin
   s2:='';
   for Contador2:=1 to Contador do
    s2:=s2+'&nbsp;';
   s:=StringReplace(s,'<!--'+IntToStr(Contador)+'-->',s2,[rfReplaceAll,rfIgnoreCase]);
  end;

  // cerramos las etiquetas body y html
  s:=s+'';
  Rtf2Html := s;
end;
end.
