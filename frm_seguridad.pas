unit frm_seguridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, global, frm_connection, DB;

type
  TfrmSeguridad = class(TForm)
    grValida: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tsIdUsuarioValida: TEdit;
    tsPasswordValida: TEdit;
    btnValidar: TBitBtn;
    btnSalir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure ColorEntrada(Sender: TObject);
    procedure ColorSalida(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure tsIdUsuarioValidaKeyPress(Sender: TObject; var Key: Char);
    procedure tsPasswordValidaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeguridad: TfrmSeguridad;

implementation

{$R *.dfm}

procedure TfrmSeguridad.FormShow(Sender: TObject);
begin
    global_valida   := '' ;
    global_autoriza := '' ;
    If global_tipo_autorizacion = 'Validación' Then
        Caption := 'Claves de Seguridad Contratista'
    Else
        If global_tipo_autorizacion = 'Autorización' Then
            Caption := 'Claves de Seguridad Supervisión de PEP'
        Else
            Caption := 'Claves de Seguridad Residencia de Obras' ;
    tsIdUsuarioValida.SetFocus
end;

procedure TfrmSeguridad.btnValidarClick(Sender: TObject);
begin
    If global_tipo_autorizacion = 'Validación' Then
    Begin
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select u.sNombre, u.sPassword, u.lValida, u.sIdGrupo From usuarios u ' +
                                    'INNER JOIN contratosxusuario c ON (u.sIdUsuario = c.sIdUsuario and c.sContrato = :Contrato) ' +
                                    'Where u.sIdUsuario = :Usuario') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('Usuario').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Usuario').Value := tsIdUsuarioValida.Text ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
            If Connection.QryBusca.FieldValues['sPassword'] = tsPasswordValida.Text Then
                If Connection.QryBusca.FieldValues['lValida'] = 'Si' Then
                Begin
                    global_valida := tsIdUsuarioValida.Text ;
                    close ;
                End
                Else
                    If Connection.QryBusca.FieldValues['sIdGrupo'] = 'INTEL-CODE' Then
                    Begin
                        global_valida := global_usuario ;
                        close
                    End
            Else
                MessageDlg('El password del usuario ' +  Connection.QryBusca.FieldValues['sNombre'] + ' es erroneo.', mtWarning, [mbOk], 0)
        Else
            MessageDlg('El usuario que valida no se encuentra o no tiene derechos de validación de procesos.', mtWarning, [mbOk], 0);
    End
    Else
        If global_tipo_autorizacion = 'Autorización' Then
        Begin
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select u.sNombre, u.sPassword, u.lAutoriza, u.sIdGrupo From usuarios u ' +
                                        'INNER JOIN contratosxusuario c ON (u.sIdUsuario = c.sIdUsuario and c.sContrato = :Contrato) ' +
                                        'Where u.sIdUsuario = :Usuario') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('Usuario').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Usuario').Value := tsIdUsuarioValida.Text ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                If Connection.QryBusca.FieldValues['sPassword'] = tsPasswordValida.Text Then
                    If Connection.QryBusca.FieldValues['lAutoriza'] = 'Si' Then
                    Begin
                        global_autoriza := tsIdUsuarioValida.Text ;
                        close ;
                    End
                    Else
                        If Connection.QryBusca.FieldValues['sIdGrupo'] = 'INTEL-CODE' Then
                        begin
                            global_valida := global_usuario ;
                            close
                        end
                Else
                    MessageDlg('El password del usuario ' +  Connection.QryBusca.FieldValues['sNombre'] + ' es erroneo.', mtWarning, [mbOk], 0)
            Else
                MessageDlg('El usuario que autoriza no se encuentra o no tiene derechos de autorización de procesos.', mtWarning, [mbOk], 0);
        End
end;

procedure TfrmSeguridad.ColorEntrada(Sender: TObject);
begin
     (Sender as TEdit).Color := global_color_entrada ;
end;

procedure TfrmSeguridad.ColorSalida(Sender: TObject);
begin
     (Sender as TEdit).Color := global_color_salida
end;

procedure TfrmSeguridad.btnSalirClick(Sender: TObject);
begin
  close
end;

procedure TfrmSeguridad.tsIdUsuarioValidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsPasswordValida.SetFocus         
end;

procedure TfrmSeguridad.tsPasswordValidaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnValidar.SetFocus
end;

end.
