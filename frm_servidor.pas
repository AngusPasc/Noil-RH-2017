unit frm_servidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, NxCollection, ZDataset,ZConnection,ExtCtrls,
  frxpngimage, JvExControls, JvxCheckListBox, AdvGlowButton, AdvProgressBar,
  NxToolBox, AdvPanel, NxPageControl, ZAbstractRODataset, ZAbstractDataset, DB;

type
  Tfrmdatos = class(TForm)
    NxPCDatos: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    nxpnuevo: TNxPanel;
    NxHeaderPanel4: TNxHeaderPanel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    btnaceptar: TNxButton;
    nxedtuser: TNxEdit;
    nxedtpassword: TNxEdit;
    nxcmbbasedatos: TNxComboBox;
    btncancelar: TNxButton;
    NxHeaderPanel3: TNxHeaderPanel;
    NxLabel1: TNxLabel;
    NxLabel2: TNxLabel;
    nxedtservidor: TNxEdit;
    btnconexion: TNxButton;
    nxedtpuerto: TNxEdit;
    NxGlyphButton1: TNxGlyphButton;
    AdvPanel6: TAdvPanel;
    AdvPanel4: TAdvPanel;
    AdvPanel5: TAdvPanel;
    Progreso: TAdvProgressBar;
    AdvGlowButton1: TAdvGlowButton;
    NxHeaderPanel1: TNxHeaderPanel;
    NxCmbContratos: TNxComboBox;
    NxHeaderPanel2: TNxHeaderPanel;
    CkLbxFrentes: TJvxCheckListBox;
    AdvGlowButton2: TAdvGlowButton;
    procedure nxedtservidorKeyPress(Sender: TObject; var Key: Char);
    procedure nxedtservidorChange(Sender: TObject);
    procedure nxedtpuertoKeyPress(Sender: TObject; var Key: Char);
    procedure btnconexionClick(Sender: TObject);
    procedure nxcmbbasedatosKeyPress(Sender: TObject; var Key: Char);
    procedure nxedtuserKeyPress(Sender: TObject; var Key: Char);
    procedure nxedtpasswordKeyPress(Sender: TObject; var Key: Char);
    procedure btnaceptarClick(Sender: TObject);
    procedure verificarConexion;
    procedure btncancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxGlyphButton1Click(Sender: TObject);
    procedure NxHeaderPanel3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure NxCmbContratosChange(Sender: TObject);
    procedure NxHeaderPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
    var
      local_usuario,local_password,local_servidor,local_catalogo:string;
      local_puerto:integer;
      Conn:tzconnection;
      IdServerSInc:Integer;
  public
    { Public declarations }
  end;

var
  frmdatos: Tfrmdatos;
  local_usuario,local_password,local_servidor,local_catalogo:string;
  local_puerto:integer;



implementation

uses UFunctionsGHH, frm_connection, Utilerias, global;

{$R *.dfm}

procedure Tfrmdatos.AdvGlowButton1Click(Sender: TObject);
var
  I:integer;
  QContrato,QFrente:TzQuery;
  error:Boolean;
begin
  QContrato:=TzQuery.Create(nil);
  QFrente:=TzQuery.Create(nil);
  Error:=false;
  try
    QContrato.Connection:=connection.zConnection;
    QFrente.Connection:=connection.zConnection;
    QFrente.SQL.Text:='select * from sincavances limit 1';
    QContrato.SQL.Text:='select * from sincavances where sdescripcion=' + quotedstr(NxCmbContratos.Text)+
                        ' and iIdsincpadre=:server and stipo="Contrato"';
    try
      QContrato.ParamByName('server').AsInteger:=IdServerSInc;
      QContrato.Open;
    except
      error:=true;
    end;

    if not error then
    begin
      if QContrato.RecordCount=0 then
      begin
        QContrato.Append;
        QContrato.FieldByName('iIdSinc').AsInteger:=0;
        QContrato.FieldByName('sdescripcion').AsString:=trim(NxCmbContratos.Text);
        QContrato.FieldByName('sip').Required:=false;
        QContrato.FieldByName('stipo').AsString:='Contrato';
        QContrato.FieldByName('iIdSincPadre').AsInteger:=IdServerSInc;
        QContrato.FieldByName('inivel').AsInteger:=1;
        QContrato.FieldByName('suser').Required:=false;
        QContrato.FieldByName('spassword').Required:=false;
        QContrato.FieldByName('iport').Required:=false;

        try
          QContrato.Post;
        except
          error:=true;
        end;

      end;

      if not error then
      begin
        QFrente.Open;
        for I := 0 to CkLbxFrentes.Items.Count - 1 do
          if  (CkLbxFrentes.EnabledItem[i]) and (CkLbxFrentes.Checked[i]) then
          begin
            QFrente.Append;
            QFrente.FieldByName('iIdSinc').AsInteger:=0;
            QFrente.FieldByName('sdescripcion').AsString:=trim(CkLbxFrentes.Items.Strings[i]);
            QFrente.FieldByName('sip').Required:=false;
            QFrente.FieldByName('stipo').AsString:='Frente';
            QFrente.FieldByName('iIdSincPadre').AsInteger:=QContrato.FieldByName('iIdSinc').AsInteger;
            QFrente.FieldByName('inivel').AsInteger:=2;
            QFrente.FieldByName('suser').Required:=false;
            QFrente.FieldByName('spassword').Required:=false;
            QFrente.FieldByName('iport').Required:=false;
            QFrente.Post;
          end;
      end;
    end;
  finally
    Freeandnil(QContrato);
    Freeandnil(QFrente);
  end;
  NxCmbContratosChange(Self);
end;


procedure Tfrmdatos.AdvGlowButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdatos.btnaceptarClick(Sender: TObject);
var
  tableAuditor,user,Cont:tzreadonlyquery;
  userenc,passenc:integer;
  conectado,error:boolean;
  QrDatosSinc:TzQuery;

begin
  local_catalogo:=nxcmbbasedatos.Text;
  local_usuario:=nxedtuser.Text;
  local_password:=nxedtpassword.Text;
  if local_catalogo<>'' then
  begin
    conn:=tzconnection.Create(application);
    conectado:=conectar(conn,local_servidor,local_Catalogo,local_puerto);
    if conectado then
    begin
      user:= tzreadonlyquery.Create(nil);
      try
        user.Connection:=conn;
        user.Active:=false;
        user.SQL.Text:='select * from usuarios' +' where sidusuario=' + quotedstr(local_usuario) + ' and spassword=' + quotedstr(local_password);
        user.Active:=true;
        if user.RecordCount=1 then
        begin
          tableauditor:=tzreadonlyquery.Create(nil);
          try
            tableauditor.Connection:=conn;
            tableauditor.Active:=false;
            tableauditor.SQL.Text:='SHOW TABLES FROM ' +  local_catalogo + ' LIKE ''avancesglobalesxorden''';
            tableauditor.Active:=true;
            if tableauditor.RecordCount=1 then
            begin
              error:=false;
              cont:=TzReadOnlyQuery.Create(nil);
              try
                cont.Connection:=conn;
                Cont.SQL.Text:= 'select c.scontrato from contratos c '+
                                'inner join ordenesdetrabajo ot '+
                                'on(ot.scontrato=c.scontrato) '+
                                'group by scontrato ';
                try
                  cont.Open;
                except
                  error:=true;
                end;

                if not error then
                begin
                  NxCmbContratos.Items.Clear;
                  while not cont.Eof do
                  begin
                    NxCmbContratos.Items.Add(cont.FieldByName('scontrato').AsString);
                    cont.Next;
                  end;

                  QrDatosSinc:=TzQuery.Create(nil);
                  try
                    QrDatosSinc.Connection:=connection.zConnection;
                    QrDatosSInc.SQL.Text:='select * from sincavances where sip=' + quotedstr(conn.HostName) +
                                          ' and sdescripcion=' + quotedstr(conn.Database);
                    try
                      QrDatosSInc.Open;
                    except
                      error:=true
                    end;

                    if not error then
                    begin
                      if QrDatosSInc.RecordCount=0 then
                      begin
                        QrDatosSInc.Append;
                        QrDatosSInc.FieldByName('iidsinc').AsInteger:=0;
                        QrDatosSInc.FieldByName('sdescripcion').AsString:=conn.Database;
                        QrDatosSInc.FieldByName('sip').AsString:=conn.hostname;
                        QrDatosSInc.FieldByName('stipo').AsString:='Servidor';
                        QrDatosSInc.FieldByName('iidsincpadre').AsInteger:=0;
                        QrDatosSInc.FieldByName('inivel').AsInteger:=0;
                        QrDatosSInc.FieldByName('suser').AsString:=Local_Usuario;
                        QrDatosSInc.FieldByName('spassword').AsString:=Local_password;
                        QrDatosSInc.FieldByName('iport').AsInteger:=Local_puerto;


                        try
                          QrDatosSInc.Post;
                        except
                          QrDatosSInc.Cancel;
                          error:=true;
                        end;
                      end;

                      if not error then
                      begin
                        IdServerSInc:=QrDatosSInc.FieldByName('iidsinc').AsInteger;
                        QrDatosSInc.Active:=false;
                      end;
                    end;
                  finally
                    freeandnil(QrDatosSinc);
                  end;

                end;
              finally
                freeandnil(cont);
              end;

              if not error then
                NxPCDatos.ActivePageIndex:=1;
            end
            else
            begin
              MessageDlgpos('NO se puede almacenar esta Tarea'+ #13 +'NO se Encontro la tabla Auditoria en la base de datos seleccionada '+ #13 +  'Verifique si la informacion es la correcta',mtwarning, [mbok], 0,self.Left-80,self.Top+round(self.Height/4));
              nxcmbbasedatos.SetFocus;
            end;
          finally
            freeandnil(tableauditor);
          end;
        end
        ELSE
        begin
          MessageDlgpos('NO se puede almacenar esta Tarea'+ #13 +'el Usuario y/o password son incorrectos '+ #13 +  'Verifique si la informacion es la correcta',mtwarning, [mbok], 0,self.Left-50,self.Top+round(self.Height/4));
          nxedtuser.SetFocus;
        end;
      finally
        freeandnil(user);
      end;
    end
    else
    begin
      MessageDlgpos('Error al conectarse'+ #13 +'La conexion se perdio'+ #13 +  'Intente mas tarde',mterror, [mbok], 0,self.Left+round(self.Width/8),self.Top+round(self.Height/4));
      btnaceptar.SetFocus;
    end;
  end
  else
  begin
    MessageDlgpos('NO se puede almacenar esta Tarea'+ #13 +'Debe seleccionar Una Base de Datos'+ #13 +  'Eliga Una de Las Mostradas en el Catalogo ',mtwarning, [mbok], 0,self.Left+round(self.Width/8),self.Top+round(self.Height/4));
    nxcmbbasedatos.SetFocus;
  end;
end;


procedure Tfrmdatos.WMNCHitTest(var Msg: TWMNCHitTest);
begin
inherited;

if (Msg.Result = htClient) and (GetAsyncKeyState(VK_LBUTTON) <> 0) then
Msg.Result := htCaption;
end;

procedure Tfrmdatos.verificarConexion;
var
//  Connection:tzconnection;
  databases,tables,user:tzreadonlyquery;
  passenc,userenc:integer;
  aviso,Conectado:boolean;

begin
  passenc:=0;
  userenc:=0;
  Conectado:=true;
  conn:=tzconnection.Create(application);
  try

    if not conectar(conn,local_servidor,'',local_puerto) then
    begin
      SELF.Cursor:=crdefault;
      MessageDlgpos('El servidor local de la base de datos no ha podido ser localizado...' + #13 +'Verifique que el puerto y el Servidor esten correctos',mtwarning, [mbok], 0,self.Left-80,self.Top+round(self.Height/4));
      nxedtservidor.SetFocus;
      conectado:=false;
    end;

    if Conectado then
      If Conn.Ping Then
      begin
        databases:=tzreadonlyquery.Create(application);
        tables:=tzreadonlyquery.Create(application);
        try
          databases.Connection:=conn;
          databases.Active:=false;
          databases.SQL.Text:='show databases';
          databases.Active:=true;
          tables.Connection:=conn;
          while not databases.Eof do
          begin
            tables.Active:=false;
            tables.SQL.Clear;
            tables.SQL.Text:='SHOW TABLES FROM ' +  databases.FieldByName('database').AsString  + ' LIKE ''usuarios''';
            tables.Active:=true;
            if tables.RecordCount=1 then
              nxcmbbasedatos.Items.Add(databases.FieldByName('database').AsString);
            databases.Next;
          end;
        finally
          freeandnil(tables);
          freeandnil(databases);
        end;
      end;
  finally
    freeandnil(conn);
  end;

  if conectado then
  begin
    btnaceptar.Enabled:=true;
    nxcmbbasedatos.Enabled:=true;
    nxedtuser.Enabled:=true;
    nxedtpassword.Enabled:=true;
    MessageDlgpos('Conexion Exitosa',mtinformation, [mbok], 0,self.Left+round(self.Width/8)+20,self.Top+round(self.Height/2));
    btnconexion.Enabled:=false;
    nxcmbbasedatos.SetFocus;
  end;
end;

procedure Tfrmdatos.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdatos.btnconexionClick(Sender: TObject);
var
  continuar:boolean;
begin
  continuar:=true;
  try
    local_puerto:=strtoint(nxedtpuerto.Text);
  except
    continuar:=false;
    MessageDlgpos('Error'+ #13 +'El campo Puerto debe ser Numerico '  ,mterror, [mbok], 0,self.Left+round(self.Width/8),self.Top+round(self.Height/4));
    nxedtpuerto.SetFocus;
    exit;
  end;
  continuar:=(nxedtservidor.Text<>'');
  if continuar then
  begin
    local_servidor:=nxedtservidor.Text;
    verificarConexion;
  end else
      begin
        MessageDlgpos('Error'+ #13 +'El campo Servidor No debe estar Vacio '  ,mterror, [mbok], 0,self.Left+round(self.Width/8),self.Top+round(self.Height/4));
        nxedtservidor.SetFocus;
      end;
end;

procedure Tfrmdatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure Tfrmdatos.FormCreate(Sender: TObject);
var
  C: HCURSOR;
begin
  C := LoadCursor(0, IDC_HAND);
  if C <> 0 then Screen.Cursors[crHandPoint] := C;
    NxPcDatos.ShowTabs := False;
  NxPcDatos.ActivePageIndex:=0;


end;

procedure Tfrmdatos.nxcmbbasedatosKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    nxedtuser.SetFocus;
end;

procedure Tfrmdatos.NxCmbContratosChange(Sender: TObject);
var
  QrFrentes,QrFrentesSinc:TzReadOnlyQuery;
  error:boolean;
  item:Integer;
begin
  error:=false;
  CkLbxFrentes.Clear;
  QrFrentes:=TzReadOnlyQuery.Create(nil);
  QrFrentesSinc:=TzReadOnlyQuery.Create(nil);
  try
    QrFrentes.Connection:=conn;
    QrFrentes.SQL.Text:='select snumeroorden from ordenesdetrabajo ' +
                        'where scontrato=' + quotedstr(NxCmbContratos.Text);
    try
      QrFrentes.Open;
    except
      error:=true;
    end;

    if not error then
    begin
      QrFrentesSinc.Connection:=connection.zConnection;
      QrFrentesSinc.SQL.Text:='select sa.sdescripcion from sincavances sa ' +
                              'where iIdSincPadre= '+
                              '(select sab.iidSinc from sincavances sab '+
                              'where sab.iIdSincPadre=:servidor '+
                              'and sab.sdescripcion=:desc ' +
                              'and sab.stipo="Contrato") and sa.sTipo="Frente"';
      QrFrentesSinc.Active:=false;
      QrFrentesSinc.ParamByName('servidor').AsInteger:=IdServerSInc;
      QrFrentesSinc.ParamByName('desc').AsString:=trim(NxCmbContratos.Text);
      try
        QrFrentesSinc.Open;
      except
        on e:exception do
        begin
          //showmessage(e.ClassName + ', ' + e.Message);
          error:=true;
        end;
      end;

      while not QrFrentes.Eof do
      begin
        item:=CkLbxFrentes.Items.Add(QrFrentes.FieldByName('snumeroorden').AsString);
        CkLbxFrentes.EnabledItem[item]:=true;
        CkLbxFrentes.Checked[item]:=false;

        if not error then
          if QrFrentesSinc.Locate('sdescripcion',QrFrentes.FieldByName('snumeroorden').AsString,[loCaseInsensitive]) then
          begin
            CkLbxFrentes.EnabledItem[item]:=false;
            CkLbxFrentes.Checked[item]:=true;
          end;
        QrFrentes.Next;
      end;
    end;

  finally
    freeandnil(QrFrentes);
    freeandnil(QrFrentesSinc);
  end;


end;


procedure Tfrmdatos.nxedtpasswordKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    btnaceptar.SetFocus;
end;

procedure Tfrmdatos.nxedtpuertoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    btnconexion.SetFocus;
end;

procedure Tfrmdatos.nxedtservidorChange(Sender: TObject);
begin
if nxcmbbasedatos.Items.Count>0 then
  begin

    nxcmbbasedatos.Items.Clear;
    nxcmbbasedatos.Clear;
    nxcmbbasedatos.Enabled:=false;
    nxedtuser.Text:='';
    nxedtpassword.Text:='';
    nxedtuser.Enabled:=false;
    nxedtpassword.Enabled:=false;
    btnaceptar.Enabled:=false;

  end;
  if (length(nxedtservidor.Text)>0) and (length(nxedtpuerto.Text)>0)  then
    btnconexion.Enabled:=true
  else  btnconexion.Enabled:=false;

end;

procedure Tfrmdatos.nxedtservidorKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    nxedtpuerto.SetFocus;
end;

procedure Tfrmdatos.nxedtuserKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    nxedtpassword.SetFocus;
end;

procedure Tfrmdatos.NxGlyphButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdatos.NxHeaderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     ReleaseCapture;
     SendMessage(frmdatos.Handle, WM_SYSCOMMAND, 61458, 0) ;
end;

procedure Tfrmdatos.NxHeaderPanel3MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     ReleaseCapture;
     SendMessage(frmdatos.Handle, WM_SYSCOMMAND, 61458, 0) ;
end;

end.
