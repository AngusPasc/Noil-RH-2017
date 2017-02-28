unit frm_ConfiguraMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, sSkinProvider, EllipsLabel,
  AdvGroupBox, Buttons ;

type
  TfrmConfiguraMail = class(TForm)
    sSkinProvider1: TsSkinProvider;
    AdvGroupBox1: TAdvGroupBox;
    EllipsLabel1: TEllipsLabel;
    EllipsLabel2: TEllipsLabel;
    EllipsLabel3: TEllipsLabel;
    txtDestino: TEdit;
    txtCC: TEdit;
    txtCCO: TEdit;
    EllipsLabel4: TEllipsLabel;
    txtAsunto: TEdit;
    EllipsLabel5: TEllipsLabel;
    txtTexto: TMemo;
    cmdCancelar: TButton;
    SpeedButton1: TSpeedButton;
    cmdAcept: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure cmdCancelarClick(Sender: TObject);
    procedure cmdAceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure txtCCKeyPress(Sender: TObject; var Key: Char);
    procedure txtCCOKeyPress(Sender: TObject; var Key: Char);
    procedure txtAsuntoKeyPress(Sender: TObject; var Key: Char);
    procedure txtTextoKeyPress(Sender: TObject; var Key: Char);
    procedure cmdAceptKeyPress(Sender: TObject; var Key: Char);
    procedure txtDestinoEnter(Sender: TObject);
    procedure txtDestinoExit(Sender: TObject);
    procedure txtCCEnter(Sender: TObject);
    procedure txtCCExit(Sender: TObject);
    procedure txtCCOEnter(Sender: TObject);
    procedure txtCCOExit(Sender: TObject);
    procedure txtAsuntoEnter(Sender: TObject);
    procedure txtAsuntoExit(Sender: TObject);
    procedure txtTextoEnter(Sender: TObject);
    procedure txtTextoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguraMail: TfrmConfiguraMail;
  localOpcion : string;

implementation

{$R *.dfm}

procedure TfrmConfiguraMail.cmdAceptClick(Sender: TObject);
begin
    if LocalOpcion  = 'Editar' then
    begin
         Connection.qryBusca.Active := False ;
         Connection.qryBusca.SQL.Clear ;
         Connection.qryBusca.SQL.Add('Update usuarios set sDestino =:Destino, sCC =:CC, sCCO =:CCO, sAsunto =:Asunto, sContenido =:Contenido where sIdUsuario =:Usuario ') ;
         Connection.qryBusca.Params.ParamByName('Usuario').DataType   := ftString ;
         Connection.qryBusca.Params.ParamByName('Usuario').Value      := global_usuario;
         Connection.qryBusca.Params.ParamByName('Destino').DataType   := ftString ;
         Connection.qryBusca.Params.ParamByName('Destino').Value      := txtDestino.Text;
         Connection.qryBusca.Params.ParamByName('CC').DataType        := ftString ;
         Connection.qryBusca.Params.ParamByName('CC').Value           := txtCC.Text;
         Connection.qryBusca.Params.ParamByName('CCO').DataType       := ftString ;
         Connection.qryBusca.Params.ParamByName('CCO').Value          := txtCCO.Text;
         Connection.qryBusca.Params.ParamByName('Asunto').DataType    := ftString ;
         Connection.qryBusca.Params.ParamByName('Asunto').Value       := txtAsunto.Text;
         Connection.qryBusca.Params.ParamByName('Contenido').DataType := ftString ;
         Connection.qryBusca.Params.ParamByName('Contenido').Value    := txtTexto.Text;
         Connection.qryBusca.ExecSQL ;
    end
    else
    begin
         mUserMail[1] := txtDestino.Text;
         mUserMail[2] := txtCC.Text;
         muserMail[3] := txtCCO.Text;
         mUserMail[4] := txtAsunto.Text;
         mUserMail[5] := txtTexto.Text;
    end;

     frmConfiguraMail.Close;
end;

procedure TfrmConfiguraMail.cmdAceptKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
     cmdCancelar.SetFocus
end;

procedure TfrmConfiguraMail.cmdCancelarClick(Sender: TObject);
begin
     mUserMail[1] := '';
     mUserMail[2] := '';
     muserMail[3] := '';
     mUserMail[4] := '';
     mUserMail[5] := '';

     frmConfiguraMail.Close;
end;

procedure TfrmConfiguraMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;



procedure TfrmConfiguraMail.FormShow(Sender: TObject);
begin
     LocalOpcion := '';
     //Busqueda de los datos del usuario..
     Connection.qryBusca.Active := False ;
     Connection.qryBusca.SQL.Clear ;
     Connection.qryBusca.SQL.Add('select * from usuarios where sIdUsuario =:Usuario and lEnviaCorreo = "Si" ') ;
     Connection.qryBusca.Params.ParamByName('Usuario').DataType := ftString ;
     Connection.qryBusca.Params.ParamByName('Usuario').Value    := global_Usuario;
     Connection.qryBusca.Open ;

     if connection.QryBusca.RecordCount > 0 then
     begin
          txtDestino.Text := connection.QryBusca.FieldValues['sDestino'];
          txtCC.Text      := connection.QryBusca.FieldValues['sCC'];
          txtCCO.Text     := connection.QryBusca.FieldValues['sCCO'];
          txtAsunto.Text  := connection.QryBusca.FieldValues['sAsunto'];
          txtTexto.Text   := connection.QryBusca.FieldValues['sContenido'];
          LocalOpcion     := 'Editar';
     end
     else
     begin
          mUserMail[1] := '';
          mUserMail[2] := '';
          muserMail[3] := '';
          mUserMail[4] := '';
          mUserMail[5] := '';
          LocalOpcion  := 'Nuevo';
     end;

end;

procedure TfrmConfiguraMail.txtAsuntoEnter(Sender: TObject);
begin
     txtAsunto.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtAsuntoExit(Sender: TObject);
begin
     txtAsunto.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtAsuntoKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtTexto.SetFocus
end;

procedure TfrmConfiguraMail.txtCCEnter(Sender: TObject);
begin
     txtCC.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtCCExit(Sender: TObject);
begin
     txtCC.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtCCKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtCCO.SetFocus
end;

procedure TfrmConfiguraMail.txtCCOEnter(Sender: TObject);
begin
     txtCCO.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtCCOExit(Sender: TObject);
begin
     txtCCO.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtCCOKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
       txtAsunto.SetFocus
end;

procedure TfrmConfiguraMail.txtDestinoEnter(Sender: TObject);
begin
     txtDestino.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtDestinoExit(Sender: TObject);
begin
      txtDestino.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtDestinoKeyPress(Sender: TObject; var Key: Char);
begin
    If key = #13 then
       txtCC.SetFocus
end;

procedure TfrmConfiguraMail.txtTextoEnter(Sender: TObject);
begin
     txtTexto.Color := global_color_entrada
end;

procedure TfrmConfiguraMail.txtTextoExit(Sender: TObject);
begin
    txtTexto.Color := global_color_salida
end;

procedure TfrmConfiguraMail.txtTextoKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
     cmdAcept.SetFocus
end;

end.

