unit frmPrestacionesdeLey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid;

type
  Tfrm_PrestacionesdeLey = class(TForm)
    ds_CatalogodePrestaciones: TDataSource;
    zq_CatalogoDePrestaciones: TZQuery;
    grid_Comunidades: TDBGrid;
    frmBarra1: TfrmBarra;
    Label1: TLabel;
    tsNombre: TDBEdit;
    Label2: TLabel;
    tdImporte: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure SiguienteCajon(Sender: TObject; var Key: Char);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ComunidadesTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PrestacionesdeLey: Tfrm_PrestacionesdeLey;
  utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure Tfrm_PrestacionesdeLey.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_PrestacionesdeLey.FormShow(Sender: TObject);
begin
  UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_CatalogoDePrestaciones.Active := False ;
  zq_CatalogoDePrestaciones.Open ;
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_CatalogodePrestaciones.Append;
  tsNombre.SetFocus
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_CatalogodePrestaciones.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnDeleteClick(Sender: TObject);
begin

 If zq_CatalogodePrestaciones.RecordCount  > 0 then
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
         zq_CatalogodePrestaciones.Delete ;
      except
        MessageDlg('No se pudo eliminar el registro: Existen registros asociados esta prestación', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_CatalogodePrestaciones.RecordCount > 0 Then
  begin
      zq_CatalogodePrestaciones.Edit ;
      tsNombre.SetFocus
  end ;
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnPostClick(Sender: TObject);
begin
  zq_CatalogodePrestaciones.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_PrestacionesdeLey.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zq_CatalogodePrestaciones.Refresh;
end;

procedure Tfrm_PrestacionesdeLey.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_PrestacionesdeLey.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_PrestacionesdeLey.grid_ComunidadesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_PrestacionesdeLey.tsCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_PrestacionesdeLey.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_PrestacionesdeLey.SiguienteCajon(Sender: TObject; var Key: Char);
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
