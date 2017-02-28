unit frm_AdministrarBd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  NxCollection, ImgList, StdCtrls, DBCtrls, Mask, frm_barra, ZConnection,
   unitexcepciones, udbgrid, unittbotonespermisos;

type
  TFrmAdministrarBd = class(TForm)
    QrUser: TZQuery;
    NxHeaderPanel1: TNxHeaderPanel;
    ttusuarios: TTreeView;
    imgusuarios: TImageList;
    DsUser: TDataSource;
    frmBarra1: TfrmBarra;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    QrUserUser: TStringField;
    QrUserPassword: TStringField;
    QrUsermComentarios: TMemoField;
    QrUseriIdUsuario: TIntegerField;
    QrUserServidor: TStringField;
    ServConnection: TZConnection;
    QrUserIdentif: TStringField;
    procedure FormCreate(Sender: TObject);
    Procedure CargarUsuarios;
    procedure ttusuariosChange(Sender: TObject; Node: TTreeNode);
    procedure ttusuariosCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure QrUserPasswordSetText(Sender: TField; const Text: string);
    procedure QrUserPasswordGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QrUserCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FrmAdministrarBd: TFrmAdministrarBd;
  nodoseleccionado: Integer;
  usuarios,rootServerPass:tstringlist;
  nodoadicion:ttreenode;
  password:string;
  isServer:boolean;
  utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

uses frm_connection, global, Utilerias;

{$R *.dfm}

procedure TFrmAdministrarBd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  botonpermiso.Free;
end;

procedure TFrmAdministrarBd.FormCreate(Sender: TObject);
begin
  usuarios:=TstringList.Create;
  rootServerPass:=TstringList.Create;
end;

procedure TFrmAdministrarBd.FormShow(Sender: TObject);
var
  error:boolean;
  QrVerificar:Tzquery;
  QrLeerInf:TzReadOnlyQuery;
  local_bdpass:string;
begin
BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'SubAdministrador');
  error:=false;

  if uppercase(Global_ServAcceso)<>uppercase(connection.zConnection.HostName) then
    isServer:=false
  else
    isserver:=true;

  if not isServer then
  begin
    servConnection.Disconnect;
    servConnection.hostname:=Global_ServAcceso;
    servConnection.Catalog:='adminintel';
    servConnection.Database:='adminintel';
    ServConnection.User:=IntelUser;
    ServConnection.Password:=IntelPass;
    ServConnection.Port:=Global_PortAcceso;

    try
      servConnection.Connect;
    except
      on e:exception do
      begin
        error:=true;
        messagedlg('Ocurrio un error al Conectarse.' + #13 + #10 +
                  'Informacion del error: ' + e.ClassName + ',' + e.Message ,
                  mterror,[mbok],0);
      end;
    end;
  end;

  if not error then
  begin
    if not isserver then
    begin
      if servConnection.Ping then
      begin
        QrLeerInf:=TzReadOnlyQuery.create(nil);
        QrLeerInf.Connection:=servConnection;
        QrLeerInf.SQL.text:='select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
                              ' and servidor=' +quotedstr(Global_ServAcceso);

        try
          QrLeerInf.Open;
        except
          on E:exception do
          begin
            error:=true;
            messagedlg('Ocurrio un error al leer la Informacion.'+ #13 +#10 +
                          'Detalles del error: ' + e.classname + ',' + e.Message,mterror,[mbok],0);
          end;
        end;

        if not error then
        begin
          try
            if QrLeerInf.RecordCount=1 then
              local_bdPass:=desencripta(QrLeerInf.FieldByName('password').AsString)
            else
              local_bdPass:=IntelPass;

          finally
            freeandnil(QrLeerInf);
          end;

          servConnection.Disconnect;
          servConnection.HostName := Global_ServAcceso ;
          servConnection.Port := Global_Puerto ;
          servConnection.User :=global_bduser;
          servConnection.Password :=local_bdpass;
          servConnection.Database := 'adminintel';
          servConnection.Catalog :='adminintel' ;

          try
            servConnection.Connect;
          except
            on E:exception do
            begin
              error:=true;
              messagedlg('Ocurrio un error al leer la Informacion.'+ #13 +#10 +
                          'Detalles del error: ' + e.classname + ',' + e.Message,mterror,[mbok],0);
            end;
          end;


        end;
      end
      else
        error:=true;
    end;

    if not error then
    begin
      QrVerificar:=TzQuery.Create(nil);
      if not isserver then
        QrVerificar.Connection:=ServConnection
      else
        QrVerificar.Connection:=connection.zConnection;

      QrVerificar.SQL.Text:='select * from adminintel.acceso where servidor=' + quotedstr(connection.zConnection.HostName);

      try
        QrVerificar.open;
      except
        on e:exception do
        begin
          error:=true;
          messagedlg('Ocurrio un error al leer la Informacion.' + #13 + #10 +
                'Informacion del error: ' + e.ClassName + ',' + e.Message ,
                mterror,[mbok],0);
        end;
      end;

      if not error then
      begin
        if QrVerificar.RecordCount=0 then
        begin
          QrVerificar.Append;
          QrVerificar.FieldByName('user').AsString:=IntelUser;
          QrVerificar.FieldByName('password').AsString:=encripta(IntelPass);
          QrVerificar.FieldByName('mcomentarios').AsString:='Usuario root del Mysql';
          QrVerificar.FieldByName('servidor').AsString:=trim(connection.zConnection.HostName);
          QrVerificar.Post;

          QrVerificar.Append;
          QrVerificar.FieldByName('user').AsString:=IntelUser;
          QrVerificar.FieldByName('password').AsString:=encripta(IntelPass);
          QrVerificar.FieldByName('mcomentarios').AsString:='Usuario para Acceso a la Informacion desde el Inteligent';
          QrVerificar.FieldByName('servidor').AsString:=trim(connection.zConnection.HostName);
          QrVerificar.Post;

        end;

        freeandnil(QrVerificar);

        QrUser.Active:=false;
        if not isserver then
          qruser.Connection:=servconnection
        else
          QrUser.Connection:=connection.zConnection;
        QrUser.Active:=true;
        nodoseleccionado:=-1;
      end;
      cargarusuarios;
    end;
  end;
BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TFrmAdministrarBd.frmBarra1btnCancelClick(Sender: TObject);
begin
  if QrUser.State in [dsinsert,dsedit] then
  begin
    QrUser.CancelUpdates;
    ttusuarios.Enabled:=true;
    frmBarra1.btnCancelClick(Sender);
  end;
BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TFrmAdministrarBd.frmBarra1btnEditClick(Sender: TObject);
begin
  if(QrUser.State=dsbrowse) and (QrUser.RecordCount>0) then
    try
      ttusuarios.Enabled:=false;
      QrUser.Edit;
      frmBarra1.btnEditClick(Sender);
    except
    //  MessageDlgpos('No se pueden editar registros' + #13 + #13 + 'Le recomendamos intentar mas tarde',mtwarning, [mbok], 0,self.Left+round(self.Width/4)+10,self.Top+round(self.Height/2));
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administrador', 'Al editar registro', 0);
       end;

    end;
BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TFrmAdministrarBd.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure TFrmAdministrarBd.frmBarra1btnPostClick(Sender: TObject);
var
  QrCambiar:Tzquery;
  error:boolean;
  i:integer;
  UpdateServer:TzConnection;
  PassServer:TzReadOnlyQuery;
  islocal:boolean;
begin
  error:=false;
  if QrUser.State in [dsinsert,dsedit] then
  begin
    if dbedit2.Text<>'' then
    begin
      for I := 1 to length(dbedit2.Text) do
        if dbedit2.Text[i]=' ' then
        begin
          messagedlg('La contraseña no puede llevar espacios en blanco.' +#13 + #10+
          'Escriba una contraseña Valida', mterror,[mbok],0);
          dbedit2.SetFocus;
          exit;
        end;

      isLocal:=true;
      if uppercase(QrUser.FieldByName('servidor').AsString)<>uppercase(connection.zConnection.HostName) then
      begin
        IsLocal:=false;
        UpdateServer:=TzConnection.Create(nil);
        UpdateServer.hostname:=QrUser.FieldByName('servidor').AsString;
        UpdateServer.Catalog:='mysql';
        UpdateServer.Database:='mysql';
        UpdateServer.User:='root';
        UpdateServer.Protocol:='mysql-5';
        UpdateServer.Password:=desencripta(rootServerPass.Values[QrUser.FieldByName('servidor').AsString]);
        UpdateServer.Port:=3306;

        try
          UpdateServer.Connect;

        except
          on e:exception do
          begin

 //           messagedlg('Ocurrio un error al realizar esta operacion.' + #13 + #10 +
 //                     'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror,[mbok],0);

           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administrador', 'Al salvar registro', 0);


            QrUser.CancelUpdates;
            frmBarra1btnCancelClick(Sender);
            error:=true;
          end;
        end;

        if not error then
        begin
          if not UpdateServer.Ping then
          begin
            error:=true;
            messagedlg('No se Pudo establecer comunicacion con el Servidor a Actualizar .' + #13 + #10 +
                      'Notifiquelo al Administrador del Sistema, para verificar los parametros de Configuracion ' , mtInformation,[mbok],0);
            QrUser.CancelUpdates;
            frmBarra1btnCancelClick(Sender);
          end;
        end;
      end;



      if not error then
      begin
        QrCambiar:=Tzquery.Create(nil);
        if Islocal then
          QrCambiar.Connection:=connection.zConnection
        else
          QrCambiar.Connection:=UpdateServer;

        QrCambiar.SQL.Text:='update mysql.user set password=PASSWORD('+quotedstr(dbedit2.Text)+') where user=' + quotedstr(QrUser.FieldByName('user').AsString);

        try
          QrCambiar.ExecSQL;
        except
          on e:exception do
          begin
            error:=true;
            messagedlg('Ocurrio un error al realizar esta operacion.' + #13 + #10 +
                        'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror,[mbok],0);
            QrUser.CancelUpdates;
            frmBarra1btnCancelClick(Sender);
          end;
        end;

        if not error then
        begin
          if QrCambiar.RowsAffected>0 then
          begin
            QrCambiar.Active:=false;
            QrCambiar.SQL.Text:='flush privileges';
            qrCambiar.ExecSQL;
          end;
          freeandnil(QrCambiar);
          try
            QrUser.Post;
            if (uppercase(Global_ServAcceso)=uppercase(QrUser.FieldByName('servidor').AsString)) and (uppercase(global_bduser)=uppercase(QrUser.FieldByName('user').AsString)) then
              global_bdpass:=dbedit2.Text;
            cargarUsuarios;
            ttusuarios.refresh;
            frmBarra1.btnPostClick(Sender);
          except
            QrUser.CancelUpdates;
            messageDlgpos('Error!,     No se pudieron Almacenar los Datos' + #13 + #13 + 'Nota: le recomendamos intentar mas tarde ',mterror, [mbok], 0,self.Left+round(self.Width/4)+10,self.Top+round(self.Height/2));
            frmBarra1btnCancelClick(Sender);
          end;
        end;

      end;
      ttusuarios.Enabled:=true;
      if not islocal then
        freeandnil(UpdateServer);
    end
    else
    begin
      messageDlgpos('Debe ingresar el password del usuario',mtinformation, [mbok], 0,self.Left+round(self.Width/4)+10,self.Top+round(self.Height/2));
      dbedit2.SetFocus;
    end;
  end;
BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TFrmAdministrarBd.QrUserCalcFields(DataSet: TDataSet);
begin
  QrUserIdentif.AsString:=inttostr(QrUser.RecNo) + '-' + QrUser.FieldByName('user').AsString ;
end;

procedure TFrmAdministrarBd.QrUserPasswordGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text:='';
  if (QrUser.RecordCount>0) or (QrUser.State=dsinsert) then
    text:= desencripta(QrUser.FieldByName('password').AsString);

end;

procedure TFrmAdministrarBd.QrUserPasswordSetText(Sender: TField;
  const Text: string);
begin
  password:=text;
  sender.Value:=encripta(text);
end;

procedure TFrmAdministrarBd.ttusuariosChange(Sender: TObject; Node: TTreeNode);
begin
  if not QrUser.ControlsDisabled then
  begin
    if node.HasChildren then
    begin
      nodoseleccionado:=-1;
      QrUser.Filtered:=false;
      QrUser.Filter:='user='+quotedstr('#45462!');
      QrUser.Filtered:=true;
    end
    else
    begin
      QrUser.Filtered:=false;
      nodoseleccionado:=node.Index;
      QrUser.Locate('iidusuario',usuarios.Values[ttusuarios.Selected.Text],[]);
    end;

  end;
end;

procedure TFrmAdministrarBd.ttusuariosCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin

  if Node.Level = 1 then
  begin
    Sender.Canvas.Font.Color := clBlack;
    Sender.Canvas.Font.Style := [];
  end
  else
  begin
    Sender.Canvas.Font.Color := clBlue;
    Sender.Canvas.Font.Style := [fsbold];
  end;

  if cdsFocused in State then
  begin
     sender.Canvas.Font.Style:=[fsbold];
    sender.Canvas.Brush.Color:=clwindow;
  end
  else
  begin
    if nodoseleccionado=-1 then
    begin
      if node.HasChildren then
      begin
        sender.Canvas.Font.Style:=[fsbold];
        sender.Canvas.Brush.Color:=clwindow;
      end;
    end
    else
    begin
      if node.Index=nodoseleccionado then
      begin
        sender.Canvas.Font.Style:=[fsbold];
        sender.Canvas.Brush.Color:=clwindow;
      end;
    end;
  end;

end;

procedure TFrmAdministrarBd.cargarUsuarios;
var
   nodoprim,nodouser:ttreenode;
   Servidor:String;
begin
  Servidor:='';
  ttusuarios.Items.Clear;
  usuarios.Clear;
  rootServerPass.Clear;
  QrUser.Filtered:=false;
  QrUser.DisableControls;
  QrUser.First;
  while not QrUser.Eof do
  begin
    if Servidor<>QrUser.FieldByName('servidor').AsString then
    begin
      nodoprim:=ttusuarios.Items.Add(nil,'Usuarios Mysql del Servidor: ' + QrUser.FieldByName('servidor').AsString);
      nodoprim.ImageIndex:=1;
      nodoprim.SelectedIndex:=1;
      Servidor:=QrUser.FieldByName('servidor').AsString;
      rootServerPass.Add(QrUser.FieldByName('servidor').AsString + '=' + QrUser.FieldByName('password').AsString);
    end;

    nodouser:=ttusuarios.Items.AddChild(nodoprim,QrUserIdentif.AsString);
    nodouser.ImageIndex:=0;
    nodouser.SelectedIndex:=0;
    usuarios.Add(QrUserIdentif.AsString+'='+QrUserIidusuario.AsString);

    QrUser.Next;
  end;
  ttusuarios.FullExpand;
  QrUser.EnableControls;

  if QrUser.RecordCount>0 then
  begin
    if nodoseleccionado=-1 then
      ttusuariosChange(ttusuarios,nodoprim)
    else
      try
        ttusuarios.Items.Item[nodoseleccionado+1].Selected:=true;
      except
        ttusuariosChange(ttusuarios,nodoprim);
      end;
  end;
end;

end.
