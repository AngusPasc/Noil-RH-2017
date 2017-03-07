unit frm_respaldocompleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, ShellApi, frm_connection;

type
  TfrmRespaldoCompleto = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtPass: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dguardar: TSaveDialog;
    procedure cxButton1Click(Sender: TObject);
    function CmdExec(Cmd: string): string;
    function IsWinNT: boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRespaldoCompleto: TfrmRespaldoCompleto;

implementation

{$R *.dfm}

function TfrmRespaldoCompleto.CmdExec(Cmd: string): string;
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

procedure TfrmRespaldoCompleto.cxButton1Click(Sender: TObject);
var
  Command, FilePath: string;
  instruccion, cadaux, nombre, ruta: string;
    arch: integer;
  sMysqldumpExe: string;
  sResultados: string;
begin
cadaux := 'C:\respaldo.sql';
  if (edtPass.Text = 'admin0217') then
  begin
//    ShellExecute(handle,'open', 'cmd.exe', Pchar('/c mysqldump -uroot -pcleopatra -hlocalhost inv > c:\mibackup.sql'),nil, SW_SHOW );
    sMysqldumpExe := 'C:\\Program Files\\MySQL\\MySQL Server 5.1\\bin\\mysqldump.exe';

   instruccion := 'cmd /c "'+ sMysqldumpExe +'" -uroot -pcleopatra --routines  -h' +
    connection.zConnection.HostName + ' ' +
    connection.zConnection.Database + ' > ' +
    cadAux;
    showmessage('El archivo se Guardara en: ' + cadAux);
    sResultados := CmdExec(instruccion);
    if sResultados = '' then
      MessageDlgpos('Respaldo Realizado con exito!',
      mtInformation, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2))
    else
      MessageDlgpos('Mensaje del sistema: ' + sResultados,
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));

  end
  else
    ShowMessage('Contraseña incorrecta, no se permite realizar respaldo');
end;

function TfrmRespaldoCompleto.IsWinNT: boolean;
var
  OSV: OSVERSIONINFO;
begin
  OSV.dwOSVersionInfoSize := sizeof(osv);
  GetVersionEx(OSV);
  result := OSV.dwPlatformId = VER_PLATFORM_WIN32_NT;
end;

end.
