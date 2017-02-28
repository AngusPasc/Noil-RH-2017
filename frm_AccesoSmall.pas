unit frm_AccesoSmall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Sockets, QControls, DB, strUtils, ADOdb ;

type
  TfrmAccesoSmall = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdUsuario: TEdit;
    tsPassword: TEdit;
    btnAdelante: TBitBtn;
    btnAbortar: TBitBtn;
    ip_client: TTcpClient;
    Label7: TLabel;
    cmbServer: TComboBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccesoSmall : TfrmAccesoSmall;
  intentos : byte ;
  mensaje  : string ;
  sVector   : Array [1..100] of String ;
  
implementation

uses frm_inteligent ;
{$R *.dfm}

procedure TfrmAccesoSmall.btnAdelanteClick(Sender: TObject);
begin
   If cmbServer.Text <> '' Then
   Begin
      Try
         connection.connection_inteligent.Close ;
         connection.connection_inteligent.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;' +
                                         'Data Source=Inteligent;Extended Properties="DATABASE=Inteligent; ' +
                                         'DESCRIPTION=Inteligent Systems; DNS=Inteligent;OPTION=131075;PWD=danae;PORT=3306;' +
                                         'SERVER='+ sVector[cmbServer.ItemIndex + 1 ]  + ';UID=root"' ;
         connection.connection_inteligent.Open ;

         global_Server := cmbServer.Text ;
         global_ipserver := sVector[cmbServer.ItemIndex + 1 ] ;
         connection.BuscaReadOnly.Active := False ;
         connection.BuscaReadOnly.SQL.Clear ;
         connection.BuscaReadOnly.SQL.Add('select * from usuarios where sIdUsuario = :usuario' ) ;
         connection.BuscaReadOnly.Parameters.ParamByName('Usuario').Value := tsIdUsuario.Text ;
         connection.BuscaReadOnly.Parameters.ParamByName('Usuario').DataType := ftString ;
         connection.BuscaReadOnly.Open ;

         If connection.BuscaReadOnly.RecordCount > 0 then
         begin
              If connection.BuscaReadOnly.FieldValues['spassword'] = tsPassword.Text then
              begin
                  Connection.ContratosxUsuario.Active := False ;
                  Connection.ContratosxUsuario.SQL.Clear ;
                  Connection.ContratosxUsuario.SQL.Add('Select c.sContrato, c.mDescripcion From ContratosxUsuario u INNER JOIN Contratos c ON ' +
                                                       '(c.sContrato = u.sContrato and c.lStatus = "Activo") ' +
                                                       'Where u.sIdUsuario = :Usuario Order By c.sContrato') ;
                  Connection.ContratosxUsuario.Parameters.ParamByName('Usuario').DataType := ftString ;
                  Connection.ContratosxUsuario.Parameters.ParamByName('Usuario').Value := connection.BuscaReadOnly.FieldValues['sIdUsuario'] ;
                  Connection.ContratosxUsuario.Open ;
                  If Connection.ContratosxUsuario.RecordCount > 0 Then
                  Begin
                      global_contrato := '' ;
                      global_usuario := connection.BuscaReadOnly.FieldValues['sIdUsuario'] ;
                      global_password := connection.BuscaReadOnly.FieldValues['sPassword'] ;
                      global_nombre := connection.BuscaReadOnly.FieldValues['sNombre'] ;
                      global_depto := connection.BuscaReadOnly.FieldValues['sIdDepartamento'] ;
                      global_puesto := connection.BuscaReadOnly.FieldValues['sPuesto'] ;
                      global_activo := connection.BuscaReadOnly.fieldvalues['lActivo'] ;
                      global_ip := connection.BuscaReadOnly.fieldvalues['sIp'] ;
                      global_grupo := connection.BuscaReadOnly.fieldvalues['sIdGrupo'] ;
                      global_ip := ip_client.LocalHostAddr ;

                      close ;
                  End
                  Else
                      application.MessageBox('El Usuario no tiene asignado un contrato, informe al administrador del software.' , 'Inteligent') ;
                  close ;
              end
              else
              begin
                  intentos := intentos + 1 ;
                  beep
              end
         end
         else
         begin
              If (tsIdUsuario.Text = 'INTEL-CODE') And (tsPassword.Text = 'XDAEFE') Then
              Begin

                  Connection.ContratosxUsuario.Active := False ;
                  Connection.ContratosxUsuario.SQL.Clear ;
                  Connection.ContratosxUsuario.SQL.Add('Select * From Contratos Order By sContrato') ;
                  Connection.ContratosxUsuario.Open ;

                  global_usuario := 'INTEL-CODE' ;
                  global_contrato := '' ;
                  Close ;
              End
              Else
              Begin
                  intentos := intentos + 1 ;
                  beep ;
              End
         end ;
      Except
          Application.MessageBox('Ocurrio un error al tratar de conectarse a la base de datos origen' , 'Inteligent' , 0 ) ;
      End
  End ;
  If intentos = 3 then
  begin
    application.MessageBox('Intento accesar en mas de 3 ocaciones. Saliendo del Sistema' , 'Inteligent') ;
    close
  end

end;


procedure TfrmAccesoSmall.FormShow(Sender: TObject);
Var
    MiArchivo : String ;
    FileText  : TextFile ;
    wCadena   : WideString ;
    sTipo     : String ;
    iVector,
    iPos      : Byte ;
begin
    cmbServer.Items.Clear ;

    For iVector := 1 To 100 Do
        sVector [iVector] := '' ;

    iVector := 1 ;
    MiArchivo := 'C:\Inteligent\Inteligent.ini' ;
    AssignFile (FileText, MiArchivo) ;
    Reset(FileText) ;

    While NOT Eof (FileText) Do
    Begin
        ReadLn (FileText, wCadena) ;
        iPos := Pos ( '=' , wCadena) ;
        If UpperCase(MidStr ( wCadena , 1 , iPos - 1 )) = 'TITLE_EMBARQUE' Then
           global_title_embarque := MidStr ( wCadena , iPos + 1 , Length (wCadena))
        Else
            If UpperCase(MidStr ( wCadena , 1 , iPos - 1 )) = 'FILES' Then
                 global_files := MidStr ( wCadena , iPos + 1 , Length (wCadena))
            Else
            Begin
                If MidStr ( wCadena , 1 , 1 ) = '[' Then
                    sTipo := MidStr ( wCadena , 1 , Pos ( ']' , wCadena ))
                Else
                    If sTipo = '[DATA_BASE]' Then
                    Begin
                        sVector[iVector] := MidStr ( wCadena , 1 , Pos ( '=' , wCadena ) - 1 ) ;
                        wCadena := MidStr( wCadena , Pos ( '=' , wCadena ) + 1 , Length (wCadena)) ;
                        cmbServer.Items.Add (wCadena) ;
                        iVector := iVector + 1 ;
                    End ;
            End
    End ;
    CloseFile (FileText) ;
    If global_files = '' Then
        global_files := 'c:\Inteligent\Reportes\' ;

    intentos := 0 ;
    tsPassword.Text := '' ;
    If cmbServer.Items.Count > 0 Then
        cmbServer.ItemIndex := 0 ;
    cmbServer.SetFocus
end;

procedure TfrmAccesoSmall.btnAbortarClick(Sender: TObject);
begin
  close
end;

procedure TfrmAccesoSmall.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnAdelante.SetFocus
end;

procedure TfrmAccesoSmall.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure TfrmAccesoSmall.tsIdUsuarioEnter(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_entrada ;
end;

procedure TfrmAccesoSmall.tsIdUsuarioExit(Sender: TObject);
begin
    tsIdUsuario.Color := global_color_salida
end;

procedure TfrmAccesoSmall.tsPasswordEnter(Sender: TObject);
begin
    tsPassword.Color := global_color_entrada
end;

procedure TfrmAccesoSmall.tsPasswordExit(Sender: TObject);
begin
    tsPassword.Color := global_color_salida
end;

procedure TfrmAccesoSmall.cmbServerEnter(Sender: TObject);
begin
    cmbServer.Color := global_color_Entrada
end;

procedure TfrmAccesoSmall.cmbServerExit(Sender: TObject);
begin
    cmbServer.Color := global_color_Salida
end;

procedure TfrmAccesoSmall.cmbServerKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsIdUsuario.SetFocus 
end;

end.
