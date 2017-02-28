unit frmNuevoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  ZAbstractDataset, Mask, DBCtrls, Buttons;

type
  Tfrm_NuevoUsuario = class(TForm)
    btnGrabar: TButton;
    btnSalir: TButton;
    dszQCatalogodeUsuarios: TDataSource;
    zQCatalogodeUsuarios: TZQuery;
    zQCatalogodeUsuariosiIdUsuario: TIntegerField;
    zQCatalogodeUsuariossNombre: TStringField;
    zQCatalogodeUsuariossAP: TStringField;
    zQCatalogodeUsuariossAM: TStringField;
    zQCatalogodeUsuariossNombreCompleto: TStringField;
    zQCatalogodeUsuariossDomicilio: TStringField;
    zQCatalogodeUsuariossTelefono: TStringField;
    zQCatalogodeUsuariossCP: TStringField;
    zQCatalogodeUsuariossIdComunidad: TStringField;
    Label1: TLabel;
    tiIdUSuario: TDBEdit;
    Label2: TLabel;
    tsNombre: TDBEdit;
    Label3: TLabel;
    tsAP: TDBEdit;
    Label4: TLabel;
    tsAM: TDBEdit;
    Label5: TLabel;
    tsDomicilio: TDBEdit;
    Label6: TLabel;
    tsTelefono: TDBEdit;
    Label7: TLabel;
    tsCP: TDBEdit;
    Label8: TLabel;
    dszQLocalidad: TDataSource;
    zQLocalidad: TZReadOnlyQuery;
    zQLocalidadsIdComunidad: TStringField;
    zQLocalidadsNombreComunidad: TStringField;
    tdbsLocalidad: TDBLookupComboBox;
    btnEliminar: TButton;
    zqCommand: TZReadOnlyQuery;
    procedure btnSalirClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure zQCatalogodeUsuariosAfterInsert(DataSet: TDataSet);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NuevoUsuario: Tfrm_NuevoUsuario;

implementation

{$R *.dfm}

procedure Tfrm_NuevoUsuario.btnEliminarClick(Sender: TObject);
begin
   If MessageDlg('Desea Elimiar el Usuario Seleccionado?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
       // verifico que no tenga ningun contrato asignado ...
       zqCommand.Active := False;
       zqCommand.SQL.Clear;
       zqCommand.SQL.Add('select iIdUsuario from tesoreriaingresos where iIdUsuario = :Usuario');
       zqCommand.Params.ParamByName('Usuario').DataType := ftInteger;
       zqCommand.Params.ParamByName('Usuario').Value := zQCatalogodeUsuarios.FieldValues['iIdUsuario'];
       zqCommand.open ;
       if zqCommand.RecordCount = 0 then
       begin
           zQCatalogodeUsuarios.CancelUpdates ;
           zqCommand.Active := False;
           zqCommand.SQL.Clear;
           zqCommand.SQL.Add('Delete from ingresosfijos where iIdUsuario = :Usuario');
           zqCommand.Params.ParamByName('Usuario').DataType := ftInteger;
           zqCommand.Params.ParamByName('Usuario').Value := zQCatalogodeUsuarios.FieldValues['iIdUsuario'];
           zqCommand.ExecSQL;

           zqCommand.Active := False;
           zqCommand.SQL.Clear;
           zqCommand.SQL.Add('Delete from contratosxusuario where iIdUsuario = :Usuario');
           zqCommand.Params.ParamByName('Usuario').DataType := ftInteger;
           zqCommand.Params.ParamByName('Usuario').Value := zQCatalogodeUsuarios.FieldValues['iIdUsuario'];
           zqCommand.ExecSQL;

           zQCatalogodeUsuarios.Delete ;
           close
       end
   end;
end;

procedure Tfrm_NuevoUsuario.btnGrabarClick(Sender: TObject);
begin
   zQCatalogodeUsuarios.FieldValues ['sNombreCompleto'] := zQCatalogodeUsuarios.FieldValues ['sAP'] + ' ' + zQCatalogodeUsuarios.FieldValues ['sAM'] + ' ' + zQCatalogodeUsuarios.FieldValues ['sNombre'] ;
   zQCatalogodeUsuarios.Post ;
   iIdUsuarioBusqueda := zQCatalogodeUsuarios.FieldByName('iIdUsuario').AsInteger ;
   close
end;

procedure Tfrm_NuevoUsuario.btnSalirClick(Sender: TObject);
begin
   close
end;

procedure Tfrm_NuevoUsuario.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_NuevoUsuario.FormShow(Sender: TObject);
begin
 if global_Usuario <> '' then
  begin
    zQLocalidad.Active := False ;
    zQLocalidad.Open ;
    btnEliminar.Enabled := False ;
    zQCatalogodeUsuarios.Active := False ;
    zQCatalogodeUsuarios.Params.ParamByName('usuario').DataType := ftInteger ;
    zQCatalogodeUsuarios.Params.ParamByName('usuario').Value := iIdUsuarioBusqueda ;
    zQCatalogodeUsuarios.Open ;
    if iIdUsuarioBusqueda <= 0 then
        zQCatalogodeUsuarios.Insert
    Else
    begin
        zQCatalogodeUsuarios.Edit ;
        btnEliminar.Enabled := True ;
    end;
  end;
    tsAP.SetFocus
end;


procedure Tfrm_NuevoUsuario.zQCatalogodeUsuariosAfterInsert(DataSet: TDataSet);
begin
   zQCatalogodeUsuarios.FieldValues ['sNombre'] := '' ;
   zQCatalogodeUsuarios.FieldValues ['sAP'] := '' ;
   zQCatalogodeUsuarios.FieldValues ['sAM'] := '' ;
   zQCatalogodeUsuarios.FieldValues ['sDomicilio'] := ' ' ;
   zQCatalogodeUsuarios.FieldValues ['sCP'] := ' ' ;
   zQCatalogodeUsuarios.FieldValues ['sTelefono'] := ' ' ;
end;


end.
