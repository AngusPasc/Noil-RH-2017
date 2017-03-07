unit frm_respaldo;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  dxLayoutControlAdapters, Menus, cxButtons;

type
  TfrmObtenerRespaldo = class(TForm)
    dguardar: TSaveDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtRespaldoDir: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    SpeedButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    NxButton4: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    NxButton8: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function CmdExec(Cmd: string): string;
    function IsWinNT: boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObtenerRespaldo: TfrmObtenerRespaldo;

implementation

//uses frm_bloqueo;

{$R *.dfm}

function TfrmObtenerRespaldo.IsWinNT: boolean;
var
  OSV: OSVERSIONINFO;
begin
  OSV.dwOSVersionInfoSize := sizeof(osv);
  GetVersionEx(OSV);
  result := OSV.dwPlatformId = VER_PLATFORM_WIN32_NT;
end;

function TfrmObtenerRespaldo.CmdExec(Cmd: string): string;
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

procedure TfrmObtenerRespaldo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmObtenerRespaldo.FormShow(Sender: TObject);
begin
 // Connection.GetLogo(Image1);
end;

procedure TfrmObtenerRespaldo.NxButton4Click(Sender: TObject);
var
  instruccion, cadaux, nombre, ruta: string;
  arch: integer;
  sMysqldumpExe: string;
  sResultados: string;
begin
//  connection.qryParametros.Active := false;
//  connection.qryParametros.Open;
// sMysqldumpExe := connection.qryParametros.FieldValues['sMysqldumpExeDir'];
  sMysqldumpExe := 'C:\Program Files\MySQL\MySQL Server 5.1\bin\mysqldump.exe';
  if (sMysqldumpExe = '') or (sMysqldumpExe = ' ') then
  begin
    MessageDlgpos('No ha configurado las rutas de mysql en el modulo Configuracion, no se hace nada!',
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
    exit;
  end;

  if txtRespaldoDir.Text = '' then
  begin
    MessageDlgpos('Seleccion un nombre archivo donde se guardara el respaldo, no se hace nada!',
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
    exit;
  end;

  {cadAux := ReverseString(txtRespaldoDir.Text);}
  cadAux := txtRespaldoDir.Text;
  arch := pos('\', cadaux);
  nombre := copy(dguardar.FileName, length(dguardar.FileName) - arch, length(dguardar.FileName));
  ruta := copy(dguardar.FileName, 1, length(dguardar.FileName) - arch);
  instruccion := 'cmd /c "' + sMysqldumpExe + '" -udsaisolu_cmmi_16 -pcmmi_nomina1216 --routines  -h' +
    connection.zConnection.HostName + ' ' +
    connection.zConnection.Database + ' > "' +
    cadAux + '"';
  showmessage('El archivo se Guardara en: ' + cadAux);

  //ShellExecute(0, nil, PAnsiChar(instruccion),  nil, nil, SW_SHOWMAXIMIZED );

  NxButton4.Enabled := false;
  NxButton8.Enabled := false;
  SpeedButton1.Enabled := false;

  sResultados := CmdExec(instruccion);
  if sResultados = '' then
    MessageDlgpos('Respaldo Realizado con exito!',
      mtInformation, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2))
  else
    MessageDlgpos('Mensaje del sistema: ' + sResultados,
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));

  NxButton4.Enabled := true;
  NxButton8.Enabled := true;
  SpeedButton1.Enabled := true;
   {
  application.CreateForm(Tfrmbloqueo, frmbloqueo);
  frmbloqueo.instruccion := instruccion;
  frmbloqueo.Top := self.Top;
  frmbloqueo.Left := self.Left;
  frmbloqueo.Width := self.Width;
  frmbloqueo.Height := self.Height;
  try
    frmbloqueo.Showmodal;
  finally
    freeandnil(frmbloqueo);
  end;

  }
   //instruccion:='cmd /c mysql '+ localconexion.Database+' -uroot -pdanae -e "select * from auditoria ' + where + '" > auditoria'+nombre +'.txt -h'+localconexion.HostName;

end;

procedure TfrmObtenerRespaldo.NxButton8Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmObtenerRespaldo.SpeedButton1Click(Sender: TObject);
begin
  if dguardar.Execute() then
    txtRespaldoDir.Text := dguardar.FileName
  else txtRespaldoDir.Text := '';
end;

end.

