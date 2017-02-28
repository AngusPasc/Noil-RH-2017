unit frmProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, 
  Grids, DBGrids, ExtCtrls, DBCtrls,  ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, global,
  ZAbstractRODataset, ZAbstractDataset;

type
  Tfrm_Proveedores = class(TForm)
    dszQProveedores: TDataSource;
    zQProveedores: TZQuery;
    grid_catProveedores: TDBGrid;
    frmBarra1: TfrmBarra;
    zQProveedoressIdProveedor: TStringField;
    zQProveedoressRFC: TStringField;
    zQProveedoressRazonSocial: TStringField;
    zQProveedoressDomicilio: TStringField;
    zQProveedoressCiudad: TStringField;
    zQProveedoressCP: TStringField;
    zQProveedoressEstado: TStringField;
    zQProveedoressTelefono: TStringField;
    zQProveedoresdMontoCredito: TFloatField;
    zQProveedoreslStatus: TStringField;
    Label1: TLabel;
    tsIdProveedor: TDBEdit;
    Label2: TLabel;
    tsRFC: TDBEdit;
    Label3: TLabel;
    tsRazonSocial: TDBEdit;
    Label4: TLabel;
    tsDomicilio: TDBEdit;
    Label5: TLabel;
    tsCiudad: TDBEdit;
    Label6: TLabel;
    tsCP: TDBEdit;
    Label7: TLabel;
    tsEstado: TDBEdit;
    Label8: TLabel;
    tsTelefono: TDBEdit;
    Label9: TLabel;
    tdMontoCredito: TDBEdit;
    tlStatus: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    zQProveedoressCuenta: TStringField;
    propietario: TDBEdit;
    Label12: TLabel;
    zQProveedoressPropietario: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQProveedoresAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Proveedores: Tfrm_Proveedores;

implementation

{$R *.dfm}

procedure Tfrm_Proveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Proveedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_Proveedores.FormShow(Sender: TObject);
begin
    zQProveedores.Active := False ;
    zQProveedores.Open ;
end;

procedure Tfrm_Proveedores.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  zQProveedores.Insert ;
  tsIdProveedor.SetFocus
end;

procedure Tfrm_Proveedores.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zqProveedores.Cancel
end;

procedure Tfrm_Proveedores.frmBarra1btnDeleteClick(Sender: TObject);
begin

If zQProveedores.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
         connection.QryBusca.Active := False ;
         connection.qryBusca.SQL.Clear ;
         connection.QryBusca.SQL.Add('Select sIdProveedor from tesoreriapegresos Where sIdProveedor =:Proveedor');
         connection.QryBusca.Params.ParamByName('Proveedor').DataType := ftString ;
         connection.QryBusca.Params.ParamByName('Proveedor').Value    := zQProveedores.FieldValues['sIdProveedor'] ;
         connection.QryBusca.Open ;
         If connection.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE CON MOVIMIENTOS DE COMPROBACION', mtInformation, [mbOk], 0)
         Else
            zQProveedores.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_Proveedores.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQProveedores.RecordCount > 0 Then
  begin
      zQProveedores.Edit ;
      tsIdProveedor.SetFocus
  end ;
end;

procedure Tfrm_Proveedores.frmBarra1btnExitClick(Sender: TObject);
begin
//  zQProveedores.Post ;
  frmBarra1.btnExitClick(Sender);
  close
end;


procedure Tfrm_Proveedores.frmBarra1btnPostClick(Sender: TObject);
begin
  frmBarra1.btnPostClick(Sender);
end;

procedure Tfrm_Proveedores.zQProveedoresAfterInsert(
  DataSet: TDataSet);
begin
    zqProveedores.FieldValues['sIdProveedor']   := '' ;
    zqProveedores.FieldValues['sRFC']           := '' ;
    zqProveedores.FieldValues['sRazonSocial']   := '' ;
    zqProveedores.FieldValues['sDomicilio']     := '*' ;
    zqProveedores.FieldValues['sCiudad']        := '*' ;
    zqProveedores.FieldValues['sCP']            := '*' ;
    zqProveedores.FieldValues['sEstado']        := '' ;
    zqProveedores.FieldValues['sTelefono']      := '*' ;
    zqProveedores.FieldValues['dMontoCredito']  := 0 ;
    zqProveedores.FieldValues['lStatus']        := 'Activo' ;
    zqProveedores.FieldValues['sPropietario']   := '*' ;
    zqProveedores.FieldValues['sCuenta']        := '*' ;
    zqProveedores.FieldValues['sEstado']        := '*' ;

end;

end.
