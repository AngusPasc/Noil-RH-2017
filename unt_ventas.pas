unit unt_ventas;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, global, ComCtrls, frm_connection, DB, jpeg, ExtCtrls,
  ImgList, StdCtrls, RXClock, StdActns, PSAPI, StrUtils, ShellApi,
  Sockets, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdTime, IdTCPServer, IdUDPBase, IdUDPClient, IdEcho, Mask, dxAlertWindow,
  ZConnection, ZDataset, ZAbstractDataset, ZAbstractRODataset, ZAbstractTable,
  ZClasses, ZCollections, ZDbcUtils, DateUtils, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessage, IdGlobal, IdAttachmentFile ;

type
  TCotizacionesCount = type Integer;

type
  VException = class( Exception )
    constructor Create( Error_Mensaje : string );
  end;

type
  TNotificacionesVentas = class( TObject )
    private
      Cotizaciones : TCotizacionesCount;
      zCotizaciones : TZReadOnlyQuery;
      zConexion : TZConnection;
      Alerta : TdxAlertWindowManager;
      Mensaje : TdxAlertWindow;

      procedure Notificar;

    public
      constructor Create;

  end;

type
  TCotizacionMail = class( TObject )
    private
      Smtp : TIdSMTP;
      Socket : TIdSSLIOHandlerSocketOpenSSL;
      IdMsg : TIdMessage;
      Recipientes : array of string;

      PocisionQueryConfig : Pointer;

      procedure InitMailVar( var zQuery : TZQuery; Pass : string );

    public
      Conectado : Boolean;

      function Enviar( Cliente : string ; IdCotizacion : string; Anexo : string  ):Boolean;
      procedure Connect;
      procedure Desconectar();
      constructor Create( Recipients : TListItems );

  end;

const

  {$region 'Consulta cotizaciones cerradas'}

  SQL_BUSCA : string =  'select '+
                        'vco.sIdCompaniaConf, '+
                        'vco.sIdCotizacion, '+
                        'concat("ASUNTO: ", vco.sAsunto, "\n", "\r", '+
                               '"COMPAÑIA: ",vco.sIdCompania, "\n", "\r", '+
                               '"FECHA: ", vco.dFecha, "\n", "\r", '+
                               '"CREO: ", vco.sUsuario, "\n", "\r" '+
                        ') as sDescripcion, '+
                        'count( vcc.sIdConcepto ) as iConceptos '+

                     'from vta_cotizaciones as vco '+

                     'inner join con_companias as vcom '+
                       'on ( vco.sIdCompania = vcom.sIdCompania ) '+

                     'left join vta_conceptosxcotizacion vcc '+
                       'on ( vco.sIdCotizacion = vcc.sIdCotizacion '+
                        '&& vco.sIdCompania = vcc.sIdCompania ) '+

                     'where '+
                       'vco.sIdCompaniaConf = :compania '+
                       'and vco.eEstado = "Pendiente" '+

                     'group by vcc.sIdCompania, vcc.sIdCotizacion';

  {$endregion}

  {$region 'Busca configuracion de ventas'}

  SQL_BUSCA_CONFIG : string = 'select * from vta_configuracion where sNombreCorto = :compania limit 1';

  {$endregion}

  {$region 'Consulta Conceptos de cotización'}

  SQL_COTIZACION_Y_CONCEPTOS : string = 'select '+
                                        'v_cot.sIdCompania, '+
                                        'v_cot.sIdCotizacion, '+
                                        'v_cot.sNombre, '+
                                        'v_cot.sPuesto, '+
                                        'v_cot.sCiudad, '+
                                        'v_cot.sCiudad, '+
                                        'v_cot.sUsuario, '+
                                        'v_cot.dFecha, '+
                                        'v_cot.sFirmante, '+
                                        'v_con.sIdConcepto, '+
                                        'v_con.sDescripcion, '+
                                        'v_con.sUnidad, '+
                                        'v_con.dImporte, '+
                                        'v_con.dCantidad, '+
                                        'v_con.dPU '+

                                      'from vta_conceptosxcotizacion as v_con '+

                                      'inner join vta_cotizaciones as v_cot '+
                                        'on( v_con.sIdCompaniaConf = v_cot.sIdCompaniaConf '+
                                        'and v_con.sIdCompania = v_cot.sIdCompania '+
                                        'and v_con.sIdCotizacion = v_cot.sIdCotizacion ) '+

                                      'where '+
                                        'v_con.sIdCompaniaConf = :compania '+
                                        'and v_con.sIdCompania = :cliente '+
                                        'and v_con.sIdCotizacion = :cotizacion ;';

  {$endregion}

  {$region 'Mensajes de error'}

  Server_Host_Length_Is_Null : string = 'Host del servidor de correo no especificado';
  Server_Password_Is_Null : string = 'Contraseña no especificada';
  Server_UserName_Is_Null : string = 'Usuario para Mail, no especificado';
  Mail_Dont_Send_Message : string = 'No se ha podido enviar el mensaje';
  Mail_User_To_Is_Null : string = 'No se ha especificado una dirección de correo a notificar ';
  Ventas_Config_Not_Found : string = 'No se ha creado una configuración para la compañia de ventas actual';
  Ventas_Cotizacion_Not_Fount : string = 'No se ha encontrado la cotización ';
  Ventas_File_Not_Found : string = 'El archivo espeficicado no se encuentra.';


  {$endregion}

  {$region 'Campos en base de datos'}

  FIELD_MAIL_SMTP_SERVER : string = 'sMail_SmtpSever';
  FIELD_MAIL_USER_MAIL : string = 'sMail_User';
  FIELD_MAIL_USER_TO : string = 'sMail_User_To';
  FIELD_MAIL_SMTP_PORT : string = 'iMail_Port';

  {$endregion}

  var
    MAIL_SMTP_SERVER,
    MAIL_SMTP_PASSWORD,
    MAIL_SMTP_USER_NAME,
    MAIL_SOCKET_DESTINATION,
    MAIL_SOCKET_HOST,
    MAIL_MSG_USER,
    MAIL_EMAIL_TO : string;

    MAIL_MSG_RECIPIENTS : array of string;

    MAIL_SMTP_PORT,
    MAIL_SOCKET_PORT : integer;

implementation

constructor TNotificacionesVentas.Create;
begin
  try
    inherited Create;

    with connection.configuracionVta do
    begin
      Active := False;
      sql.text := 'select * from vta_configuracion where sNombreCorto = :contrato limit 1';
      ParamByName('contrato').AsString := global_contrato;
      Open;

      if recordcount = 0 then
        Exit;
    end;

    if lowercase( connection.configuracionVta.FieldByName('eActivaNotificaciones').AsString) = 'no'  then
      Exit;

    zConexion := TZConnection.Create(nil);    
    zConexion.LoginPrompt := False;
    zConexion.Database := connection.zConnection.Database;
    zConexion.HostName := connection.zConnection.HostName;
    zConexion.Password := connection.zConnection.Password;
    zConexion.Port := connection.zConnection.Port;
    zConexion.Protocol := connection.zConnection.Protocol;
    zConexion.SQLHourGlass := False;
    zConexion.User := connection.zConnection.User;
    try
      zConexion.Connect;
    except
    end;

    if not zConexion.Connected then
      raise Exception.Create('No se ha podido conectar el notificador de cotizaciones al servidor');

    Alerta := TdxAlertWindowManager.Create(nil);
    Alerta.LookAndFeel.NativeStyle := False;
    Alerta.LookAndFeel.SkinName := 'Office2010Silver';
    Alerta.OptionsBehavior.DisplayTime := 1000;
    Alerta.WindowMaxCount := 3;

    zCotizaciones := TZReadOnlyQuery.Create(nil);
    zCotizaciones.Connection := zConexion;
    zCotizaciones.SQL.Text := SQL_BUSCA;
    zCotizaciones.ParamByName('compania').AsString := global_contrato;
    zCotizaciones.Open;

    Cotizaciones := zCotizaciones.RecordCount;

    Application.ProcessMessages;

    if Cotizaciones > 0 then
      Notificar;
      
  except
    on e:Exception do
      MessageDlg(e.Message, mtInformation, [mbOK], 0);
  end;
  
end;


procedure TNotificacionesVentas.Notificar;
begin
  zCotizaciones.First;
  while not zCotizaciones.Eof do
  begin
    Application.ProcessMessages;
    Alerta.Show('Cotización pendiente: '+zCotizaciones.FieldByName('sIdCotizacion').AsString ,zCotizaciones.FieldByName('sDescripcion').AsString );
    zCotizaciones.Next;
  end;
end;


constructor TCotizacionMail.Create( Recipients : TListItems );
var
  i : Integer;
begin
  Smtp := TIdSMTP.Create( nil );
  Socket := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
  IdMsg := TIdMessage.Create( nil );

  InitMailVar( connection.configuracionVta, MAIL_SMTP_PASSWORD );

  Smtp.IOHandler := Socket;
  Smtp.Host := MAIL_SMTP_SERVER;
  Smtp.Username := MAIL_SMTP_USER_NAME;
  Smtp.Password := MAIL_SMTP_PASSWORD;
  Smtp.Port := MAIL_SMTP_PORT;
  Smtp.UseTLS := utUseExplicitTLS;
  Smtp.ValidateAuthLoginCapability := True;
  Smtp.AuthType := satDefault;

  Socket.DefaultPort := 0;
  Socket.IPVersion := Id_IPv4;
  Socket.Destination := MAIL_SOCKET_DESTINATION;
  Socket.Host := MAIL_SOCKET_HOST;
  Socket.MaxLineAction := maException;
  Socket.Port := MAIL_SOCKET_PORT;
  Socket.SSLOptions.Mode := sslmUnassigned;
  Socket.UseNagle := True;

  IdMsg.AttachmentEncoding := 'UUE';

  SetLength( Recipientes, Recipients.Count );

  for i := 0 to Recipients.count - 1 do
    Recipientes[ i ] := Recipients[ i ].Caption ;

end;

procedure TCotizacionMail.InitMailVar( var zQuery : TZQuery; Pass : string );
begin

  {$region 'Buscar configuracion de ventas'}

  zQuery.Active := False;
  zQuery.SQL.Text := SQL_BUSCA_CONFIG;
  zQuery.ParamByName( 'compania' ).AsString := global_contrato;
  zQuery.Open;
  if zQuery.RecordCount = 0 then
    raise VException.Create( Ventas_Config_Not_Found );

  {$endregion}

  {$region 'Inicializa valores globales'}

  MAIL_SMTP_PORT := zQuery.FieldByName( FIELD_MAIL_SMTP_PORT ).AsInteger;
  MAIL_SOCKET_PORT := MAIL_SMTP_PORT;

  MAIL_SMTP_SERVER := Trim( zQuery.FieldByName( FIELD_MAIL_SMTP_SERVER ).AsString );
  MAIL_SMTP_USER_NAME := Trim( zQuery.FieldByName( FIELD_MAIL_USER_MAIL ).AsString );
  MAIL_EMAIL_TO := Trim( zQuery.FieldByName( FIELD_MAIL_USER_TO ).AsString );
  MAIL_SOCKET_DESTINATION := MAIL_SMTP_SERVER + ':' + IntToStr( MAIL_SMTP_PORT );

  MAIL_SOCKET_HOST := MAIL_SMTP_SERVER;
  MAIL_SOCKET_PORT := MAIL_SMTP_PORT;

  {$endregion}

  {$region 'Valida valores'}

  if Length( Trim( MAIL_SMTP_SERVER ) ) = 0 then
    raise Exception.Create( Server_Host_Length_Is_Null );

  if Length( Trim( MAIL_EMAIL_TO ) ) = 0 then
    raise Exception.Create( Mail_User_To_Is_Null );

  if Length( Trim( MAIL_SMTP_PASSWORD ) ) = 0 then
    raise Exception.Create( Server_Password_Is_Null );

  if Length( Trim( MAIL_SMTP_USER_NAME ) ) = 0 then
    raise Exception.Create( Server_UserName_Is_Null );

  {$endregion}

end;

constructor VException.Create(Error_Mensaje: string);
begin
  ;
end;

function TCotizacionMail.Enviar( Cliente : string ; IdCotizacion : string; Anexo : string  ):Boolean;
var
  zQuery : TZReadOnlyQuery;
  Memo : TStringList;

  i : Integer;

  Adjunto : TIdAttachmentFile;
begin
  zQuery := TZReadOnlyQuery.Create( nil );
  zQuery.Connection := connection.zConnection;
  Memo := TStringList.Create;

  zQuery.Active := False;
  zQuery.SQL.Text := SQL_COTIZACION_Y_CONCEPTOS;
  zQuery.ParamByName( 'compania' ).AsString := global_contrato;
  zQuery.ParamByName( 'cliente' ).AsString := Cliente;
  zQuery.ParamByName( 'cotizacion' ).AsString := IdCotizacion;
  zQuery.Open;
  zQuery.First;

  if zQuery.RecordCount = 0 then
    raise VException.Create( Ventas_Cotizacion_Not_Fount );

  Memo.Add( 'Se ha creado la cotización: ' + IdCotizacion );
  Memo.Add( 'Cliente: ' + Cliente );
  Memo.Add( 'Creador: ' + global_usuario + ' - ' + global_nombre );
  Memo.Add( 'Conceptos:' );

  while not zQuery.Eof do
  begin
    Memo.Add( 'Partida: ' + zQuery.FieldByName( 'sIdConcepto' ).AsString + ', Unidad: ' + zQuery.FieldByName( 'sUnidad' ).AsString + ', Importe: ' + zQuery.FieldByName( 'dImporte' ).AsString );
    Memo.Add( 'PU:' + zQuery.FieldByName( 'dPU' ).AsString );
    Memo.Add( 'Importe:' + zQuery.FieldByName( 'dImporte' ).AsString );
    Memo.Add( zQuery.FieldByName( 'sDescripcion' ).AsString );

    zQuery.Next;
  end;

  IdMsg.From.Address := MAIL_SMTP_USER_NAME;
  IdMsg.Recipients.EMailAddresses := connection.configuracionVta.FieldByName( FIELD_MAIL_USER_TO ).AsString;
  IdMsg.Subject := 'Cotización: ' + IdCotizacion;
  IdMsg.Body.Text := Memo.Text + #13 + #13 + #13 + 'Notificación de ventas, enviada por inteligent.';

  if Length( Trim( Anexo ) ) > 0 then
  begin
    if not FileExists( Anexo ) then
      raise Exception.Create( Ventas_File_Not_Found );

    Adjunto := TIdAttachmentFile.Create( IdMsg.MessageParts , Anexo );

  end;

  for i := 0 to Length( Recipientes ) - 1 do
  begin
    with IdMsg.Recipients.Add do
    begin
      Address := Recipientes[ i ];
    end;
  end;

  Smtp.Send( IdMsg );
end;

procedure TCotizacionMail.Connect;
begin
  Smtp.Connect;
  Conectado := Smtp.Connected;
end;

procedure TCotizacionMail.Desconectar;
begin
  Smtp.Disconnect();
  Conectado := Smtp.Connected;
end;

end.
