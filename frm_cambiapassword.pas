unit frm_cambiapassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, Sockets,  DB, strUtils,
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlUpdate, unitexcepciones;

type
  Tfrmcambiopassword = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdUsuario: TEdit;
    tsPassword: TEdit;
    btnAdelante: TBitBtn;
    btnAbortar: TBitBtn;
    Label3: TLabel;
    tsPassword1: TEdit;
    Label4: TLabel;
    tsPassword2: TEdit;
    usuarios: TZQuery;
    procedure btnAbortarClick(Sender: TObject);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure tsPassword1Enter(Sender: TObject);
    procedure tsPassword1Exit(Sender: TObject);
    procedure tsPassword1KeyPress(Sender: TObject; var Key: Char);
    procedure tsPassword2Enter(Sender: TObject);
    procedure tsPassword2Exit(Sender: TObject);
    procedure tsPassword2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcambiopassword : Tfrmcambiopassword;
  intentos : byte ;
  mensaje  : string ;
  sVector   : Array [1..100] of String ;
  
implementation

uses frm_inteligent ;
{$R *.dfm}

procedure Tfrmcambiopassword.btnAbortarClick(Sender: TObject);
begin
  close
end;

procedure Tfrmcambiopassword.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsPassword1.SetFocus 
end;

procedure Tfrmcambiopassword.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure Tfrmcambiopassword.tsPasswordEnter(Sender: TObject);
begin
    tsPassword.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPasswordExit(Sender: TObject);
begin
    tsPassword.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.FormShow(Sender: TObject);
begin
    tsIdUsuario.Text := global_usuario ;
    tsPassword.Text := '' ;
    tsPassword1.Text := '' ;
    tsPassword2.Text := '' ;
    tsPassword.SetFocus
end;

procedure Tfrmcambiopassword.btnAdelanteClick(Sender: TObject);
Begin

 If (tsIdUsuario.Text <> 'root') And (tsIdUsuario.Text <> 'ROOT') Then
  Begin
    If global_password = tsPassword.Text Then
        If tsPassword1.Text = tsPassword2.Text Then
            If global_password <> tsPassword1.Text Then
            Begin
                try
                    usuarios.Active := False ;
                    usuarios.SQL.Clear ;
                    usuarios.SQL.Add('UPDATE usuarios SET sPassword = :Password Where sIdUsuario = :Usuario') ;
                    usuarios.Params.ParamByName('Usuario').DataType := ftString ;
                    usuarios.Params.ParamByName('Usuario').value := global_usuario ;
                    usuarios.Params.ParamByName('Password').DataType := ftString ;
                    usuarios.Params.ParamByName('Password').value := tsPassword1.Text ;
                    usuarios.ExecSQL ;
                    global_password := tsPassword2.Text;
                except
                    on e : exception do begin
                       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Cambio de Password de Validacion/Autorizacion', 'Al salvar registro', 0);
                    end;
                end;
                application.MessageBox('Se ha cambiado su contraseña' , 'Inteligent') ;
                close ;
            End
            Else
              application.MessageBox('Error, la nueva contraseña debe ser diferente a la contraseña anterior.' , 'Inteligent')
        Else
            application.MessageBox('Error, la nueva contraseña y la confirmación de la nueva contraseña deben ser iguales' , 'Inteligent')
    Else
        application.MessageBox('Error, contraseña del Usuario incorrecta, introduzca la contraseña correcta.' , 'Inteligent') ;
end;
end ;

procedure Tfrmcambiopassword.tsPassword1Enter(Sender: TObject);
begin
    tsPassword1.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPassword1Exit(Sender: TObject);
begin
    tsPassword1.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.tsPassword1KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsPassword2.SetFocus
end;

procedure Tfrmcambiopassword.tsPassword2Enter(Sender: TObject);
begin
    tsPassword2.Color := global_color_entradaERP
end;

procedure Tfrmcambiopassword.tsPassword2Exit(Sender: TObject);
begin
    tsPassword2.Color := global_color_salidaPU
end;

procedure Tfrmcambiopassword.tsPassword2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnAdelante.SetFocus
end;

end.



