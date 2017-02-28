unit frm_Agrega_Personal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_Agrega = class(TForm)
    lblNombre: TLabel;
    lblApPaterno: TLabel;
    lblApMaterno: TLabel;
    lblDomicilio: TLabel;
    lblCiudad: TLabel;
    lblTel: TLabel;
    lblEmail: TLabel;
    lblcurp: TLabel;
    lblIMSS: TLabel;
    lblNacionalidad: TLabel;
    lblEstadoCivil: TLabel;
    lblFNacimiento: TLabel;
    lblLNacimiento: TLabel;
    lblEdad: TLabel;
    edtNombres: TEdit;
    edtApPaterno: TEdit;
    edtApMaterno: TEdit;
    edtDomicilio: TEdit;
    edtCiudad: TEdit;
    edtTelefono: TEdit;
    edtEMail: TEdit;
    edtCURP: TEdit;
    edtIMSS: TEdit;
    edtNacionalidad: TEdit;
    edtEcivil: TEdit;
    edtFNacimiento: TEdit;
    edtLNacimiento: TEdit;
    edtEdad: TEdit;
    btnAceptar: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Agrega: Tfrm_Agrega;

implementation

{$R *.dfm}

procedure Tfrm_Agrega.btnAceptarClick(Sender: TObject);
begin
      //zqryEmpleado.Activate := True;
      //zqryEmpleados.sql.Clear;
      //zqryEmpleados.Add( );
end;

procedure Tfrm_Agrega.btnCancelarClick(Sender: TObject);
begin
    frm_Agrega.Close;
end;

end.
