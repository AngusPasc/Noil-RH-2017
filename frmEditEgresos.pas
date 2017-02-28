unit frmEditEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, Buttons, FramedPanel, RXDBCtrl,
  Newpanel, DateUtils, global, frxClass, frxDBSet,  ExtCtrls;

type
  Tfrm_EditEgresos = class(TForm)
    dszQEgresos: TDataSource;
    zQEgresos: TZQuery;
    zQEgresosdIdFecha: TDateField;
    zQEgresosiIdFolio: TIntegerField;
    zQEgresossReferencia: TStringField;
    zQAreas: TZReadOnlyQuery;
    dszQAreas: TDataSource;
    zQEgresossIdArea: TStringField;
    zQEgresosdImporteTotal: TFloatField;
    dszQCuentasBancarias: TDataSource;
    zQEgresossIdNumeroCuenta: TStringField;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    zQEgresossTipoMovimiento: TStringField;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnBusca: TSpeedButton;
    Label9: TLabel;
    Label12: TLabel;
    tdbiIdFolio: TDBEdit;
    tdbsReferencia: TDBEdit;
    tdbsIdArea: TDBLookupComboBox;
    tsIdCuentaBancaria: TDBLookupComboBox;
    tdImporteTotal: TDBEdit;
    zQProveedores: TZQuery;
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
    zQEgresossIdProveedor: TStringField;
    zQEgresossRFC: TStringField;
    zQEgresossRazonSocial: TStringField;
    zQEgresossDomicilio: TStringField;
    zQEgresossCiudad: TStringField;
    zQEgresossCP: TStringField;
    zQEgresossEstado: TStringField;
    zQEgresossTelefono: TStringField;
    zQEgresoslComprobado: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    zQEgresossStatus: TStringField;
    zQEgresosmDescripcion: TMemoField;
    Label3: TLabel;
    tmDescripcion: TDBMemo;
    zQEgresossNumeroOrden: TStringField;
    Label16: TLabel;
    dszQOrdenesdeTrabajo: TDataSource;
    zQOrdenesdeTrabajo: TZReadOnlyQuery;
    zCommand: TZReadOnlyQuery;
    Label1: TLabel;
    zQAreassIdArea: TStringField;
    zQAreassDescripcion: TStringField;
    zQAreassMascara: TStringField;
    zQAreassTipoArea: TStringField;
    dbNumeroOrden: TDBLookupComboBox;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    strngfldQCuentasBancariassFolioSinCheque: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscaClick(Sender: TObject);
    procedure zQEgresossIdProveedorChange(Sender: TField);
    procedure zQEgresosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_EditEgresos: Tfrm_EditEgresos;
  iFolio : Integer ;
implementation

uses frm_connection;

//uses frmBuscarProveedor, frmPrincipal;

{$R *.dfm}

procedure Tfrm_EditEgresos.btnBuscaClick(Sender: TObject);
begin
//  sIdProveedorBusqueda := '' ;
 // frm_buscarProveedor.ShowModal ;
//  zQEgresos.FieldValues['sIdProveedor'] := sIdProveedorBusqueda ;
end;

procedure Tfrm_EditEgresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (zqEgresos.State in [dsInsert]) or (zqEgresos.State in [dsEdit]) then
    zQEgresos.Post ;
end;

procedure Tfrm_EditEgresos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_EditEgresos.FormShow(Sender: TObject);
begin
    Connection.configuracion.Refresh ;

    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Open ;

    zQEgresos.Active := False ;
    zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQEgresos.Params.ParamByName('fecha').Value := dParamFecha ;
    zQEgresos.Params.ParamByName('folio').DataType := ftInteger ;
    zQEgresos.Params.ParamByName('folio').Value := iParamFolio ;
    zQEgresos.Open ;

    zQAreas.Active := False ;
    zQAreas.Open ;

    zqOrdenesdeTrabajo.Active := False ;
    zqOrdenesdeTrabajo.Open ;

    zQEgresos.Edit ;
    tdbsIdArea.SetFocus
end;

procedure Tfrm_EditEgresos.zQEgresosBeforePost(DataSet: TDataSet);
begin
    // Modifico la fecha de las partidas del cheque ....
    zCommand.Active := False ;
    zCommand.SQL.Clear;
    zCommand.SQL.Add('update con_tesoreriapegresos SET dIdFecha = :Fecha Where dIdFecha = :FechaAnterior And iIdFolio = :Folio') ;
    zCommand.Params.ParamByName('fechaAnterior').DataType := ftDate ;
    zCommand.Params.ParamByName('fechaAnterior').Value := dParamFecha ;
    zCommand.Params.ParamByName('folio').DataType := ftInteger;
    zCommand.Params.ParamByName('folio').Value := iParamFolio ;
    zCommand.Params.ParamByName('fecha').DataType := ftDate ;
    zCommand.Params.ParamByName('fecha').Value := zQEgresosdIdFecha.Value ;
    zCommand.ExecSQL ;
    //

end;

procedure Tfrm_EditEgresos.zQEgresossIdProveedorChange(Sender: TField);
begin
  if zQEgresossIdProveedor.Text = Connection.configuracion.fieldvalues['sTesoreria'] Then
      zQEgresos.FieldValues['sIdArea'] := Connection.configuracion.fieldvalues['sTesoreria'] ;

  zQProveedores.Active := False ;
  zQProveedores.Params.ParamByName('Proveedor').DataType := ftString ;
  zQProveedores.Params.ParamByName('Proveedor').Value := zQEgresossIdProveedor.Text ;
  zQProveedores.Open ;
  if zQProveedores.RecordCount > 0 then
  begin
      zQEgresos.FieldValues['sRFC'] := zQProveedores.FieldValues['sRFC'];
      zQEgresos.FieldValues['sRazonSocial'] := zQProveedores.FieldValues['sRazonSocial'] ;
      zQEgresos.FieldValues['sDomicilio'] := zQProveedores.FieldValues['sDomicilio'];
      zQEgresos.FieldValues['sCiudad'] := zQProveedores.FieldValues['sCiudad'] ;
      zQEgresos.FieldValues['sCP'] := zQProveedores.FieldValues['sCP'] ;
      zQEgresos.FieldValues['sEstado'] := zQProveedores.FieldValues['sEstado'] ;
      zQEgresos.FieldValues['sTelefono'] := zQProveedores.FieldValues['sTelefono'] ;
  end
  else
  begin
      zQEgresos.FieldValues['sRFC'] := ' ' ;
      zQEgresos.FieldValues['sRazonSocial'] := ' ' ;
      zQEgresos.FieldValues['sDomicilio'] := ' ' ;
      zQEgresos.FieldValues['sCiudad'] := ' ' ;
      zQEgresos.FieldValues['sCP'] := ' ' ;
      zQEgresos.FieldValues['sEstado'] := ' ' ;
      zQEgresos.FieldValues['sTelefono'] := ' ' ;
  end

end;

end.
