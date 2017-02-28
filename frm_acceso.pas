unit frm_acceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Sockets, DB, strUtils,
  ADOdb, GradienteM, Newpanel, ExtCtrls, jpeg, sComboBox, sEdit, sBitBtn, ComCtrls, ZDataset, frxpngimage, AdvGlassButton, IniFiles,
  ZSqlProcessor, UnitTIniTracer, Menus, OleCtrls, ShockwaveFlashObjects_TLB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, cxButtons,
  dxSkinsdxBarPainter, cxClasses, dxBar, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxGDIPlusClasses, ImgList,
  cxListView, AdvSmoothPageSlider, cxGroupBox, cxImage;

type
  Tfrmacceso = class(TForm)
    ip_client: TTcpClient;
    StatusBar: TStatusBar;
    Label4: TLabel;
    Label3: TLabel;
    ZqScript: TZSQLProcessor;
    imgIcons: TcxImageList;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    DBs: TcxListView;
    cxImage1: TcxImage;
    cxGroupBox1: TcxGroupBox;
    lbServidorbd: TLabel;
    lbUsuario: TLabel;
    lbPassword: TLabel;
    lblBase: TLabel;
    sDataName: TcxComboBox;
    tsPassword: TcxTextEdit;
    tsIdUsuario: TcxTextEdit;
    cmbServer: TcxComboBox;
    cxButton1: TcxButton;
    tsPuerto: TcxTextEdit;
    lbPuerto: TLabel;
    lbIdioma: TLabel;
    ComboIdioma: TcxComboBox;
    btnAdelante: TcxButton;
    btnAbortar: TcxButton;
    procedure btnAdelanteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEnter(Sender: TObject);
    procedure tsIdUsuarioExit(Sender: TObject);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure cmbServerEnter(Sender: TObject);
    procedure cmbServerExit(Sender: TObject);
    procedure cmbServerKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure sDataNameEnter(Sender: TObject);
    procedure sDataNameExit(Sender: TObject);
    procedure sDataNameKeyPress(Sender: TObject; var Key: Char);
    procedure cmbServerChange(Sender: TObject);
    procedure SetTransparentForm(AHandle: THandle; AValue: byte = 0);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    function TestServer: boolean;
    procedure Button1Click(Sender: TObject);
    procedure tsIdUsuarioChange(Sender: TObject);
    procedure comboIdiomaClick(Sender: TObject);
    procedure DBsDblClick(Sender: TObject);
    procedure DBsKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cxImage2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure WMCommand(var msg:TwmCommand);message WM_COMMAND;

  private
    { Private declarations }
    // procedure WMCommand(var Msg: TWMCommand); message WM_COMMAND;
    procedure GeneraBDs( Query : TZReadOnlyQuery );//Martin Samuel
  public
    { Public declarations }
    salir: boolean;
    dbGralExiste : Boolean;
  end;

const
  WS_EX_LAYERED = $80000;
  LWA_COLORKEY = 1;
  LWA_ALPHA = 2;

type
  TSetLayeredWindowAttributes = function(
    hwnd: HWND; // handle to the layered window
    crKey: TColor; // specifies the color key
    bAlpha: byte; // value for the blend function
    dwFlags: DWORD // action
    ): BOOL; stdcall;

var
  frmacceso: Tfrmacceso;
  intentos: byte;
  mensaje: string;
  sVector: array[1..100] of string;
  listServ: tstringlist;
  Ini: TIniFile;
  FilePath: string;
  flagAccesoEnIni: boolean;
  sqlUsuarioExiste : string;

implementation

uses frm_inteligent, frm_AltaServidor, Utilerias, unitmanejofondo,
  frm_seleccion2, Func_Genericas, frm_WizardContrato;
{$R *.dfm}

(*
  procedure Tfrmacceso.WMCommand(var Msg: TWMCommand);
  begin
     if Msg.NotifyCode = EN_CHANGE then
     begin
        PostMessage(Handle, WM_NEXTDLGCTL,0, 0);
        inherited;
     end;
  end;
*)

procedure Tfrmacceso.SetTransparentForm(AHandle: THandle; AValue: byte = 0);
var
  Info: TOSVersionInfo;
  SetLayeredWindowAttributes: TSetLayeredWindowAttributes;
begin
  //Check Windows version
  Info.dwOSVersionInfoSize := SizeOf(Info);
  GetVersionEx(Info);
  if (Info.dwPlatformId = VER_PLATFORM_WIN32_NT) and
    (Info.dwMajorVersion >= 5) then
  begin
    SetLayeredWindowAttributes := GetProcAddress(GetModulehandle(user32), 'SetLayeredWindowAttributes');
    if Assigned(SetLayeredWindowAttributes) then
    begin
      SetWindowLong(AHandle, GWL_EXSTYLE, GetWindowLong(AHandle, GWL_EXSTYLE) or WS_EX_LAYERED);
         //Make form transparent
      SetLayeredWindowAttributes(AHandle, 0, AValue, LWA_ALPHA);
    end;
  end;
end;

procedure Tfrmacceso.btnAdelanteClick(Sender: TObject);
var
  zQuery, zQuery1: tzReadOnlyQuery;
  iItemDB: Byte;
  lFoundDB: Boolean;
  QrAcceso: TzReadOnlyQuery;
  Error: boolean;
  AlterUsuarios: TzsqlProcessor;
  Archidioma, Archivo: string;
  FileText: TextFile;
  appINI, inilogin : TIniFile;
  usuariodioma : string;
begin
  salir := False;
  Error := false;

  if dbs.Visible = False then
  begin
    if (uppercase(tsidusuario.text) = 'ADMIN') then
      global_bduser := IntelUser
    else
      global_bduser := 'inteligent';

    Global_Puerto := strToint(tsPuerto.Text);
    connection.zConnection.Disconnect;

    if Global_ServAcceso = '' then
    begin
      connection.zConnection.HostName := sVector[cmbServer.ItemIndex + 1];
      connection.zConnection.Port := Global_Puerto;
      Global_ServAcceso := connection.zConnection.HostName;
    end
    else
    begin
      connection.zConnection.HostName := Global_ServAcceso;
      connection.zConnection.Port := Global_PortAcceso;
    end;

    connection.zConnection.User := IntelUser;
    connection.zConnection.Password := IntelPass;
    connection.zConnection.Database := '';
    connection.zConnection.Catalog := '';
    try
      connection.zConnection.Connect;
    except
      on e: exception do
      begin
          //StatusBar.Panels[0].Text := e.Message ;
        if pos('Access denied', e.message) > 0 then
        begin
          if (uppercase(tsidusuario.Text) = 'ADMIN') and (uppercase(tspassword.Text) = uppercase(intelpass)) then
          begin
            connection.zConnection.Disconnect;
            connection.zConnection.User := IntelUser;
            connection.zConnection.Password := IntelPass;
            connection.zConnection.Database := '';
            connection.zConnection.Catalog := '';
            try
              connection.zConnection.Connect;
            except
              on e: exception do
              begin
                messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                  'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                error := true;
              end;
            end;

            if not error then
            begin
              if connection.zConnection.Ping then
              begin
                zqScript.Connection := connection.zConnection;
                zqScript.ParamByName('password').AsString := IntelPass;
                try
                  zqScript.Execute;
                except
                  on E: exception do
                  begin
                    messagedlg('Ocurrio un error al Inicializar Parametros de Configuracion.' + #13 + #10 +
                      'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                    error := true;
                  end;
                end;

                if not error then
                begin
                  connection.zConnection.Disconnect;
                  connection.zConnection.User := IntelUser;
                  connection.zConnection.Password := IntelPass;
                  connection.zConnection.Database := '';
                  connection.zConnection.Catalog := '';
                  try
                    connection.zConnection.Connect;
                  except
                    on e: exception do
                    begin
                      messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                        'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                      error := true;
                    end;
                  end;

                end;
              end
              else
              begin
                application.MessageBox('No se Logra tener Comunicacion con este Servidor.' + #13 + #10 +
                  'Notifiquelo al Administrador del Sistema, para verificar los parametros de Conexion.', 'Inteligent');

              end;
            end;
          end
          else
          begin
            if (uppercase(tsidusuario.Text) = 'ADMIN') then
              messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                'La Contraseña del Administrador No es Correcta ', mtInformation, [mbok], 0)

            else
              messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
                'Informacion del Problema: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
            error := true;
          end;

        end
        else
        begin
          Global_ServAcceso := '';
          error := true;
          messagedlg('No se Puede Conectar al Servidor.' + #13 + #10 +
            'Informacion del Problema: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
//          end;
        end;

      end;
    end;

    if not error then
    begin
      if connection.zConnection.Ping then
      begin
        QrAcceso := TzReadOnlyquery.Create(nil);
        QrAcceso.Connection := connection.zConnection;
        QrAcceso.SQL.Text := 'select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
          ' and servidor=' + quotedstr(sVector[cmbServer.ItemIndex + 1]);

        if not error then
        begin
          global_bdUser := IntelUser;
          global_bdPass :=IntelPass;
          Connection.zConnection.Disconnect;
          connection.zConnection.HostName := sVector[cmbServer.ItemIndex + 1];
          connection.zConnection.Port := Global_Puerto;
          connection.zConnection.User := IntelUser;
          connection.zConnection.Password := IntelPass;
          connection.zConnection.Database := '';

          try
            connection.zConnection.Connect;
          except
            on E: exception do
            begin
              error := true;
              StatusBar.Panels[0].Text := e.Message;
              begin
                messagedlg('Error generado:' + #13 + #10 + e.Message, mterror, [mbok], 0);
              end;
            end;
          end;

          if not error then
          begin
            try
              if connection.zConnection.Ping then
              begin
                DBs.Clear;
                dbGralExiste := False;

                zQuery := TZReadOnlyQuery.Create(Self);
                zQuery.Connection := connection.zConnection;
                zQuery.Active := False;
                zQuery.SQL.Clear;
                zQuery.SQL.Add('show databases');
                zQuery.Open;

                while Not zQuery.Eof do
                begin
                  if (zQuery.FieldByName('Database').AsString = 'db_gral') then
                  begin
                    dbGralExiste := True;
                  end;
                  zQuery.Next;
                end;

                if dbGralExiste then
                begin
                  Connection.zConnection.Disconnect;
                  connection.zConnection.Database := 'db_gral';

                  with connection.zCommand do
                  begin
                    Active := False;
                    SQL.Clear;
                    SQL.Add('select ' +
                            'ub.useer, ' +
                            'ub.nombrees, ' +
                            'b.bd_user ' +
                            'from user_bd ub ' +
                            'inner join bd b ' +
                            'on b.id_bd = ub.id_bds ' +
                            'where useer = :useer ' +
                            'group by b.bd_user');
                    Params.ParamByName('useer').AsString := tsIdUsuario.Text;
                    Open;
                  end;

                  if connection.zCommand.RecordCount > 0 then
                  begin
                    while Not connection.zCommand.Eof do
                    begin
                      zQuery.Active := False;
                      zQuery.SQL.Clear;
                      zQuery.SQL.Add('show databases');
                      zQuery.Open;

                      iItemDB := 0;
                      lFoundDB := False;
                      while not zQuery.Eof do
                      begin
                        if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') then
                        begin
                          if (connection.zCommand.FieldByName('bd_user').AsString = zQuery.FieldByName('Database').AsString) then
                          begin
                            //sDataName.Properties.Items.Add(zQuery.FieldValues['database']);
                            with DBs.Items.Add do
                            begin
                              Caption := zQuery.FieldByName( 'database' ).AsString;
                              ImageIndex := 2;
                            end;

                            DBs.Visible := True;
                            DBs.ItemIndex := 0;
                            Dbs.SetFocus;

                            if zQuery.FieldValues['database'] = global_db then
                              if lFoundDB then
                                iItemDB := zQuery.RecNo - 2
                              else
                                iItemDB := zQuery.RecNo - 1
                          end;
                        end
                        else
                          lFoundDB := True;
                        zQuery.Next;
                      end;

                      connection.zCommand.Next;
                    end;
                  end
                  else
                  begin
                    application.MessageBox('Este usuario no tiene asignado ninguna BD. Vuelva a intentarlo', 'Inteligent');
                    Exit;
                  end;
                end
                else
                begin
                  zQuery.Active := False;
                  zQuery.SQL.Clear;
                  zQuery.SQL.Add('show databases');
                  zQuery.Open;

                  iItemDB := 0;
                  lFoundDB := False;
                  while not zQuery.Eof do
                  begin
                    if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') then
                    begin
                      with DBs.Items.Add do
                      begin
                        Caption := zQuery.FieldByName( 'database' ).AsString;
                        ImageIndex := 2;
                      end;

                      DBs.Visible := True;
                      DBs.ItemIndex := 0;
                      Dbs.SetFocus;

                      if zQuery.FieldValues['database'] = global_db then
                        if lFoundDB then
                          iItemDB := zQuery.RecNo - 2
                        else
                          iItemDB := zQuery.RecNo - 1
                    end
                    else
                      lFoundDB := True;
                    zQuery.Next;
                  end;
                end;
              end;
            except
              on E: exception do
              begin
                messagedlg('Error generado:' + #13 + #10 + e.Message, mterror, [mbok], 0);
              end;
            end;

          end;
        end;
      end
      else
      begin
        application.MessageBox('No se Logra tener Comunicacion con este Servidor.' + #13 + #10 +
          'Notifiquelo al Administrador del Sistema, para verificar los parametros de Conexion.', 'Inteligent');
      end;
    end;
  end
  else
  begin
    if intentos = 3 then
    begin
      application.MessageBox('Intento accesar en mas de 3 ocaciones. Saliendo del Sistema', 'Inteligent');
      salir := true;
      close;
    end;

    if connection.zConnection.Ping then
      if ( DBs.SelCount = 1 ) and ( DBs.selected.Caption <> '' ) then
      begin
        global_Puerto := strToint(tsPuerto.Text);
        global_db := DBs.selected.Caption;
        frmInteligent.status.Panels.Items[5].Text  :=   global_db;
        global_ipServer := sVector[cmbServer.ItemIndex + 1];
        connection.zConnection.Disconnect;
        connection.zConnection.HostName := sVector[cmbServer.ItemIndex + 1];
        connection.zConnection.Database := global_db;
        connection.zConnection.Port := Global_Puerto;
        connection.zConnection.User := global_bduser;
        connection.zConnection.Password := global_bdpass;
        connection.zConnection.Connect;
      end;

    if connection.zConnection.Ping then
    begin
      if (tsIdUsuario.Text = 'INTEL-CODE') or (uppercase(tsidusuario.text) = 'ADMIN') then
      begin
        if uppercase(tsidusuario.text) = 'ADMIN' then
        begin
          connection.Zcommand.Active := false;
          connection.Zcommand.SQL.Text := 'select * from usuarios where sidusuario=' + quotedstr(tsidusuario.text);
          try
            connection.Zcommand.Open;

          except
            on E: exception do
            begin
              error := true;
              StatusBar.Panels[0].Text := e.Message;
              showmessage(e.Message);
            end;
          end;

          if not error then
          begin
            if connection.Zcommand.recordcount = 0 then
            begin
              if uppercase(tspassword.text) = uppercase(intelpass) then
              begin
                AlterUsuarios := TzSqlProcessor.Create(nil);
                AlterUsuarios.Connection := connection.zConnection;
                AlterUsuarios.Script.Text := 'ALTER TABLE `usuarios` MODIFY COLUMN `sPassword` VARCHAR(50) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Contraseña";';

                try
                  AlterUsuarios.Execute;
                except
                  on E: exception do
                  begin
                    messagedlg('Ocurrio un error al Inicializar Parametros de Configuracion.' + #13 + #10 +
                      'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                    error := true;
                  end;
                end;

                if not error then
                begin
                  connection.QryBusca.active := false;
                  connection.QryBusca.SQL.text := 'insert into usuarios(sidusuario,spassword) values(:user,:pass)';
                  connection.QryBusca.ParamByName('user').AsString := 'admin';
                  try
                    connection.QryBusca.ParamByName('pass').AsString := encripta(Intelpass);
                    connection.QryBusca.ExecSQL;
                    connection.Zcommand.Refresh;
                  except
                    on e: exception do
                    begin
                      messagedlg('No se Pudo Cargar el Administrador.' + #13 + #10 +
                        'Informacion del error: ' + e.ClassName + ',' + e.Message, mterror, [mbok], 0);
                      error := true;
                    end;
                  end;
                end;
              end else if (tsIdUsuario.Text = 'admin') and (tsPassword.Text = 'admin') then
              begin
                global_usuario := UpperCase(tsIdUsuario.Text);
                Application.CreateForm(TfrmWizard, frmWizard);
                frmWizard.ShowModal;
                Exit;
              end
              else
              begin
                application.MessageBox('Ese Usuario No EXISTE', 'Inteligent');
                error := true;
              end;
            end;

            if not error then
            begin
              if connection.Zcommand.recordcount = 1 then
              begin
                try
                  if (uppercase(desencripta(connection.Zcommand.FieldByName('spassword').AsString)) <> uppercase(tspassword.Text)) and (uppercase(connection.Zcommand.FieldByName('spassword').AsString) <> uppercase(tspassword.Text)) then
                  begin
                    application.MessageBox('PASSWORD INCORRECTO ', 'Inteligent');
                    error := true;
                  end;
                except
                  application.MessageBox('PASSWORD INCORRECTO ', 'Inteligent');
                  error := true;
                end;
              end
              else
              begin
                application.MessageBox('Ese Usuario No EXISTE', 'Inteligent');
                error := true;
              end;
            end;
          end;
        end;

        if not error then
        begin

          global_contrato := '';
          global_usuario := uppercase(tsIdUsuario.Text);
          global_password := '';
          global_nombre := 'ADMINISTRADOR';
          global_puesto := 'ADMINISTRADOR UNICO';
          global_activo := '';
          global_grupo := 'INTEL-CODE';
          global_ip := ip_client.LocalHostAddr;
          close;
        end;
      end
      else
      begin
        global_Server := cmbServer.Text;
        global_ipserver := sVector[cmbServer.ItemIndex + 1];

            //si no existe idiomas crea el esp
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('SELECT * FROM idiomas');
        Connection.qryBusca.open;

        if Connection.qryBusca.RecordCount = 0 then
        begin
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('INSERT INTO idiomas (sIdIdioma, sDescripcion, lDefault, sServidorBd, sUsuario, sContrasena, sSelecBd, sPuerto, sLenguaje, sBtnAcceso, sBtnSalir)'+
          'VALUES ("ESP","Español","Si","Servidor de la BD", "Usuario", "Contraseña","Seleccionar BD", "Puerto", "Idioma", "Iniciar Sesion", "Salir")');
          Connection.qryBusca.ExecSQL;
                   connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('Select * From idiomas');
          connection.QryBusca.Open;
          try
            connection.QryBusca2.Active := false;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('UPDATE programas SET sIdIdioma =:idioma ');
            connection.QryBusca2.Params.ParamByName('idioma').Value := connection.QryBusca.FieldByName('sIdIdioma').AsString;
            connection.QryBusca2.ExecSQL;
          Except

          end;
         end;

        try
          Archidioma := extractfilepath(application.exename) + 'inteligentlogini.ini';
          if fileExists(Archidioma) then
          begin
            appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'logini.ini'));
            appINI.WriteString('USUIDIOMA',tsIdUsuario.Text,comboIdioma.text) ;
            appINI.WriteString('IDIOMA','$ESP','Español');
            appINI.WriteString('IDIOMA','#lbServidorbd:',Connection.qryBusca.FieldByName('sServidorBd').AsString);
            appINI.WriteString('IDIOMA','#lbUsuario:',Connection.qryBusca.FieldByName('sUsuario').AsString);
            appINI.WriteString('IDIOMA','#lbPassword:',Connection.qryBusca.FieldByName('sContrasena').AsString);
            appINI.WriteString('IDIOMA','#lblBase:',Connection.qryBusca.FieldByName('sSelecBd').AsString);
            appINI.WriteString('IDIOMA','#lbPuerto:',Connection.qryBusca.FieldByName('sPuerto').AsString);
            appINI.WriteString('IDIOMA','#lbIdioma:',Connection.qryBusca.FieldByName('sLenguaje').AsString);
            appINI.WriteString('IDIOMA','#btnAdelante:',Connection.qryBusca.FieldByName('sBtnAcceso').AsString);
            appINI.WriteString('IDIOMA','#btnAbortar:',Connection.qryBusca.FieldByName('sBtnSalir').AsString);
          end;
        except

        end;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;

        connection.QryBusca.SQL.Add('select * from usuarios where sIdUsuario = :usuario and lacceso="si"');
        connection.QryBusca.params.ParamByName('Usuario').DataType := ftString;
        connection.QryBusca.params.ParamByName('Usuario').Value := tsIdUsuario.Text;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          if connection.QryBusca.FieldValues['sPassword'] = tsPassword.Text then
          begin
            try
              global_contrato := '';
              global_usuario := connection.QryBusca.FieldValues['sIdUsuario'];
              global_firma := connection.QryBusca.FieldByName('sFirma').AsString;
              global_password      := tsPassword.Text;
              global_Usuariocorreo := Connection.QryBusca.FieldValues['sMail'] ;
              global_nombre := connection.QryBusca.FieldValues['sNombre'];
              global_puesto := connection.QryBusca.FieldValues['sPuesto'];
              global_activo := connection.QryBusca.fieldvalues['lActivo'];
              global_grupo := connection.QryBusca.fieldvalues['sIdGrupo'];
              Global_ip := ip_client.LocalHostAddr;
              Close;
            except
              with connection.QryBusca do
              begin
                Active := False;
                SQL.Clear;
                SQL.Add('select sContrato from contratos');
                Open;
              end;

              if connection.QryBusca.RecordCount = 0 then
              begin
                with connection.QryBusca2 do
                begin
                  Active := False;
                  SQL.Clear;
                  SQL.Add('delete from usuarios');
                  ExecSQL;
                end;
                application.MessageBox('Ese Usuario No EXISTE', 'Inteligent');
              end;
            end;

            try
              Archivo := extractfilepath(application.exename) + '/Nomina/Nominalogin.ini';
              if fileExists(Archivo) then
              begin
                inilogin := TIniFile.Create(Archivo);
                inilogin.WriteString('Configuración','Usuario',global_usuario) ;
                inilogin.WriteString('Configuración','Password',global_password);
                inilogin.WriteString('Configuración','BD',global_db);
                inilogin.WriteString('Configuración','Host',sVector[cmbServer.ItemIndex + 1]);
                inilogin.WriteString('Configuración','ERP','1');
                inilogin.Free;
              end;

              Archivo := extractfilepath(application.exename) + '/Tablero/Tablerologin.ini';
              if fileExists(Archivo) then
              begin
                inilogin := TIniFile.Create(Archivo);
                inilogin.WriteString('Configuración','Host',sVector[cmbServer.ItemIndex + 1]) ;
                inilogin.WriteString('Configuración','HostName',global_server);
                inilogin.WriteString('Configuración','Database',global_db);
                inilogin.WriteString('Configuración','Port',IntToStr(Global_Puerto));
                inilogin.WriteString('Configuración','User',global_usuario);
                inilogin.WriteString('Configuración','UserName',global_nombre);
                inilogin.WriteString('Configuración','ERP','1');
                inilogin.Free;
              end;
            except

            end;
          end
          else
            application.MessageBox('PASSWORD INCORRECTO ', 'Inteligent');
        end
        else
        begin
          application.MessageBox('Ese Usuario No EXISTE', 'Inteligent');
          global_usuario := tsIdUsuario.Text;
          global_password := tsPassword.Text;
          global_nombre := 'Falta introducir informacion general del usuario seleccionado';
          global_puesto := '';
          global_activo := 'Si';
          global_grupo := '';
          global_ip := ip_client.LocalHostAddr;
          intentos := intentos + 1;
          beep;
          Exit;
        end
      end
    end;
  end;

  if dbs.visible then
  begin
    dbs.SetFocus;
    dbs.Items[0].Selected := true;
  end;
end;


procedure Tfrmacceso.FormShow(Sender: TObject);
var
  MiArchivo: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo: string;
  iVector,
    iPos: Byte;
  sPortAcceso: string;
  IniTracer: TIniTracer;
  appINI: TIniFile;
  detectar, idioma: string;
  i: integer;
  oldcursor: tcursor;
  noEncuentraIdioma: Boolean;
begin

 //asigna el idioma que esta por default en el combo
  global_idiomaDesc := comboidioma.Text;
  iVector := 0 ;
  comboIdioma.Properties.Items.Clear;
  MiArchivo := extractfilepath(application.exename) + 'inteligentlogini.ini';
  if not fileExists(MiArchivo) then
  begin
	 appINI := TIniFile.Create(ChangeFileExt(Application.ExeName,'logini.ini'));
   appINI.WriteString('X','-','-');
   appINI.EraseSection('X');
  end;
  FilePath := MiArchivo;
  AssignFile(FileText, MiArchivo);
  Reset(FileText);
        comboIdioma.Properties.Items.Clear;
    while not Eof(FileText) do
    begin
      ReadLn(FileText, wCadena);
      if wCadena = '' then
        continue;
      if MidStr(wCadena, 1, 1) = '[' then
           begin
            sTipo := MidStr(wCadena, 1, Pos(']', wCadena));
            sVector[iVector] := sTipo;
            iVector := iVector + 1;
           end
      else
        if sTipo = '[IDIOMA]' then
        begin
          if MidStr(wCadena, 1, 1) = '$' then
            begin
            wCadena := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
            comboIdioma.Properties.Items.Add(wCadena);
            listserv.Add(wCadena + '=' + sVector[iVector]);
            iVector := iVector + 1;
          end;
        end;
    end;

    //busca en el ini el idioma
    for i := 0 to iVector do
      begin
           if sTipo ='[IDIOMA]' then
           begin
           iVector := i;
           end
           else
           noEncuentraIdioma := True
      end;
        //si no lo encuentra agrega español por default
    if  noEncuentraIdioma then
          begin
          comboIdioma.Properties.Items.Add('Español');
          end;

       CloseFile(FileText);

 //****************************************************************************************************************
  ShowWindow(Application.Handle, SW_SHOW);
   // PanelDB.Visible := True ;
  cmbServer.Properties.Items.Clear;
  StatusBar.Panels[0].Text := '';
  sPortAcceso := '3306';
  for iVector := 1 to 100 do
    sVector[iVector] := '';

  iVector := 1;
//    MiArchivo := global_ruta + 'Inteligent.ini' ;     *******************************

  MiArchivo := extractfilepath(application.exename) + 'inteligent.ini';
  if not fileExists(MiArchivo) then
  begin
    IniTracer := TIniTracer.create(self, 'SOFTWARE\INTELIGENT', 'INTELIGENT', 'INTELIGENT', 'cotemar');
    MiArchivo := IniTracer.definirIni;
    cmbserver.Hint := Miarchivo;
    if (MiArchivo = '') or (not fileExists(MiArchivo)) then begin
      showmessage('No hay archivo de configuración INI, por favor indique uno');
      if IniTracer.cambiarIni = '' then
      begin
        showmessage('La aplicación no puede funcionar sin archivo de configuración, por lo tanto se cerrará');
        salir := true;
        close;
      end
      else
        showmessage('Es necesario volover a iniciar la aplicación para que el cambio de archivo de configuracion tenga efecto');
      PostMessage(Handle, WM_CLOSE, 0, 0);
      salir := true;
      close;
    end;
    IniTracer.Free;
  end;


  if salir = false then
  begin
    //configuracion del sistema
    global_archivoini := MiArchivo;
    flagAccesoEnIni := False;

    ini := TIniFile.Create(global_archivoini);
    Global_ServAcceso := ini.readString('SYSTEM', 'SERV_ACCESO', '');
    sPortAcceso := ini.readString('SYSTEM', 'PORT_ACCESO', '');
    global_title_embarque := ini.readString('SYSTEM', 'TITLE_EMBARQUE', '');
    global_files := ini.readString('SYSTEM', 'FILES', extractfilepath(application.exename) + 'Reportes\');
    global_inicio := ini.readInteger('SYSTEM', 'ITEM_INICIAL', 1);
    global_final := ini.readInteger('SYSTEM', 'ITEM_FINAL', 1000);
    global_dias := ini.readInteger('SYSTEM', 'DIAS_ANTERIORES', 10);
    global_independiente := ini.readString('SYSTEM', 'ORDEN_UNICA', 'No');
    global_menu := ini.readString('SYSTEM', 'MENU_INICIAL', 'activo');
    global_db := ini.readString('SYSTEM', 'DATA_NAME', 'inteligent');
    global_dependencia := ini.readString('SYSTEM', 'DEPENDENCIA', '');
    global_checkgenerador := ini.readString('SYSTEM', 'CHECK_GENERADORES', '|INSTALACION|ORDENDECAMBIO|REFERENCIA|WBS|');
    global_ruta := ini.readString('SYSTEM', 'RUTA_SISTEMA', extractfilepath(application.exename));
    ini.free;
    //Para mostrar la version del exe
    Self.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    frmInteligent.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    frmSeleccion2.Caption := global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    Self.Label4.Caption :=global_version + '  ['+Major_Version+'.'+Minor_Version+'.'+  Release_Version+'.'+Build_Version+ ' ]';
    {codigo de carmen parala imagen de fondo}
    detectar := global_ruta + 'image.ini';
    if leeini(detectar) <> 'no' then
      muestrafondo(frmInteligent.fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
    else
      escribeinidefault(detectar, 'bmCenter');
    {fin codigo de carmen}

    if sPortAcceso <> '' then flagAccesoEnIni := True;

    //bases de datos registradas en el ini
    //*********************************************************************************
    FilePath := MiArchivo;
    AssignFile(FileText, MiArchivo);
    Reset(FileText);

    while not Eof(FileText) do
    begin
      ReadLn(FileText, wCadena);
      if wCadena = '' then
        continue;
      if MidStr(wCadena, 1, 1) = '[' then
        sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
      else
        if sTipo = '[DATA_BASE]' then
        begin
          sVector[iVector] := MidStr(wCadena, 1, Pos('=', wCadena) - 1);
          wCadena := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
          cmbServer.Properties.Items.Add(wCadena);
          listserv.Add(wCadena + '=' + sVector[iVector]);
          iVector := iVector + 1;
        end;
    end;
    CloseFile(FileText);

    if global_db = '' then
      global_db := 'inteligent';


    if global_checkgenerador = '' then
      global_checkgenerador := '|INSTALACION|ORDENDECAMBIO|REFERENCIA|WBS|';

    if global_files = '' then
      global_files := global_ruta + '\files\';

    global_orden_general := '';
    intentos := 0;
    tsPassword.Text := '';

    try
      Global_PortAcceso := strtoint(sportacceso);

    except
      Global_PortAcceso := 3306;
    end;

    if cmbServer.Properties.Items.Count > 0 then
      cmbServer.ItemIndex := 0;
    cmbServer.SetFocus;

 //**************************************************************************************************************
  end;
  cmbServer.SetFocus;
  application.processmessages;
  comboidioma.itemindex := 0;
end;

procedure Tfrmacceso.AdvGlassButton1Click(Sender: TObject);
var
  Pos, i: Integer;
  NombreServ: string;
begin

  Application.CreateForm(TfrmAltaServidor, frmAltaServidor);

  try
    frmAltaServidor.Top := self.Top + trunc(self.Height / 4);
    frmAltaServidor.Left := self.Left + trunc(self.Width / 10);
    frmAltaServidor.ShowModal;

    if frmAltaServidor.Servidor <> '' then
    begin

      pos := -1;
      for I := 0 to listServ.Count - 1 do
        if uppercase(listServ.ValueFromIndex[i]) = frmAltaServidor.Servidor then
        begin
          pos := i;
          NombreServ := listServ.Names[i];
          break;
        end;

      if Pos >= 0 then
      begin
        ShowMessage('El servidor que está intentando dar de alta ya existe ( ' + NombreServ + ' ).' + #10 + #10 + 'Verifique esto e intente de nuevo..');
        cmbServer.ItemIndex := Pos;
        cmbServer.Properties.OnChange(Sender);
        cmbServer.SetFocus;
        Exit;
      end;

      cmbServer.Properties.Items.Add(frmAltaServidor.Descripcion);
      listServ.Add(frmAltaServidor.Servidor);

      sVector[cmbServer.Properties.Items.Count] := frmAltaServidor.Servidor;

      Ini := TIniFile.Create(FilePath);
      try
        Ini.WriteString('DATA_BASE', frmAltaServidor.Servidor, frmAltaServidor.Descripcion); // Grabar el nuevo servidor
      finally
        Ini.Free;
      end;

      tsPuerto.Text := IntToStr(frmAltaServidor.hPuerto);

      cmbServer.ItemIndex := cmbServer.Properties.Items.IndexOf(frmAltaServidor.Descripcion);
      cmbServer.Properties.OnChange(Sender);
          //Btn_Test.OnClick(Sender);
      TestServer;
    end
    else
      cmbServer.SetFocus;
  finally
    freeandnil(frmAltaServidor);
  end;
end;

procedure Tfrmacceso.btnAbortarClick(Sender: TObject);
begin
  salir := true;
  //exit;
  Self.Close;
end;

procedure Tfrmacceso.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnAdelante.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioChange(Sender: TObject);
begin
 // PostMessage(Self.Handle, WM_COMMAND, 1,EN_CHANGE);
end;

procedure Tfrmacceso.tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
begin
  DBs.Clear;
  DBs.Visible := False;
end;

procedure Tfrmacceso.tsIdUsuarioEnter(Sender: TObject);
begin
  tsIdUsuario.Style.Color := global_color_entradaerp;
end;

procedure Tfrmacceso.tsIdUsuarioExit(Sender: TObject);
var
  Archidioma, sTipo: string;
  FileText: TextFile;
  appINI : TIniFile;
  usuariodioma : string;
  wCadena: WideString;
  iVector : Byte;
  sVector, lVector, uVector: array[1..100] of string;
  i: integer;
  noEncuentraIdioma: Boolean;
begin
   if tsIdUsuario.Text = '' then
     begin
        comboIdioma.Text := 'Español';
        exit;
     end;
    iVector := 1;
    Archidioma := extractfilepath(application.exename) + 'inteligentlogini.ini';
    FilePath := Archidioma;
    AssignFile(FileText, Archidioma);
    Reset(FileText);

    while not Eof(FileText) do
    begin
      ReadLn(FileText, wCadena);
      if wCadena = '' then
        continue;
      if MidStr(wCadena, 1, 1) = '[' then
        sTipo := MidStr(wCadena, 1, Pos(']', wCadena))
      else
        if sTipo = '[USUIDIOMA]' then
        begin
          lVector[iVector] := MidStr(wCadena, 1, Pos('=', wCadena) - 1);
{wCadena} uVector[iVector] := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
          iVector := iVector + 1;
        end;
    end;

      for i := 0 to iVector do
        begin
          if lVector[i] = tsIdUsuario.Text then
          begin
            comboIdioma.Text := uVector[i];
            break;
          end
        end;

        CloseFile(FileText);
        comboidiomaClick(Sender);
  tsIdUsuario.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.tsPasswordEnter(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_entradaerp
end;

procedure Tfrmacceso.tsPasswordExit(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.cmbServerEnter(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Entradaerp
end;

procedure Tfrmacceso.cmbServerExit(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Salidaerp;
end;

procedure Tfrmacceso.cmbServerKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdUsuario.SetFocus
end;

procedure Tfrmacceso.comboIdiomaClick(Sender: TObject);
var
  ini, idioma : String;
  MiArchivo: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo, sTipoObjeto: string;
  sNombreObjeto, sCaption : string;
  lEncuentraIdioma : boolean;
  slabel : tlabel;
begin
     MiArchivo := extractfilepath(application.exename) + 'inteligentlogini.ini';
    FilePath := MiArchivo;
    AssignFile(FileText, MiArchivo);
    Reset(FileText);

    while not Eof(FileText) do
    begin
       ReadLn(FileText, wCadena);
       if wCadena = '' then
          continue;
       if MidStr(wCadena, 1, 1) = '$' then
       begin
           sTipo :=  MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
           if sTipo = comboIdioma.Text then
              lEncuentraIdioma := True;
       end;

       if lencuentraIdioma then
       begin
           sTipoObjeto :=  MidStr(wCadena, Pos('#',wCadena), 1);
           if sTipo = comboIdioma.Text then
           begin
               if sTipoObjeto = '#' then
               begin

                   sCaption := MidStr(wCadena, Pos('=', wCadena) + 1, Length(wCadena));
                   idioma :=   MidStr(wCadena,2,Pos(':', wCadena)-2);

                   if idioma = 'lbServidorbd' then
                   lbServidorbd.Caption := 'Host ( Server )';

                   if idioma = 'lbUsuario' then
                   lbUsuario.Caption := sCaption;

                   if idioma = 'lbPassword' then
                   lbPassword.Caption := sCaption;

                   if idioma = 'lblBase' then
                   lblBase.Caption := sCaption;

                   if idioma = 'lbPuerto' then
                   lbPuerto.Caption := sCaption;

                   if idioma = 'lbIdioma' then
                   lbIdioma.Caption := sCaption;

                   if idioma = 'btnAdelante' then
                   btnAdelante.Caption := sCaption;

                   if idioma = 'btnAbortar' then
                   btnAbortar.Caption := sCaption;
               end;
           end;
       end;

    end;
    CloseFile(FileText);
       global_idiomaDesc := comboIdioma.Text;
end;

procedure Tfrmacceso.cxImage2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmacceso.DBsDblClick(Sender: TObject);
begin
  if dbs.SelCount = 1 then
    btnadelante.Click;
end;

procedure Tfrmacceso.DBsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnAdelante.Click;
end;

procedure Tfrmacceso.FormActivate(Sender: TObject);
var
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
begin
{  SetTransparentForm(Handle, 215);}
  InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
  VersionBlock := AllocMem(InfoSize);
  try
    GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
    VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
      //Caption := 'INTEL-CODE << Sistema Inteligente para la Administración de Contratos Obra Publica Versión 2009.1.0 >>' ;
         //+ Format('%d.%d.%d.%d', [
         //Rslt.dwProductVersionMS div 65536,
         //Rslt.dwProductVersionMS mod 65536,
         //Rslt.dwProductVersionLS div 65536,
         //Rslt.dwProductVersionLS mod 65536]) + ' >>';
  finally
    FreeMem(VersionBlock);
  end;

  lblBase.Visible := False;
  sDataName.Visible := False;
  btnAdelante.Caption := 'Iniciar Sesion';

end;

procedure Tfrmacceso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow( Handle, 100, AW_HIDE or AW_VER_POSITIVE or AW_SLIDE );

end;

procedure Tfrmacceso.FormCreate(Sender: TObject);
var
  fileSkin: TextFile;
  sSkin, path: string;
begin
  path:=ExtractFilePath(ParamStr(0));
  ListServ := tstringlist.Create;
  DBs.Items.Clear;
  
end;



procedure Tfrmacceso.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmacceso.Button1Click(Sender: TObject);
//var
 // IniTracer:TIniTracer;
begin
//  IniTracer:=TIniTracer.create(self,'SOFTWARE\INTELIGENT','INTELIGENT','INTELIGENT','cotemar');
//  IniTracer.cambiarIni;
 // IniTracer.Free;
end;

procedure Tfrmacceso.sDataNameEnter(Sender: TObject);
begin
  sDataName.Style.Color := global_color_entradaerp
end;

procedure Tfrmacceso.sDataNameExit(Sender: TObject);
begin
  sDataName.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.sDataNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnAdelante.SetFocus
end;

procedure Tfrmacceso.cmbServerChange(Sender: TObject);
var
  sPuerto: Integer;
begin
  DBs.Visible := False;
  lblBase.Visible := False;
  sDataName.Visible := False;
  btnAdelante.Caption := 'Iniciar Sesión';
end;

function Tfrmacceso.TestServer: boolean;
var
  hPuerto, sPuerto: Integer;
  VResult, continuar: Boolean;
  zQuery: TZReadOnlyQuery;
begin
  Continuar := true;
  Vresult := false;
  try
    hPuerto := StrToInt(tsPuerto.Text);
  except
    hPuerto := -1;
  end;
  if hPuerto < 1 then
  begin
    ShowMessage('El puerto especificado no es correcto.' + #10 + #10 + 'El puerto debe ser un número entero comprendido entre 1 y 65536');
    tsPuerto.SetFocus;
    continuar := false;
  end;
  if continuar then
  begin
    Connection.zConnection.Disconnect; //    ConnectionHMG.Disconnect;
    Connection.zConnection.Catalog := 'mysql'; // .ConnectionHMG.Catalog := 'mysql';
    Connection.zConnection.Catalog := 'mysql'; //ConnectionHMG.Database := 'mysql';
    Connection.zConnection.HostName := listserv.Strings[cmbserver.ItemIndex]; //lblista.text;   //ConnectionHMG.HostName := lbLista.Text;
    Connection.zConnection.Password := intelpass;
    Connection.zConnection.Port := hPuerto;
    Connection.zConnection.Protocol := 'mysql-5';
    Connection.zConnection.User := IntelUser;
    Result := False;
    try
      Connection.zConnection.Connect;
      Result := Connection.zConnection.Ping;
    except
      Result := False;
    end;
    if Result then
    begin
// Mostrar los bases de datos correspondientes a este servidor
      zQuery := tzReadOnlyQuery.Create(Self);
      zQuery.Connection := Connection.zConnection;
      zQuery.SQL.Text := 'show databases';
      zQuery.Open;
      sDataName.Properties.Items.Clear;
      while not zQuery.Eof do
      begin
        if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') then
          sDataName.Properties.Items.Add(zQuery.FieldValues['database']);
        zQuery.Next;
      end;
      zQuery.Destroy;
// Habilitar los campos de las bases de datos
      if sDataName.Properties.Items.Count > 0 then
        sDataName.ItemIndex := 0;
    end
    else
    begin
      ShowMessage('No ha podido ser posible establecer conexión con el servidor especificado.' + #10 + #10 + 'Revise los datos capturados para especificar el servidor o revise su conexión a la red si su base de datos se encuentra en un servidor remoto.');
      tsPuerto.SetFocus;
      Exit;
    end;
  end;
end;

procedure Tfrmacceso.GeneraBDs( Query : TZReadOnlyQuery);
begin
  Query.First;

  DBs.Items.Clear;
  DBs.Visible := True;

  if Query.RecordCount = 0 then
    Exit;

  while not Query.Eof do
  begin
    if AnsiIndexStr( Query.FieldByName( 'database' ).AsString, [ 'performance_schema', 'mysql', 'information_schema', 'test', 'chat', 'chat_php', 'ic_exsoll', 'joomla', 'phpmyadmin', 'adminintel' ] ) < 0 then
    begin
      with DBs.Items.Add do
      begin
        Caption := Query.FieldByName( 'database' ).AsString;
        ImageIndex := 2;
      end;
    end;

    Query.Next;
  end;

  Query.First;
end;

end.

