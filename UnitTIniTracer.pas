unit UnitTIniTracer;

interface

uses
  Windows, Classes, Forms, SysUtils, Dialogs, IniFiles, Registry, Controls,
  StrUtils, Messages, UnitTCifrador, frm_CifraIni,Graphics;

type

TIniTracer=class
private
  sIndicador:string;
  sRegName:string;
  sSysName:string;
  sKeyWord:string;
  padre:TComponent;
  function obtenerRuta:string;
  function escribirRuta(sFileName:string):boolean;
  function borrarRuta:boolean;
  function crearDialog:TOpenDialog;
  procedure mensajeNoIni(sFileName:string);
  function descifrar(sEntrada:string):boolean;//devuelve true si al descifrar sEntrada da la KeyWord
public
  property indicador:string read sIndicador;
  property regName:string read sRegName;
  property sysName:string read sSysName;
  constructor Create(origen:TComponent;indicador,regName,sysName,keyWord:string);
  function definirIni:string;
  function borrarIni:string;
  function cambiarIni:string;
end;

implementation

constructor TIniTracer.Create(origen:TComponent;indicador,regName,sysName,keyWord:string);
begin
  padre:=origen;
  sIndicador:=indicador;
  sRegName:=regName;
  sSysName:=sysName;
  sKeyWord:=keyWord;
end;

function TIniTracer.definirIni: string;
var
  Abrir:TOpenDialog;
  sFileName:string;
    xmed, ymed: integer;
begin
xmed:=trunc((Screen.width)/2)-80;
ymed:=trunc((screen.Height)/2)-30;
  //Verificar si la ruta existe en el registro
  sFileName:=obtenerRuta;
  if sFileName = '' then begin
    //Ya que no se localizó en el registro del sistema, verificar si el archivo ini existe localmente
    sFileName := ChangeFileExt(Application.ExeName,'.ini');
    if Not FileExists(sFileName) then begin//sino existe el archivo
      mensajeNoIni(sFileName);//mandar mensaje para avisar que no existe el INI local
      sFileName:='';
      Abrir:=crearDialog;//crear el dialog
      if Abrir.Execute then begin
        sFileName := Abrir.FileName;//obtener el nombre de archivo indicado por el usurio
        // Grabar la dirección especificada del archivo ini
        if not escribirRuta(sFileName) then begin
          //sino fue posible grabar, avisar al usuario y devolver vacio ''
          sFileName:='';
          MessageDlgPos('No fue posible definir el archivo seleccionado como archivo INI del sistema',
          mtInformation, [mbOk],20,xmed,ymed);
        end;
      end
      //else//no se eligio ningun archivo, enviar mensaje
        //PostMessage(Handle, WM_CLOSE,0,0);
    end;
  end;
  if not FileExists(sFileName) then
    sFileName:='';
  result:=sFileName;
end;

function TIniTracer.descifrar(sEntrada: string): boolean;
var
  Cifrador:TCifrador;
  sDescifrado:string;
    xmed, ymed: integer;
begin
xmed:=trunc((Screen.width)/2)-80;
ymed:=trunc((screen.Height)/2)-30;
  sDescifrado:='';
  Cifrador:=TCifrador.crear('');
  Cifrador.cifra:=sEntrada;
  Cifrador.generarClaveBR1;
  try
    sDescifrado:=Cifrador.descifrar;
  except
    MessageDlgPos('No fue posible descifrar la clave porque no tiene el formato adecuado',
    mtInformation, [mbOk], 0, xmed, ymed);
  end;
  Cifrador.Free;
  result:=(sDescifrado=sKeyWord);
end;

function TIniTracer.cambiarIni: string;
var
  Abrir:TOpenDialog;
  sFileName:string;
  xmed, ymed: integer;
begin
  xmed:=trunc((Screen.width)/2)-80;
  ymed:=trunc((screen.Height)/2)-30;
  sFileName:='';
  //Mostrar la ventana donde el usuario escribira la clave cifrada
  Application.CreateForm(TFrmCifraIni, frmCifraIni);
  if frmCifraIni.ShowModal = mrOk then begin
    if descifrar(frmCifraIni.edtCifrado.Text) then begin
      //Intentar cambiar el ini a uno determinado por el usuario
      Abrir:=crearDialog;//crear el dialog
      if Abrir.Execute then begin
        sFileName := Abrir.FileName;//obtener el nombre de archivo indicado por el usurio
        // Grabar la dirección especificada del archivo ini
        if not escribirRuta(sFileName) then begin
          //sino fue posible grabar, avisar al usuario y devolver vacio ''
          sFileName:='';
          MessageDlgPos('No fue posible definir el archivo seleccionado como archivo INI del sistema',
          mtInformation, [mbOk], 200, xmed,ymed);
        end;
      end;
    end
    else begin
      //la clave no es correcta, no esta permitido cambiar el INI
      MessageDlgPos('La clave no es correcta', mtInformation, [mbOk], 0,xmed,ymed);
    end;
  end;
  frmCifraIni.Free;
  result:=sFileName;
end;

function TIniTracer.crearDialog: TOpenDialog;
var
  Abrir:TOpenDialog;
begin
  Abrir := TOpenDialog.Create(padre);
  Abrir.Title := 'Seleccione el archivo INI';
  Abrir.DefaultExt := 'INI';
  Abrir.Filter := 'Archivos INI|*.ini';
  Abrir.FilterIndex := 1;
  Abrir.Options := [ofHideReadOnly,ofPathMustExist,ofFileMustExist,ofEnableSizing,ofForceShowHidden];
  result:=Abrir;
end;

function TIniTracer.borrarIni: string;
begin
  result:='No se pudo borrar el archivo INI';
  if self.borrarRuta then begin
    result:='Archivo INI borrado'
  end;
end;

function TIniTracer.borrarRuta: boolean;
var
  myReg: TRegistry;
begin
  result:=false;
  // Borrar la ruta del registro para que la vuelva a pedir en caso de ser necesario
  try
    myReg := TRegistry.Create;
    myReg.RootKey := HKEY_LOCAL_MACHINE;
    if myReg.OpenKey(sIndicador, TRUE) then
    begin
      myReg.WriteString(sRegName, '');
    end;
    result:=true;
  finally
    myReg.Free;
  end;
end;

function TIniTracer.escribirRuta(sFileName:string): boolean;
Var
  myReg: TRegistry;
begin
  result:=false;
  // Grabar la dirección especificada del archivo ini
  try
    myReg := TRegistry.Create;
    myReg.RootKey := HKEY_LOCAL_MACHINE;
    if myReg.OpenKey(sIndicador, TRUE) then begin
      myReg.WriteString(sRegName, sFileName);
    end;
    result:=true;
  finally
    myReg.Free;
  end;
end;

procedure TIniTracer.mensajeNoIni(sFileName: string);
var
  sMensaje:string;
begin
  sMensaje:=
  'El sistema no ha podido localizar el archivo ' + sFileName + ' correspondiente.' + #10 + #10 +
  'Este archivo es primordial para poder ejecutar el sistema '+sSysName+', en la siguiente ventana Usted prodrá indicar en donde se encuentra el archivo INI necesario.' + #10 + #10 +
  'Si no conoce la ruta en la cual se encuentra su archivo INI pregunte al administrador del sistema.';
  MessageDlg(sMensaje, mtInformation, [mbOk], 0);
end;

function TIniTracer.obtenerRuta:string;
Var
  myReg: TRegistry;
  sFile:string;
begin
  sFile:='';
  // Verificar si la ruta existe en el registro
  try
    myReg:= TRegistry.Create;
    myReg.RootKey:=HKEY_LOCAL_MACHINE;
    if myReg.OpenKey(sIndicador, FALSE) then
      sFile:= myReg.ReadString(sRegName)
    else
      sFile := '';
  finally
    myReg.Free;
  end;
  result:=sFile;
end;

end.
