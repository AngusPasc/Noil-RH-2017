unit frm_montarespaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, NxCollection, StrUtils, ExtCtrls, global, frm_connection, ShellAPI,
  ExtDlgs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, dxLayoutControl,
  dxLayoutControlAdapters, Menus, cxButtons, ZConnection;

type
  TfrmMontarRespaldo = class(TForm)
    OpenTextFileDialog1: TOpenTextFileDialog;
    dguardar: TSaveDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtOrigenDir: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    SpeedButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    CmdImportar: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    NxButton8: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    edtHost: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtUser: TcxTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtBD: TcxTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edtPass: TcxTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    zPruebaConexion: TZConnection;
    procedure NxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function CmdExec(Cmd: string): string;
    function IsWinNT: boolean;
    procedure SpeedButton2Click(Sender: TObject);
    function PruebaCon: boolean;
    procedure cxButton1Click(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMontarRespaldo: TfrmMontarRespaldo;

implementation

//uses frm_bloqueo;

{$R *.dfm}

function TfrmMontarRespaldo.IsWinNT: boolean;
var
  OSV: OSVERSIONINFO;
begin
  OSV.dwOSVersionInfoSize := sizeof(osv);
  GetVersionEx(OSV);
  result := OSV.dwPlatformId = VER_PLATFORM_WIN32_NT;
end;

function TfrmMontarRespaldo.CmdExec(Cmd: string): string;
var
  Buffer: array[0..4096] of Char;
  si: STARTUPINFO;
  sa: SECURITY_ATTRIBUTES;
  sd: SECURITY_DESCRIPTOR;
  pi: PROCESS_INFORMATION;
  newstdin, newstdout, read_stdout, write_stdin: THandle;
  exitcod, bread, avail: Cardinal;
begin
  Result := '';
  if IsWinNT then
  begin
    InitializeSecurityDescriptor(@sd, SECURITY_DESCRIPTOR_REVISION);
    SetSecurityDescriptorDacl(@sd, true, nil, false);
    sa.lpSecurityDescriptor := @sd;
  end
  else sa.lpSecurityDescriptor := nil;
  sa.nLength := sizeof(SECURITY_ATTRIBUTES);
  sa.bInheritHandle := TRUE;
  if CreatePipe(newstdin, write_stdin, @sa, 0) then
  begin
    if CreatePipe(read_stdout, newstdout, @sa, 0) then
    begin
      GetStartupInfo(si);
      with si do
      begin
        dwFlags := STARTF_USESTDHANDLES or STARTF_USESHOWWINDOW;
        wShowWindow := SW_HIDE;
        hStdOutput := newstdout;
        hStdError := newstdout;
        hStdInput := newstdin;
      end;
      Fillchar(Buffer, SizeOf(Buffer), 0);
      GetEnvironmentVariable('COMSPEC', @Buffer, SizeOf(Buffer) - 1);
      StrCat(@Buffer, PChar(' /c ' + Cmd));
      if CreateProcess(nil, @Buffer, nil, nil, TRUE, CREATE_NEW_CONSOLE, nil, nil, si, pi) then
      begin
        repeat
          PeekNamedPipe(read_stdout, @Buffer, SizeOf(Buffer) - 1, @bread, @avail, nil);
          if bread > 0 then
          begin
            Fillchar(Buffer, SizeOf(Buffer), 0);
            ReadFile(read_stdout, Buffer, bread, bread, nil);
            Result := Result + string(PChar(@Buffer));
          end;
          Application.ProcessMessages;
          GetExitCodeProcess(pi.hProcess, exitcod);
        until (exitcod <> STILL_ACTIVE) and (bread = 0);
      end;
      CloseHandle(read_stdout);
      CloseHandle(newstdout);
    end;
    CloseHandle(newstdin);
    CloseHandle(write_stdin);
  end;
end;


procedure TfrmMontarRespaldo.CmdImportarClick(Sender: TObject);
var
  instruccion, cadaux, nombre, ruta: string;
  arch: integer;
  sMysqlExe: string;
  sResultados: string;
begin
  sMysqlExe := 'C:\Program Files\MySQL\MySQL Server 5.1\bin\mysql.exe';
  if (sMysqlExe = '') or (sMysqlExe = ' ') then
  begin
    MessageDlgpos('No ha configurado las rutas de mysql en el modulo Configuracion, no se hace nada!',
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
    exit;
  end;

  if txtOrigenDir.Text = '' then
  begin
    MessageDlgpos('Seleccion un nombre archivo donde se guardara el respaldo, no se hace nada!',
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
    exit;
  end;
  if PruebaCon then
  begin
    if MessageDlg('Al Importar el Archivo .sql reemplazara la informacion Existente. Se recomienda guardar un respaldo de la informacion. Desea Continuar ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if MessageDlg('Esta Seguro que desea Importar el Archivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cadAux := ReverseString(dguardar.FileName);
        arch := pos('\', cadaux);
        nombre := copy(dguardar.FileName, length(dguardar.FileName) - arch, length(dguardar.FileName));
        ruta := copy(dguardar.FileName, 1, length(dguardar.FileName) - arch);
      //instruccion := 'cmd /c "' + sMysqlExe + '" -uroot -pdanae -h' + connection.zConnection.HostName + ' ' + connection.zConnection.Database + ' < "' + txtOrigenDir.Text + '"';
        instruccion := 'cmd /c "' + sMysqlExe + '" '+
        '-u' + edtUser.Text +' '+
        '-p' + edtPass.Text +' '+
        '-h' + edtHost.Text +' '+
        edtBD.Text + ' < "' +
        txtOrigenDir.Text + '"';

        CmdImportar.Enabled := false;
        NxButton8.Enabled := false;
        SpeedButton2.Enabled := false;

        sResultados := CmdExec(instruccion);
        if sResultados = '' then
          MessageDlgpos('Carga Exitosa!',
            mtInformation, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2))
        else
          MessageDlgpos('Mensaje del sistema: ' + sResultados,
            mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));

        CmdImportar.Enabled := true;
        NxButton8.Enabled := true;
        SpeedButton2.Enabled := true;
      end;
    end;
  end;
end;

procedure TfrmMontarRespaldo.cxButton1Click(Sender: TObject);
begin
  if PruebaCon then
    MessageDlg('Se ha realizó exitosamente la conexión a la base de datos.', mtInformation,[mbOk],0);

end;

procedure TfrmMontarRespaldo.EnterControl(Sender: TObject);
begin
  if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmMontarRespaldo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmMontarRespaldo.FormShow(Sender: TObject);
begin
 // Connection.GetLogo(Image1);
end;

procedure TfrmMontarRespaldo.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmMontarRespaldo.NxButton8Click(Sender: TObject);
begin
  self.Close;
end;

function TfrmMontarRespaldo.PruebaCon: boolean;
var
  HuboError: Boolean;
begin
  result := False;
  HuboError := False;
  try
    if zPruebaConexion.Connected then
      zPruebaConexion.Disconnect;

  zPruebaConexion.HostName  := edtHost.Text;
  zPruebaConexion.User      := edtUser.Text;
  zPruebaConexion.Password  := edtPass.Text;
  zPruebaConexion.Database  := edtBD.Text;
  zPruebaConexion.Connect;

  except
  on e: Exception do
    if e.Message <>'***' then
    begin
      HuboError := True;
      MessageDlg('Error de Conexion, verifique sus datos',mtError,[mbOK],0);
    end;
  end;
  if not HuboError then
  begin
        Result := True;
  end;



end;

procedure TfrmMontarRespaldo.SalidaControl(Sender: TObject);
begin
  if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_salidaERP;

end;

procedure TfrmMontarRespaldo.SpeedButton2Click(Sender: TObject);
begin

  if OpenTextFileDialog1.Execute() then
    txtOrigenDir.Text := OpenTextFileDialog1.FileName
  else txtOrigenDir.Text := '';


end;

end.

