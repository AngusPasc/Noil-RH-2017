unit frm_AltaServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, StdCtrls, AdvGroupBox, sEdit, AdvGlowButton,
  ImgList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxTextEdit, Menus, cxButtons, global;

type
  TfrmAltaServidor = class(TForm)
    Label10: TLabel;
    ImageList1: TImageList;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    edtNombre: TcxTextEdit;
    edtServidor: TcxTextEdit;
    edtPuerto: TcxTextEdit;
    btnAdelante: TcxButton;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Servidor, Descripcion: String;
    hPuerto: Integer;
  end;

var
  frmAltaServidor: TfrmAltaServidor;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmAltaServidor.btnAceptarClick(Sender: TObject);
Var
  Result: Boolean;
begin

  Servidor := edtservidor.Text;
  Descripcion := edtnombre.Text;

  // Verificar la información capturada
  if Edtservidor.Text = '' then
  Begin
    ShowMessage('Debe especificar el nombre del servidor o la dirección IP al cual se desea comunicar.');
    Edtservidor.SetFocus;
    Exit;
  End;

  if Edtnombre.Text = '' then
  Begin
    ShowMessage('Debe especificar una descripción o nombre sencillo para el servidor al cual se desea comunicar.');
    Edtnombre.SetFocus;
    Exit;
  End;

  Try
    hPuerto := StrToInt(Edtpuerto.Text);
  Except
    hPuerto := -1;
  End;

  if hPuerto < 1 then
  Begin
    ShowMessage('El puerto especificado no es correcto.' + #10 + #10 + 'El puerto debe ser un número entero comprendido entre 1 y 65536');
    Edtpuerto.SetFocus;
    Exit;
  End;

  // Realizar una prueba al servidor seleccionado
(*
    Connection.ConnectionHMG.Disconnect;
    Connection.ConnectionHMG.Catalog := 'mysql';
    Connection.ConnectionHMG.Database := 'mysql';
    Connection.ConnectionHMG.HostName := Servidor;
    Connection.ConnectionHMG.Password := IntelPass;
    Connection.ConnectionHMG.Port := hPuerto;
    Connection.ConnectionHMG.Protocol := 'mysql';
    Connection.ConnectionHMG.User := 'root';
*)
  connection.zConnection.Disconnect;
  connection.zConnection.Catalog:='mysql';
  connection.zConnection.Database:='mysql';
  connection.zConnection.HostName:=servidor;
  connection.zConnection.Password:=IntelPass;
  connection.zConnection.Port:=hpuerto;
  connection.zConnection.Protocol:='mysql-5';
  connection.zConnection.User:=IntelUser;

  Result := False;
  Try
    connection.zConnection.Connect;
    Result := connection.zConnection.Ping;
  Except
    Result := False;
  End;

  If Not Result Then
  Begin
    ShowMessage('No ha sido posible establecer conexión con el servidor especificado.' + #10 + #10 + 'Revise los datos capturados para especificar el servidor o revise su conexión a la red si su base de datos se encuentra en un servidor remoto.');
    edtservidor.SetFocus;
    Servidor := '';
    Descripcion := '';
    hPuerto := -1;
    Exit;
  End;

  Close;

end;

procedure TfrmAltaServidor.btnCancelarClick(Sender: TObject);
begin
  Servidor := '';
  Descripcion := '';
  Close;
end;

procedure TfrmAltaServidor.FormCreate(Sender: TObject);
begin
  Servidor := '';
  Descripcion := '';
end;

end.
