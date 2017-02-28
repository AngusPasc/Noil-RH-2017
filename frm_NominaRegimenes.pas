unit frm_NominaRegimenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global;

type
  TfrmNominaRegimenes = class(TForm)
    ds_RegimenesPersonal: TDataSource;
    zq_RegimenesPersonal: TZQuery;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    tsRazonSocial: TDBEdit;
    Label2: TLabel;
    tsRegistroPatronal: TDBEdit;
    zq_RegimenesPersonaliId: TIntegerField;
    zq_RegimenesPersonaliCodigoSAT: TIntegerField;
    zq_RegimenesPersonalsDescripcion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsRazonSocialKeyPress(Sender: TObject; var Key: Char);
    procedure tsRegistroPatronalKeyPress(Sender: TObject; var Key: Char);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
    procedure grid_ComunidadesDblClick(Sender: TObject);
    procedure tsRazonSocialEnter(Sender: TObject);
    procedure tsRazonSocialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNominaRegimenes: TfrmNominaRegimenes;
  utgrid:ticdbgrid;
implementation

uses frmEmpleados;

{$R *.dfm}

procedure TfrmNominaRegimenes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {try
    frmEmpleados.frm_Empleados.zq_registrospatronales.Refresh;
    frmEmpleados.frm_Empleados.cbRegPatronales.KeyValue    :=  zq_RegistrosPatronales.FieldValues['iIdRegistroPatronal'];
  finally}
    utgrid.Destroy;
    action := cafree ;
  //end;
end;

procedure TfrmNominaRegimenes.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_RegimenesPersonal.Active := False ;
  zq_RegimenesPersonal.Open ;

end;

procedure TfrmNominaRegimenes.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_RegimenesPersonal.Append ;
  tsRazonSocial.SetFocus
end;

procedure TfrmNominaRegimenes.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_RegimenesPersonal.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure TfrmNominaRegimenes.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If zq_RegimenesPersonal.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
{       frm_Principal.QryBusca.Active := False ;
         frm_Principal.qryBusca.SQL.Clear ;
         frm_principal.QryBusca.SQL.Add('Select sIdNumeroCuenta from tesoreriaegresos Where sIdNumeroCuenta =:Cuenta');
         frm_principal.QryBusca.Params.ParamByName('Cuenta').DataType := ftString ;
         frm_principal.QryBusca.Params.ParamByName('Cuenta').Value    := zQCuentasBancarias.FieldValues['sIdNumeroCuenta'] ;
         frm_Principal.QryBusca.Open ;
         If frm_Principal.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE EN EGRESOS.', mtInformation, [mbOk], 0)
         Else}
         zq_RegimenesPersonal.Delete ;
      except
        MessageDlg('No se pudo eliminar el registro: Existen registros asociados esta Razón Social', mtInformation, [mbOk], 0);
      end
    end

end;

procedure TfrmNominaRegimenes.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_RegimenesPersonal.RecordCount > 0 Then
  begin
      zq_RegimenesPersonal.Edit ;
      tsRazonSocial.SetFocus
  end ;
end;

procedure TfrmNominaRegimenes.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure TfrmNominaRegimenes.frmBarra1btnPostClick(Sender: TObject);
begin
  zq_RegimenesPersonal.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure TfrmNominaRegimenes.frmBarra1btnRefreshClick(Sender: TObject);
begin
    if zq_RegimenesPersonal.RecordCount > 0 then
      zq_RegimenesPersonal.Refresh;
end;

procedure TfrmNominaRegimenes.grid_ComunidadesDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNominaRegimenes.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmNominaRegimenes.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmNominaRegimenes.grid_ComunidadesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmNominaRegimenes.tsRazonSocialEnter(Sender: TObject);
begin
  tsRazonSocial.Color := global_color_entradaERP;
end;

procedure TfrmNominaRegimenes.tsRazonSocialExit(Sender: TObject);
begin
  tsRazonSocial.Color := global_color_salidaERP;
end;

procedure TfrmNominaRegimenes.tsRazonSocialKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure TfrmNominaRegimenes.tsRegistroPatronalKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure TfrmNominaRegimenes.SiguienteCajon(Sender: TObject; var Key: Char);
Var
  Control: TWinControl;
begin
  Control := FindNextControl(Sender as TWinControl, True, True, True);
  if Key = #13 then begin
    if (FindNextControl(Sender as TWinControl, True, True, True) is TDBEdit) then begin
      SelectNext(Sender as TWinControl, True, True);
    end else begin
//      Control := FindNextControl(Sender as TWinControl, True, True, True);
//      SelectNext(Sender as TWinControl, True, True);
//      SiguienteCajon(Control, Key);
//      SelectNext(Control, True, True);
    end;
//    if not (SelectNext(Sender as TWinControl, True, True) is TDBEdit) then begin
//      SiguienteCajon(Sender, Key);
//    end;
  end;
end;

end.
