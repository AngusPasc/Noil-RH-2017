unit frm_Colmena;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxGDIPlusClasses, cxImage, Menus, StdCtrls, cxButtons, cxLabel, ExtCtrls,
  cxCheckBox, ShellAPI, ZDataset, ZConnection, global ;

type
  TfrmColmena = class(TForm)
    Panel1: TPanel;
    CtrlObra: TcxImage;
    CtrlAdmin: TcxImage;
    Almacen: TcxImage;
    PU: TcxImage;
    RH: TcxImage;
    Ventas: TcxImage;
    Nomina: TcxImage;
    checkCtrlAdmin: TcxCheckBox;
    checkAlm: TcxCheckBox;
    checkRH: TcxCheckBox;
    checkVtas: TcxCheckBox;
    checkNom: TcxCheckBox;
    checkCtrlObra: TcxCheckBox;
    checkPU: TcxCheckBox;
    checkBarco: TcxCheckBox;
    checkTablero: TcxCheckBox;
    Barco: TcxImage;
    Tablero: TcxImage;
    Panel2: TPanel;
    AdminTablero: TcxImage;
    Mensajero: TcxImage;
    Servidor: TcxImage;
    checkMensajero: TcxCheckBox;
    checkServ: TcxCheckBox;
    checkAdminTablero: TcxCheckBox;
    configuracion: TcxImage;
    siguiente: TcxImage;
    mover: TcxImage;
    minimizar: TcxImage;
    cerrar: TcxImage;
    Kooben: TcxImage;
    checkIK: TcxCheckBox;
    zidesys: TcxImage;
    checkzidesys: TcxCheckBox;
    procedure moverMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cerrarClick(Sender: TObject);
    procedure minimizarClick(Sender: TObject);
    procedure siguienteClick(Sender: TObject);
    procedure configuracionClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    salir: boolean;
  end;

var
  frmColmena: TfrmColmena;
  qryModulosxUsuarios : tzReadOnlyQuery ;

implementation

uses
  frm_inteligent, Func_Genericas, frm_connection;

{$R *.dfm}

procedure TfrmColmena.moverMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;


procedure TfrmColmena.siguienteClick(Sender: TObject);
var
  Archivo:string;
begin
  if checkCtrlObra.Checked then
    frmInteligent.mnControlObra.Visible:=True
  else
    frmInteligent.mnControlObra.Visible:=False;

  if checkCtrlAdmin.Checked then
    frmInteligent.mnControlAdmin.Visible:=True
  else
    frmInteligent.mnControlAdmin.Visible:=False;

  if checkAlm.Checked then
    frmInteligent.mnAlmacen.Visible:=True
  else
    frmInteligent.mnAlmacen.Visible:=False;

  if checkRH.Checked then
    frmInteligent.mnRecursosHumanos.Visible:=True
  else
    frmInteligent.mnRecursosHumanos.Visible:=False;

  if checkVtas.Checked then
    frmInteligent.mnVentas.Visible:=True
  else
    frmInteligent.mnVentas.Visible:=False;

  if checkPU.Checked then
    frmInteligent.mnPrecioUnitario.Visible:=True
  else
    frmInteligent.mnPrecioUnitario.Visible:=False;

  if checkBarco.Checked then
    frmInteligent.mnBarco.Visible:=True
  else
    frmInteligent.mnBarco.Visible:=False;

  if checkNom.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Nomina/Client.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación de Nomina');
  end;

  if checkServ.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Servidor/Servidor.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación del Servidor');
  end;

  if checkTablero.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Tablero/Tablero.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación del Tablero');
  end;

  if checkAdminTablero.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Administrador Tablero/AdminTablero.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación del Administrador de Tableros');
  end;

  if checkIK.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Kooben/kooben.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación del Inteli-Kooben');
  end;

    
  if checkzidesys.Checked then
  begin
    Archivo := extractfilepath(application.exename) + '/Zidesys/zidesys.exe';
    if fileExists(Archivo) then
    begin
      ShellExecute(Handle, 'open', PAnsiChar(Archivo), nil, nil, SW_SHOWNORMAL);
    end
    else
      MSG_W('No se encuentra la aplicación del Inteli-Zidesys');
  end;

  Self.Close;

  frmInteligent.permisosUsuarios(100);

end;



procedure TfrmColmena.FormShow(Sender: TObject);
begin
    AnimateWindow( Handle, 100, AW_SLIDE or AW_VER_NEGATIVE);
    RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);

    qryModulosxUsuarios := tzReadOnlyQuery.Create(Self) ;
    qryModulosxUsuarios.Connection := Connection.zConnection ;

    qryModulosxUsuarios.Active := False ;
    qryModulosxUsuarios.SQL.Clear ;

    qryModulosxUsuarios.SQL.Add('Select n.sNombreMod, n.sDescripcion From nuc_modulos n  ' +
                                'Inner Join modulosxusuario m On (n.idModulo=m.iIdModulo) ' +
                                'Where m.sIdUsuario =:usuario and m.sContrato =:Contrato and sModMen="Si" Order By m.iIdModulo ') ;
    qryModulosxUsuarios.Params.ParamByName('usuario').Value  := global_usuario ;
    qryModulosxUsuarios.Params.ParamByName('contrato').Value := global_contrato ;
    qryModulosxUsuarios.Open ;
    if qryModulosxUsuarios.RecordCount > 0 Then
       begin
        while not qryModulosxUsuarios.Eof do
            begin
               TcxCheckBox(FindComponent(qryModulosxUsuarios.fieldByName('sNombreMod').asString)).Checked := True ;
               qryModulosxUsuarios.Next ;
            end;
       end ;

   Connection.configuracionRecHum.Params.ParamByName('Contrato').Value := Global_Contrato ;
   Connection.configuracionRecHum.Open      ;

end;


procedure TfrmColmena.minimizarClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized;
end;


procedure TfrmColmena.cerrarClick(Sender: TObject);
begin
 // salir := true;
 // Self.Close;
 
end;

procedure TfrmColmena.configuracionClick(Sender: TObject);
begin
  if Panel2.Align=alClient then
    Panel2.Align:=alNone
  else
    Panel2.Align:=alClient; 
end;

end.
