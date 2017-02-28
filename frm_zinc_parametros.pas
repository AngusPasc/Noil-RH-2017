unit frm_zinc_parametros;

interface

uses
  SysUtils, Classes, IniFiles, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, global;

type
  TfrmParametros = class(TDataModule)
    ZConnection: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conectarDB(Conexion:String);
  end;

var
  frmParametros: TfrmParametros;
  hostdba,
  userdba,
  passdba,
  tabldba,
  hostdbb,
  userdbb,
  passdbb,
  tabldbb,
  DB1,DB2:String;
  portdba,
  portdbb:Integer;

const
  RutaINI: string = 'C:\Zincroligent\Zincroligent.ini';

implementation

{$R *.dfm}
procedure Tfrmparametros.conectarDB(Conexion:String);
Var
  Ini:TIniFile;
  i,n,puerto:Integer;
  Lista,xt:TStringList;
  Seccion:Boolean;
  Host,usuario,password:String;
begin
  zConnection.Disconnect;
  Ini:=TIniFile.Create(RutaINI);
  {if id='1' then begin
    HostDBa:=Ini.ReadString('ConexionesDB',Conexion,'Localhost');
    PortDBa:=Ini.ReadInteger(Conexion,'Puerto',3306);
    UserDBa:=Ini.ReadString(Conexion,'Usuario','root');
    PassDBa:=Ini.ReadString(Conexion,'Pass',IntelPass);
  end else begin
    HostDBb:=Ini.ReadString('ConexionesDB',Conexion,'Localhost');
    PortDBb:=Ini.ReadInteger(Conexion,'Puerto',3306);
    UserDBb:=Ini.ReadString(Conexion,'Usuario','root');
    PassDBb:=Ini.ReadString(Conexion,'Pass',IntelPass);
  end;}
  zConnection.HostName:=Ini.ReadString('ConexionesDB',Conexion,'Localhost');
  zConnection.Port:=Ini.ReadInteger(Conexion,'Puerto',3306);
  zConnection.User:=Ini.ReadString(Conexion,'Usuario',IntelUser);
  zConnection.Password:=Ini.ReadString(Conexion,'Pass',IntelPass);
  zConnection.Connect;
  Ini.Free;
end;
end.
