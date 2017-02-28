unit frm_controlEmpleados2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxPageControl, NxColumns, NxDBColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton, frm_Connection,
  StdCtrls, Mask, DBCtrls, JvDBDotNetControls, JvExStdCtrls, JvDBCombobox,
  JvExControls, JvDBLookup, global, JvCombobox;

type
  TfrmControlEmpleados2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    JvDotNetDBEdit1: TJvDotNetDBEdit;
    JvDotNetDBEdit2: TJvDotNetDBEdit;
    JvDotNetDBEdit3: TJvDotNetDBEdit;
    JvDotNetDBEdit5: TJvDotNetDBEdit;
    JvDotNetDBEdit7: TJvDotNetDBEdit;
    JvDotNetDBEdit8: TJvDotNetDBEdit;
    JvDotNetDBEdit9: TJvDotNetDBEdit;
    JvDotNetDBEdit10: TJvDotNetDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    zq_categoria: TZQuery;
    ds_categoria: TDataSource;
    zq_categoriasContrato: TStringField;
    zq_categoriasIdPersonal: TStringField;
    zq_categoriaiItemOrden: TIntegerField;
    zq_categoriasDescripcion: TStringField;
    zq_categoriasIdTipoPersonal: TStringField;
    zq_categoriasMedida: TStringField;
    zq_categoriadCantidad: TFloatField;
    zq_categoriadCostoMN: TFloatField;
    zq_categoriadCostoDLL: TFloatField;
    zq_categoriadVentaMN: TFloatField;
    zq_categoriadVentaDLL: TFloatField;
    zq_categoriadFechaInicio: TDateField;
    zq_categoriadFechaFinal: TDateField;
    zq_categorialProrrateo: TStringField;
    zq_categorialCobro: TStringField;
    zq_categorialImprime: TStringField;
    zq_categorialAplicaTM: TStringField;
    zq_categoriaiJornada: TIntegerField;
    zq_categorialDistribuye: TStringField;
    zq_categorialPernocta: TStringField;
    zq_categoriasAgrupaPersonal: TStringField;
    ds_1: TDataSource;
    zq_1: TZQuery;
    zq_1sContrato: TStringField;
    zq_1sIdEmpleado: TStringField;
    zq_1sNombre: TStringField;
    zq_1sDomicilio: TStringField;
    zq_1sCiudad: TStringField;
    zq_1sTelefono: TStringField;
    zq_1sCurp: TStringField;
    zq_1sRfc: TStringField;
    zq_1sImss: TStringField;
    zq_1sIdPersonal: TStringField;
    zq_1id: TIntegerField;
    zq_1lStatus: TStringField;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlEmpleados2: TfrmControlEmpleados2;
  AccionRegistro, idEditar : Integer;

implementation
Uses frm_ControlEmpleados;
{$R *.dfm}

procedure TfrmControlEmpleados2.AdvGlowButton1Click(Sender: TObject);
begin
  zq_1.Cancel;
  close;
end;

procedure TfrmControlEmpleados2.AdvGlowButton2Click(Sender: TObject);
begin
  zq_1.Post;
  frmControlEmpleados.zq_1.Refresh;
  Close;
end;

procedure TfrmControlEmpleados2.FormShow(Sender: TObject);
  Var
    Valores : TStringList;
begin
  zq_categoria.Params.ParamByName('Contrato').DataType := ftString;
  zq_categoria.Params.ParamByName('Contrato').Value := global_contrato;
  zq_Categoria.Open;
  zq_1.Params.ParamByName('Contrato').DataType := ftString;
  zq_1.Params.ParamByName('Contrato').Value := global_contrato;
  if AccionRegistro = 1 then begin
    zq_1.Open;
    zq_1.Append;
    zq_1.FieldValues['sContrato'] := global_contrato;
  end else begin
    zq_1.SQL.Text := 'SELECT * FROM empleados WHERE id = ' + IntToStr(idEditar);
    zq_1.Open;
    zq_1.Edit;
  end;
  Valores := TStringList.Create;
  JvDBComboBox1.AddItem('LABORANDO', nil);
  Valores.Add('LABORANDO');
  JvDBComboBox1.AddItem('DESCANSO', nil);
  Valores.Add('DESCANSO');
  JvDBComboBox1.AddItem('INACTIVO', nil);
  Valores.Add('INACTIVO');
  JvDBComboBox1.Values := Valores;
end;

end.
