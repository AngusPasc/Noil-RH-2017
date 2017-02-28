unit frmRegistrosPatronales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global;

type
  Tfrm_RegistrosPatronales = class(TForm)
    ds_RegistrosPatronales: TDataSource;
    zq_RegistrosPatronales: TZQuery;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    tsRazonSocial: TDBEdit;
    Label2: TLabel;
    tsRegistroPatronal: TDBEdit;
    zq_RegistrosPatronalessRazonSocial: TStringField;
    zq_RegistrosPatronalessRegistroPatronal: TStringField;
    zq_RegistrosPatronalesiIdRegistroPatronal: TIntegerField;
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
  frm_RegistrosPatronales: Tfrm_RegistrosPatronales;
  utgrid:ticdbgrid;
implementation

uses frmEmpleados;

{$R *.dfm}

procedure Tfrm_RegistrosPatronales.FormClose(Sender: TObject;
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

procedure Tfrm_RegistrosPatronales.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_RegistrosPatronales.Active  :=   False ;
  zq_RegistrosPatronales.Open ;
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_RegistrosPatronales.Append ;
  zq_RegistrosPatronales.FieldValues['sRazonSocial'] := '' ;
  tsRazonSocial.SetFocus
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_RegistrosPatronales.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zq_RegistrosPatronales.RecordCount  > 0 then
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
         zq_RegistrosPatronales.Delete ;
      except
        MessageDlg('No se pudo eliminar el registro: Existen registros asociados esta Razón Social', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_RegistrosPatronales.RecordCount > 0 Then
  begin
    zq_RegistrosPatronales.Edit ;
    tsRazonSocial.SetFocus
  end ;
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnExitClick(Sender: TObject);
begin
  try
    frmempleados.frm_Empleados.zq_registrospatronales.Refresh;
  Except
  end;
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnPostClick(Sender: TObject);
var
   Maximo : integer;
begin
  //Maxio Id de registro Patronal
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select max(iIdRegistroPatronal) as Id from registrospatronales ');
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    if connection.QryBusca.FieldByName('Id').IsNull then
    begin
      Maximo := 1;
    end
    else
      Maximo := connection.QryBusca.FieldValues['Id'] + 1
  end
  else
     Maximo := 0;

  zq_RegistrosPatronales.FieldValues['iIdRegistroPatronal'] := Maximo;
  zq_RegistrosPatronales.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_RegistrosPatronales.frmBarra1btnRefreshClick(Sender: TObject);
begin
  if zq_RegistrosPatronales.RecordCount > 0 then
    zq_RegistrosPatronales.Refresh;
end;

procedure Tfrm_RegistrosPatronales.grid_ComunidadesDblClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_RegistrosPatronales.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_RegistrosPatronales.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_RegistrosPatronales.grid_ComunidadesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_RegistrosPatronales.tsRazonSocialEnter(Sender: TObject);
begin
  tsRazonSocial.Color := global_color_entradaERP;
end;

procedure Tfrm_RegistrosPatronales.tsRazonSocialExit(Sender: TObject);
begin
  tsRazonSocial.Color := global_color_salidaERP;
end;

procedure Tfrm_RegistrosPatronales.tsRazonSocialKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_RegistrosPatronales.tsRegistroPatronalKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_RegistrosPatronales.SiguienteCajon(Sender: TObject; var Key: Char);
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
