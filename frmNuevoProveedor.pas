unit frmNuevoProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  ZAbstractDataset, Mask, DBCtrls, Buttons;

type
  Tfrm_NuevoProveedor = class(TForm)
    btnGrabar: TButton;
    btnSalir: TButton;
    dszQCatalogodeUsuarios: TDataSource;
    zQProveedores: TZQuery;
    zqCommand: TZReadOnlyQuery;
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
    procedure btnSalirClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure zQProveedoresAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NuevoProveedor: Tfrm_NuevoProveedor;

implementation

{$R *.dfm}

procedure Tfrm_NuevoProveedor.btnGrabarClick(Sender: TObject);
begin
   zQProveedores.Post ;
   close
end;

procedure Tfrm_NuevoProveedor.btnSalirClick(Sender: TObject);
begin
   close
end;

procedure Tfrm_NuevoProveedor.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_NuevoProveedor.FormShow(Sender: TObject);
begin
 if global_Usuario <> '' then
  begin
    zQProveedores.Active := False ;
    zQProveedores.Params.ParamByName('proveedor').DataType := ftString ;
    zQProveedores.Params.ParamByName('proveedor').Value := '*' ;
    zQProveedores.Open ;
    if iIdUsuarioBusqueda <= 0 then
        zQProveedores.Insert
    Else
        zQProveedores.Edit ;
    tsIdProveedor.SetFocus
  end;
end;


procedure Tfrm_NuevoProveedor.zQProveedoresAfterInsert(DataSet: TDataSet);
begin
   zQProveedores.FieldValues ['sIdProveedor'] := '' ;
   zQProveedores.FieldValues ['sRFC'] := ' ' ;
   zQProveedores.FieldValues ['sRazonSocial'] := ' ' ;
   zQProveedores.FieldValues ['sDomicilio'] := ' ' ;
   zQProveedores.FieldValues ['sCiudad'] := ' ' ;
   zQProveedores.FieldValues ['sCP'] := ' ' ;
   zQProveedores.FieldValues ['sEstado'] := ' ' ;
   zQProveedores.FieldValues ['sTelefono'] := ' ' ;
   zQProveedores.FieldValues ['dMontoCredito'] := 0 ;
   zQProveedores.FieldValues ['lStatus'] := 'Activo' ;
end;


end.
