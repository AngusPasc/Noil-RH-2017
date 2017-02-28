unit frm_respaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, NxCollection, StrUtils, ExtCtrls, global, frm_connection, ShellAPI,
  ExtDlgs;

type
  TfrmRespaldo = class(TForm)
    dguardar: TSaveDialog;
    NxButton8: TNxButton;
    Image1: TImage;
    NxButton4: TNxButton;
    txtRespaldoDir: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    CmdImportar: TNxButton;
    txtOrigenDir: TEdit;
    Label2: TLabel;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton4Click(Sender: TObject);
    procedure CmdImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function CmdExec(Cmd: string): string;
    function IsWinNT: boolean;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRespaldo: TfrmRespaldo;

implementation

//uses frm_bloqueo;

{$R *.dfm}

function TfrmRespaldo.IsWinNT: boolean;
var
  OSV: OSVERSIONINFO;
begin
  OSV.dwOSVersionInfoSize := sizeof(osv);
  GetVersionEx(OSV);
  result := OSV.dwPlatformId = VER_PLATFORM_WIN32_NT;
end;

function TfrmRespaldo.CmdExec(Cmd: string): string;
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


procedure TfrmRespaldo.CmdImportarClick(Sender: TObject);
var
  instruccion, cadaux, nombre, ruta: string;
  arch: integer;
  sMysqlExe: string;
  sResultados: string;
begin
//  connection.qryParametros.Active := false;
//  connection.qryParametros.Open;
//  sMysqlExe := connection.qryParametros.FieldValues['sMysqlExeDir'];
  sMysqlExe := 'C:/';
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

  if MessageDlg('Al Importar el Archivo .sql reemplazara la informacion Existente. Se recomienda guardar un respaldo de la informacion. Desea Continuar ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if MessageDlg('Esta Seguro que desea Importar el Archivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cadAux := ReverseString(dguardar.FileName);
      arch := pos('\', cadaux);
      nombre := copy(dguardar.FileName, length(dguardar.FileName) - arch, length(dguardar.FileName));
      ruta := copy(dguardar.FileName, 1, length(dguardar.FileName) - arch);
      instruccion := 'cmd /c "' + sMysqlExe + '" -uroot -pdanae -h' + connection.zConnection.HostName + ' ' + connection.zConnection.Database + ' < "' + txtOrigenDir.Text + '"';


      CmdImportar.Enabled := false;
      NxButton4.Enabled := false;
      NxButton8.Enabled := false;
      SpeedButton1.Enabled := false;
      SpeedButton2.Enabled := false;

      sResultados := CmdExec(instruccion);
      if sResultados = '' then
        MessageDlgpos('Carga Exitosa!',
          mtInformation, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2))
      else
        MessageDlgpos('Mensaje del sistema: ' + sResultados,
          mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
      CmdImportar.Enabled := true;
      NxButton4.Enabled := true;
      NxButton8.Enabled := true;
      SpeedButton1.Enabled := true;
      SpeedButton2.Enabled := true;

//      application.CreateForm(Tfrmbloqueo, frmbloqueo);
//      frmbloqueo.instruccion := instruccion;
//      frmbloqueo.Top := self.Top;
//      frmbloqueo.Left := self.Left;
//      frmbloqueo.Width := self.Width;
//      frmbloqueo.Height := self.Height;
//      try
//        frmbloqueo.Showmodal;
//      finally
//        freeandnil(frmbloqueo);
//      end;
    end;
  end;
end;

procedure TfrmRespaldo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRespaldo.FormShow(Sender: TObject);
begin
 // Connection.GetLogo(Image1);
end;

procedure TfrmRespaldo.NxButton4Click(Sender: TObject);
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
  instruccion := 'cmd /c "' + sMysqldumpExe + '" -uroot -pcleopatra --routines  -h' +
    connection.zConnection.HostName + ' ' +
    connection.zConnection.Database + ' > "' +
    cadAux + '"';
  showmessage('El archivo se Guardara en: ' + cadAux);

  //ShellExecute(0, nil, PAnsiChar(instruccion),  nil, nil, SW_SHOWMAXIMIZED );
  CmdImportar.Enabled := false;
  NxButton4.Enabled := false;
  NxButton8.Enabled := false;
  SpeedButton1.Enabled := false;
  SpeedButton2.Enabled := false;
  sResultados := CmdExec(instruccion);
  if sResultados = '' then
    MessageDlgpos('Respaldo Realizado con exito!',
      mtInformation, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2))
  else
    MessageDlgpos('Mensaje del sistema: ' + sResultados,
      mtError, [mbOk], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2));
  CmdImportar.Enabled := true;
  NxButton4.Enabled := true;
  NxButton8.Enabled := true;
  SpeedButton1.Enabled := true;
  SpeedButton2.Enabled := true;

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

procedure TfrmRespaldo.NxButton8Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmRespaldo.SpeedButton1Click(Sender: TObject);
begin
  if dguardar.Execute() then
    txtRespaldoDir.Text := dguardar.FileName
  else txtRespaldoDir.Text := '';
end;

procedure TfrmRespaldo.SpeedButton2Click(Sender: TObject);
begin

  if OpenTextFileDialog1.Execute() then
    txtOrigenDir.Text := OpenTextFileDialog1.FileName
  else txtOrigenDir.Text := '';


end;

end.

