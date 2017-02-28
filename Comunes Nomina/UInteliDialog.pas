unit UInteliDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, AdvGlowButton, ImgList, StdCtrls, Buttons,
  URegistro, MMSystem, GraphUtil, dxGDIPlusClasses, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  THiloSonido = Class(TThread)
    DetenerProceso: Boolean;
  Protected
    procedure Execute; Override;
    procedure IniciarSonido; virtual;
  Public
    Constructor Create;
  End;

  TInteliDialog = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ImageList1: TImageList;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    AdvGlowButton4: TAdvGlowButton;
    Panel6: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Image1: TImage;
    Label3: TLabel;
    Timer1: TTimer;
    cxImageList1: TcxImageList;
    Btn_Si: TcxButton;
    Btn_Ok: TcxButton;
    Btn_SiTodo: TcxButton;
    Btn_Todo: TcxButton;
    Btn_Reintentar: TcxButton;
    Btn_No: TcxButton;
    Btn_NoTodo: TcxButton;
    Btn_Ignorar: TcxButton;
    Btn_Cancelar: TcxButton;
    Btn_Abortar: TcxButton;
    procedure Estructura(Botones: TMsgDlgButtons; BotonDefault: Byte);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_SiClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure Btn_NoClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_AbortarClick(Sender: TObject);
    procedure Btn_ReintentarClick(Sender: TObject);
    procedure Btn_IgnorarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CambiaPosicion(CheckCursor: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Btn_SiTodoClick(Sender: TObject);
    procedure Btn_TodoClick(Sender: TObject);
    procedure Btn_NoTodoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GlobalEnter(Sender: TObject);
    procedure GlobalExit(Sender: TObject);
    procedure FondoGlobalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    myRes: Integer;
    myTipoMensaje: TMsgDlgType;
    BtnDef: TcxButton;
    SoundName: PWideChar;
  public
    //function ShowModal: Integer; Overload;
    function ShowModal(Encabezado: String; Informacion: String; TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Longint; BotonDefault: Byte = 0): Integer; overload;
    function ShowModal(Titulo: String; Encabezado: String; Informacion: String; TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Longint; BotonDefault: Byte = 0): Integer; overload;
    procedure LlenaMemo(Cadena: String);
  end;

var
  InteliDialog: TInteliDialog;
  HiloSonido: THiloSonido;

implementation

{$R *.dfm}
{$R inteligentsound.res}

Constructor THiloSonido.Create;
begin
  DetenerProceso := False;
  FreeOnTerminate := True;
  //OnTerminate := Terminate;
  inherited Create(False);
end;

Procedure THiloSonido.Execute;
begin
  IniciarSonido;
end;

Procedure THiloSonido.IniciarSonido;
var
  LocSoundName: PWideChar;
begin
  LocSoundName := InteliDialog.SoundName;
  PlaySound(PAnsiChar(LocSoundName), hInstance, SND_RESOURCE or SND_SYNC or SND_NOWAIT);
  InteliDialog.SoundName := '';
end;

(*function TInteliDialog.ShowModal: Integer;
begin
  Inherited;
end; *)

procedure TInteliDialog.LlenaMemo(Cadena: String);
begin
  Memo1.Lines.Clear;
  Cadena := Cadena + #10;
  while (Pos(#10, Cadena) >= 0) and (Cadena <> '') do
  begin
    Memo1.Lines.Add(Copy(Cadena, 1, Pos(#10, Cadena) -1));
    Cadena := Copy(Cadena, Pos(#10, Cadena) +1, Length(Cadena));
  end;
  if Memo1.Height < Memo1.Lines.Count * 14 then
    Self.Height := (Self.Height - Memo1.Height) + (Memo1.Lines.Count * 14);
end;

procedure TInteliDialog.Estructura(Botones: TMsgDlgButtons; BotonDefault: Byte);
var
  Px: Integer;
  CtaBtn: Byte;

procedure Cambia(Var Boton: TcxButton);
begin
  Boton.Visible := True;
  Boton.Left := Px;
  Px := Px + Boton.Width + 2;

  if CtaBtn = BotonDefault then BtnDef := Boton;
  Inc(CtaBtn);
end;

begin
  // Poner en falso la visual de todos los botones en el orden de derecha a izquierda
  Btn_Abortar.Visible := False;
  Btn_Cancelar.Visible := False;
  Btn_Ignorar.Visible := False;
  Btn_NoTodo.Visible := False;
  Btn_No.Visible := False;
  Btn_Reintentar.Visible := False;
  Btn_Todo.Visible := False;
  Btn_SiTodo.Visible := False;
  Btn_Ok.Visible := False;
  Btn_Si.Visible := False;

  Btn_Abortar.Left := 0;
  Btn_Cancelar.Left := 0;
  Btn_Ignorar.Left := 0;
  Btn_NoTodo.Left := 0;
  Btn_No.Left := 0;
  Btn_Reintentar.Left := 0;
  Btn_Todo.Left := 0;
  Btn_SiTodo.Left := 0;
  Btn_Ok.Left := 0;
  Btn_Si.Left := 0;

  Px := 0;
  CtaBtn := 0;
  if mbYes in Botones then Cambia(Btn_Si);
  if mbOk in Botones then Cambia(Btn_Ok);
  if mbYesToAll in Botones then Cambia(Btn_SiTodo);
  if mbAll in Botones then Cambia(Btn_Todo);
  if mbRetry in Botones then Cambia(Btn_Reintentar);
  if mbNo in Botones then Cambia(Btn_No);
  if mbNoToAll in Botones then Cambia(Btn_NoTodo);
  if mbIgnore in Botones then Cambia(Btn_Ignorar);
  if mbCancel in Botones then Cambia(Btn_Cancelar);
  if mbAbort in Botones then Cambia(Btn_Abortar);

  Panel3.Repaint;
end;

function TInteliDialog.ShowModal(Encabezado: String; Informacion: String; TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Longint; BotonDefault: Byte = 0): Integer;
var
  DlgBtn: TMsgDlgBtn;
begin
  SoundName := '';
  Image1.Visible := False;

  case TipoMensaje of
    mtWarning: begin
      AdvGlowButton4.ImageIndex := 0;
      Label3.Caption := 'INTELI-CODE : ' + 'PRECAUCIÓN';
      SoundName := 'online';
    end;
    mtError: begin
      AdvGlowButton4.ImageIndex := 1;
      Label3.Caption := 'INTELI-CODE : ' + 'ERROR';
      SoundName := 'Parada';
    end;
    mtInformation: begin
      AdvGlowButton4.ImageIndex := 2;
      Label3.Caption := 'INTELI-CODE : ' + 'Información';
      SoundName := 'Notify';
    end;
    mtConfirmation: begin
      AdvGlowButton4.ImageIndex := 3;
      Label3.Caption := 'INTELI-CODE : ' + 'Pregunta';
      SoundName := 'ding';
    end;
    mtCustom: begin
      AdvGlowButton4.ImageIndex := 4;
      Label3.Caption := 'INTELI-CODE : Mensaje';
      SoundName := 'Notify';
    end;
  end;

  myTipoMensaje := TipoMensaje;
  Label2.Caption := Encabezado;
  LlenaMemo(Informacion);

  Estructura(Botones, BotonDefault);

  ShowModal;
  Result := myRes;
end;

function TInteliDialog.ShowModal(Titulo: String; Encabezado: String; Informacion: String; TipoMensaje: TMsgDlgType; Botones: TMsgDlgButtons; HelpCtx: Longint; BotonDefault: Byte = 0): Integer;
var
  DlgBtn: TMsgDlgBtn;
begin
  case TipoMensaje of
    mtWarning: AdvGlowButton4.ImageIndex := 0;
    mtError: AdvGlowButton4.ImageIndex := 1;
    mtInformation: AdvGlowButton4.ImageIndex := 2;
    mtConfirmation: AdvGlowButton4.ImageIndex := 3;
    mtCustom: AdvGlowButton4.ImageIndex := 4;
  end;

  Label1.Caption := 'INTELI-CODE : ' + Titulo;
  Label2.Caption := Encabezado;
  LlenaMemo(Informacion);

  Estructura(Botones, BotonDefault);

  ShowModal;
  Result := myRes;
end;

procedure TInteliDialog.Btn_AbortarClick(Sender: TObject);
begin
  myRes := mrAbort;
end;

procedure TInteliDialog.Btn_CancelarClick(Sender: TObject);
begin
  myRes := mrCancel;
end;

procedure TInteliDialog.Btn_IgnorarClick(Sender: TObject);
begin
  myRes := mrIgnore;
end;

procedure TInteliDialog.Btn_NoClick(Sender: TObject);
begin
  myRes := mrNo;
end;

procedure TInteliDialog.Btn_OkClick(Sender: TObject);
begin
  myRes := mrOk;
end;

procedure TInteliDialog.Btn_ReintentarClick(Sender: TObject);
begin
  myRes := mrRetry;
end;

procedure TInteliDialog.Btn_SiClick(Sender: TObject);
begin
  myRes := mrYes;
end;

procedure TInteliDialog.GlobalExit(Sender: TObject);
begin
  if Sender.ClassType = TAdvGlowButton then
    TAdvGlowButton(Sender).Font.Style := TAdvGlowButton(Sender).Font.Style - [fsBold];
end;

procedure TInteliDialog.GlobalEnter(Sender: TObject);
begin
  if Sender.ClassType = TAdvGlowButton then
    TAdvGlowButton(Sender).Font.Style := TAdvGlowButton(Sender).Font.Style + [fsBold];
end;

procedure TInteliDialog.Btn_SiTodoClick(Sender: TObject);
begin
  myRes := mrYesToAll;
end;

procedure TInteliDialog.Btn_TodoClick(Sender: TObject);
begin
  myRes := mrAll;
end;

procedure TInteliDialog.Btn_NoTodoClick(Sender: TObject);
begin
  myRes := mrNoToAll;
end;

procedure TInteliDialog.FondoGlobalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TInteliDialog.FormActivate(Sender: TObject);
begin
  HiloSonido := THiloSonido.Create;   // Al activar la ventana generar el sonido
end;

procedure TInteliDialog.FormClose(Sender: TObject; var Action: TCloseAction);
var
  SubGrupo: String;
begin
  // Grabar la posicion del registro
  case myTipoMensaje of
    mtWarning: SubGrupo := 'mtWarning';
    mtError: SubGrupo := 'mtError';
    mtInformation: SubGrupo := 'mtInformation';
    mtConfirmation: SubGrupo := 'mtConfirmation';
    mtCustom: SubGrupo := 'mtCustom';
  end;
  SetRegistry('\Ambiente\Dialogo\', SubGrupo, 'Izquierda', IntToStr(Self.Left));
  SetRegistry('\Ambiente\Dialogo\', SubGrupo, 'Arriba', IntToStr(Self.Top));
end;

procedure TInteliDialog.FormCreate(Sender: TObject);
begin
  CambiaPosicion(False);
end;

procedure TInteliDialog.CambiaPosicion(CheckCursor: Boolean);
var
  newPos: Integer;
  Punto: TPoint;
  SubGrupo: String;
  Existe: Boolean;
begin
  GetCursorPos(Punto);

  // Grabar la posicion del registro
  case myTipoMensaje of
    mtWarning: SubGrupo := 'mtWarning';
    mtError: SubGrupo := 'mtError';
    mtInformation: SubGrupo := 'mtInformation';
    mtConfirmation: SubGrupo := 'mtConfirmation';
    mtCustom: SubGrupo := 'mtCustom';
  end;

  Try
    newPos := StrToInt(VarRegistry('\Ambiente\Dialogo\', SubGrupo, 'Izquierda', Existe));
  Except
    if Existe then
      newPos := Self.Left
    else
      newPos := Trunc((Screen.Width - Self.Width) / 2);
  End;
  if newPos + Self.Width < Screen.Width then
    Self.Left := newPos
  else
    if CheckCursor then
      Self.Left := Screen.MonitorFromPoint(Punto).Width - Self.Width;

  Try
    newPos := StrToInt(VarRegistry('\Ambiente\Dialogo\', SubGrupo, 'Arriba', Existe));
  Except
    if Existe then
      newPos := Self.Top
    else
      newPos := Trunc((Screen.Height - Self.Height) / 2);
  End;
  if newPos < 0 then
    NewPos := 0;

  if newPos + Self.Height < Screen.Height then
    Self.Top := newPos
  else
    if CheckCursor then
      Self.Top := Screen.Height - Self.Height;

  // Verificar si la ventana del mensaje se encuentra dentro del área visible del escritorio
  if Self.Left + (Self.Width div 2) <= Screen.DesktopLeft + 10 then
    Self.Left := Trunc((Screen.Width - Self.Width) / 2);

  if Self.Top <= Screen.DesktopTop + 10 then
    Self.Top := Trunc((Screen.Height - Self.Height) / 2);
end;

procedure TInteliDialog.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: Close;
    83, 115: if Not (ssCtrl In Shift) then Btn_Si.Click;
    78, 110: if Not (ssCtrl In Shift) then Btn_No.Click;
    79, 111: if Not (ssCtrl In Shift) then Btn_Ok.Click;
    84, 116: if Not (ssCtrl In Shift) then Btn_Todo.Click;
    82, 114: if Not (ssCtrl In Shift) then Btn_Reintentar.Click;
    73, 105: if Not (ssCtrl In Shift) then Btn_Reintentar.Click;
  end;
  if Key = 27 then
    Close;  // Aplica mrCancel de forma automática

end;

procedure TInteliDialog.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Self.Left + Self.Width > Screen.Width then
    Self.Left := Screen.Width - Self.Width;
end;

procedure TInteliDialog.FormShow(Sender: TObject);
var
  ii, AcW: Integer;
begin
  myRes := mrCancel;  // Valor por default

  // Seleccionar el color del titulo


  // Centrar los botones visibles
  AcW := 0;
  for ii := 0 to Self.ComponentCount -1 do
    if (Self.Components[ii].ClassType = TAdvGlowButton) and (TWinControl(Self.Components[ii]).Visible) then
      AcW := AcW + TWinControl(Self.Components[ii]).Width;
  AcW := Trunc((Panel2.Width - AcW) / 2);

  Panel4.Width := AcW;
  CambiaPosicion(True);

  if Assigned(BtnDef) then BtnDef.SetFocus;
end;

procedure TInteliDialog.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TInteliDialog.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TInteliDialog.Label1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

end.
