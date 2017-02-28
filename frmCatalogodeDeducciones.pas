unit frmCatalogodeDeducciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_connection, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid;
type
  Tfrm_CatalogodeDeducciones = class(TForm)
    ds_CatalogodePrestaciones: TDataSource;
    zq_CatalogoDePrestaciones: TZQuery;
    Label1: TLabel;
    tsCodigo: TDBEdit;
    Label2: TLabel;
    tsNombre: TDBEdit;
    zq_CatalogoDePrestacionesiId: TIntegerField;
    zq_CatalogoDePrestacionessCodigo: TStringField;
    zq_CatalogoDePrestacionessNombre: TStringField;
    Label3: TLabel;
    tdQty: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    grid_Comunidades: TDBGrid;
    zq_CatalogoDePrestacionesdQty: TFloatField;
    zq_CatalogoDePrestacioneslForma: TStringField;
    zq_CatalogoDePrestacionesFormaDeIngreso: TStringField;
    DBCheckBox2: TDBCheckBox;
    zq_CatalogoDePrestacioneslImprime: TStringField;
    chkMostrar: TDBCheckBox;
    zq_CatalogoDePrestacioneslMostrar: TStringField;
    frmBarra1: TfrmBarra;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    zq_CatalogoDePrestacionesiCodigoSAT: TIntegerField;
    DBCheckBox3: TDBCheckBox;
    zq_CatalogoDePrestacionesbImpuestoRetenido: TIntegerField;
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
    procedure zq_CatalogoDePrestacionesCalcFields(DataSet: TDataSet);
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
  frm_CatalogodeDeducciones: Tfrm_CatalogodeDeducciones;
  utgrid:ticdbgrid;
implementation

{$R *.dfm}

procedure Tfrm_CatalogodeDeducciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_CatalogodeDeducciones.FormShow(Sender: TObject);
begin

  UtGrid:=TicdbGrid.create(grid_Comunidades);
  zq_CatalogoDePrestaciones.Active := False ;
  zq_CatalogoDePrestaciones.Open ;
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zq_CatalogodePrestaciones.Last;
  zq_CatalogodePrestaciones.Append ;
  zq_CatalogodePrestaciones.FieldValues['lMostrar'] := 'True';
  tsCodigo.SetFocus
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnCancelClick(Sender: TObject);
begin
  zq_CatalogodePrestaciones.Cancel ;
  frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnDeleteClick(Sender: TObject);
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

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_CatalogodePrestaciones.RecordCount > 0 Then
  begin
      zq_CatalogodePrestaciones.Edit ;
      tsCodigo.SetFocus
  end ;
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnPostClick(Sender: TObject);
begin
  //buscamos el maximo Id
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select max(iId) as iId from nom_catalogodededucciones ');
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
     zq_CatalogodePrestaciones.FieldByName('iId').AsInteger := connection.zCommand.FieldValues['iId'] + 1
  else
     zq_CatalogodePrestaciones.FieldByName('iId').AsInteger := 0;
  zq_CatalogodePrestaciones.Post ;
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_CatalogodeDeducciones.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zq_CatalogodePrestaciones.active:=False;
  zq_CatalogodePrestaciones.Open;
end;

procedure Tfrm_CatalogodeDeducciones.grid_ComunidadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_CatalogodeDeducciones.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_CatalogodeDeducciones.grid_ComunidadesTitleClick(
  Column: TColumn);
begin

UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_CatalogodeDeducciones.tsCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_CatalogodeDeducciones.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  SiguienteCajon(Sender, Key);
end;

procedure Tfrm_CatalogodeDeducciones.zq_CatalogoDePrestacionesCalcFields(
  DataSet: TDataSet);
begin
  if zq_CatalogoDePrestaciones.FieldByName('lForma').AsString = 'Porcentaje' then begin
    zq_CatalogoDePrestaciones.FieldByName('FormadeIngreso').AsString := '%';
  end else begin
    zq_CatalogoDePrestaciones.FieldByName('FormadeIngreso').AsString := '$';
  end;
end;

procedure Tfrm_CatalogodeDeducciones.SiguienteCajon(Sender: TObject; var Key: Char);
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
