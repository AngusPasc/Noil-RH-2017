unit Frm_AsistenciaSelfecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, JvExControls, JvLabel, ComCtrls;

type
  TFrmAsistenciaSelfecha = class(TForm)
    DtFecha: TDateTimePicker;
    lbTitulo: TJvLabel;
    Seleccionar: TAdvGlowButton;
    procedure DtFechaChange(Sender: TObject);
    procedure SeleccionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Efecha: tdatetime;
    Resultado : integer;
  end;

var
  FrmAsistenciaSelfecha: TFrmAsistenciaSelfecha;

implementation

{$R *.dfm}

procedure TFrmAsistenciaSelfecha.DtFechaChange(Sender: TObject);
begin
  Efecha:= DtFecha.Date;
end;

procedure TFrmAsistenciaSelfecha.FormCreate(Sender: TObject);
begin
  Resultado := mrcancel;
end;

procedure TFrmAsistenciaSelfecha.SeleccionarClick(Sender: TObject);
begin
  Resultado := mrok;
  Close;
end;

end.
