unit frm_seleccionarpaquetecotemar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, utilerias, StdCtrls, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Mask, rxToolEdit, rxCurrEdit,
  ComCtrls;

type
  TfrmSeleccionarAnexoCotemar = class(TForm)
    grupoExistente: TGroupBox;
    dsPaquetes: TDataSource;
    Label1: TLabel;
    grupoNuevo: TGroupBox;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    chkSeleccionar: TRadioButton;
    RadioButton3: TRadioButton;
    chkCrear: TRadioButton;
    Label3: TLabel;
    cmdCancelar: TButton;
    qryPaquetes: TZQuery;
    Label4: TLabel;
    mDescripcion: TDBMemo;
    DBComboBox1: TDBComboBox;
    sNumeroActividad: TEdit;
    sDescripcion: TMemo;
    Label6: TLabel;
    Label5: TLabel;
    dFechaInicio: TDateTimePicker;
    dFechaFinal: TDateTimePicker;
    Duracion: TRxCalcEdit;
    Label7: TLabel;
    procedure chkSeleccionarClick(Sender: TObject);
    procedure chkCrearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dFechaInicioChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeleccionarAnexoCotemar: TfrmSeleccionarAnexoCotemar;

implementation

{$R *.dfm}

//este formulario no sirve para importar los anexos..
procedure TfrmSeleccionarAnexoCotemar.chkCrearClick(Sender: TObject);
begin
  grupoExistente.Enabled := false;
  grupoNuevo.Enabled := true;
  grupoNuevo.Color := clInactiveCaption;
  grupoExistente.Color := clBtnFace;

  sNumeroActividad.setFocus;
end;

procedure TfrmSeleccionarAnexoCotemar.chkSeleccionarClick(Sender: TObject);
begin
  grupoExistente.Enabled := true;
  grupoNuevo.Enabled := false;
  grupoNuevo.Color := clBtnFace;
  grupoExistente.Color := clInactiveCaption;

  DBComboBox1.SetFocus;
end;

procedure TfrmSeleccionarAnexoCotemar.cmdCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSeleccionarAnexoCotemar.dFechaInicioChange(Sender: TObject);
begin
  Duracion.value := dFechaFinal.Date - dFechaInicio.Date;
end;

procedure TfrmSeleccionarAnexoCotemar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSeleccionarAnexoCotemar.FormShow(Sender: TObject);
begin
  grupoExistente.Enabled := true;
  grupoNuevo.Enabled := false;
  grupoNuevo.Color := clBtnFace;
  grupoExistente.Color := clInactiveCaption;

  DBComboBox1.SetFocus;

  qryPaquetes.Active := false;
  qryPaquetes.Params.ParamByName('contrato').Value := global_contrato;
  qryPaquetes.Open;
end;

end.

