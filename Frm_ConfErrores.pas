unit Frm_ConfErrores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frm_connection, Spin;

type
  TFrmConfErrores = class(TForm)
    btnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel1: TPanel;
    chkFecha: TCheckBox;
    chkFormulario: TCheckBox;
    chkDescripcion: TCheckBox;
    chkError: TCheckBox;
    chkMensaje: TCheckBox;
    zConferrores: TZQuery;
    tFecha: TSpinEdit;
    tFormulario: TSpinEdit;
    tDescripcion: TSpinEdit;
    tError: TSpinEdit;
    tMensaje: TSpinEdit;
    mMensaje: TMemo;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure volcar;
    procedure guardar;
    procedure reacomodar;
  public
    { Public declarations }
  end;

var
  FrmConfErrores: TFrmConfErrores;

implementation

{$R *.dfm}

{ TFrmConfErrores }

procedure TFrmConfErrores.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConfErrores.btnOkClick(Sender: TObject);
begin
  reacomodar;
  guardar;
end;

procedure TFrmConfErrores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmConfErrores.FormShow(Sender: TObject);
begin
  zConferrores.Active := false;
  zConferrores.Open;
  if zConferrores.RecordCount < 1 then
  begin
    ShowMessage('La base de datos tiene errores de configuración, avisar al administrador del sistema');
    close;
  end;
  volcar;
end;

procedure TFrmConfErrores.guardar;
begin
  zConferrores.RecNo := 1;
  zConferrores.Edit;
  zConferrores.FieldByName('sTexto').AsString := mMensaje.Text;
  zConferrores.FieldByName('iValor').AsInteger := tMensaje.Value;
  zConferrores.Post;

  zConferrores.RecNo := 2;
  zConferrores.Edit;
  zConferrores.FieldByName('iValor').AsInteger := tError.Value;
  zConferrores.Post;

  zConferrores.RecNo := 3;
  zConferrores.Edit;
  zConferrores.FieldByName('iValor').AsInteger := tFormulario.Value;
  zConferrores.Post;

  zConferrores.RecNo := 4;
  zConferrores.Edit;
  zConferrores.FieldByName('iValor').AsInteger := tDescripcion.Value;
  zConferrores.Post;

  zConferrores.RecNo := 5;
  zConferrores.Edit;
  zConferrores.FieldByName('iValor').AsInteger := tFecha.Value;
  zConferrores.Post;
end;

procedure TFrmConfErrores.reacomodar;
begin
  if not chkFecha.Checked then
    tFecha.Value := 0;
  if not chkFormulario.Checked then
    tFormulario.Value := 0;
  if not chkDescripcion.Checked then
    tDescripcion.Value := 0;
  if not chkError.Checked then
    tError.Value := 0;
  if not chkMensaje.Checked then
    tMensaje.Value := 0;

  if tFormulario.Value > 0 then
  begin
    if tFormulario.Value = tFecha.Value then
      tFormulario.Value := 0;
  end;

  if tDescripcion.Value > 0 then
  begin
    if (tDescripcion.Value = tFecha.Value) or
      (tDescripcion.Value = tFormulario.Value) then
        tDescripcion.Value := 0;
  end;

  if tError.Value > 0 then
  begin
    if (tError.Value = tFecha.Value) or
      (tError.Value = tFormulario.Value) or
      (tError.Value = tDescripcion.Value) then
        tError.Value := 0;
  end;

  if tMensaje.Value > 0 then
  begin
    if (tMensaje.Value = tFecha.Value) or
      (tMensaje.Value = tFormulario.Value) or
      (tMensaje.Value = tDescripcion.Value) or
      (tMensaje.Value = tError.Value) then
        tMensaje.Value := 0;
  end;

  if tFecha.Value = 0 then
    chkFecha.Checked := false;
  if tFormulario.Value = 0 then
    chkFormulario.Checked := false;
  if tDescripcion.Value = 0 then
    chkDescripcion.Checked := false;
  if tError.Value = 0 then
    chkError.Checked := false;
  if tMensaje.Value = 0 then
    chkMensaje.Checked := false;
end;

procedure TFrmConfErrores.volcar;
begin
  zConferrores.RecNo := 1;
  mMensaje.Text := zConferrores.FieldByName('sTexto').AsString;
  tMensaje.Value := zConferrores.FieldByName('iValor').AsInteger;
  if zConferrores.FieldByName('iValor').AsInteger > 0 then
    chkMensaje.Checked := true
  else
    chkMensaje.Checked := false;

  zConferrores.RecNo := 2;
  tError.Value := zConferrores.FieldByName('iValor').AsInteger;
  if zConferrores.FieldByName('iValor').AsInteger > 0 then
    chkError.Checked := true
  else
    chkError.Checked := false;

  zConferrores.RecNo := 3;
  tFormulario.Value := zConferrores.FieldByName('iValor').AsInteger;
  if zConferrores.FieldByName('iValor').AsInteger > 0 then
    chkFormulario.Checked := true
  else
    chkFormulario.Checked := false;

  zConferrores.RecNo := 4;
  tDescripcion.Value := zConferrores.FieldByName('iValor').AsInteger;
  if zConferrores.FieldByName('iValor').AsInteger > 0 then
    chkDescripcion.Checked := true
  else
    chkDescripcion.Checked := false;

  zConferrores.RecNo := 5;
  tFecha.Value := zConferrores.FieldByName('iValor').AsInteger;
  if zConferrores.FieldByName('iValor').AsInteger > 0 then
    chkFecha.Checked := true
  else
    chkFecha.Checked := false;
end;

end.
