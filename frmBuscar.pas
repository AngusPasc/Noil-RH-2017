unit frmBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, global,
  Buttons;

type
  Tfrm_Buscar = class(TForm)
    Label9: TLabel;
    tsBuscar: TEdit;
    cbBusqueda: TComboBox;
    GridClientes: TDBGrid;
    btnSeleccionar: TButton;
    btnSalir: TButton;
    BuscaObjeto: TZReadOnlyQuery;
    BuscaObjetosNombre: TStringField;
    BuscaObjetosAP: TStringField;
    BuscaObjetosAM: TStringField;
    BuscaObjetosDomicilio: TStringField;
    BuscaObjetosTelefono: TStringField;
    BuscaObjetosCP: TStringField;
    ds_buscaobjeto: TDataSource;
    BuscaObjetoiIdUsuario: TIntegerField;
    BuscaObjetosIdComunidad: TStringField;
    BuscaObjetosNombreCompleto: TStringField;
    btnInserta: TSpeedButton;
    procedure btnSalirClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure cbBusquedaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsBuscarChange(Sender: TObject);
    procedure GridClientesDblClick(Sender: TObject);
    procedure tsBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure btnInsertaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Buscar: Tfrm_Buscar;

implementation

uses frmNuevoUsuario;

{$R *.dfm}

procedure Tfrm_Buscar.btnSeleccionarClick(Sender: TObject);
begin
   iIdUsuarioBusqueda := BuscaObjeto.FieldByName('iIdUsuario').AsInteger ;
   close
end;

procedure Tfrm_Buscar.btnSalirClick(Sender: TObject);
begin
   close
end;

procedure Tfrm_Buscar.cbBusquedaChange(Sender: TObject);
var
    sParametro : String ;
begin
    sParametro := '%' + tsBuscar.Text + '%' ;
    If cbBusqueda.Text = 'Buscar por Nombre Completo' Then
    begin
        BuscaObjeto.Active := False ;
        BuscaObjeto.Sql.Clear ;
        BuscaObjeto.Sql.Add('select * from con_catalogodeusuarios where sNombreCompleto Like :Parametro Order By sNombreCompleto, sDomicilio')
    end;
    If cbBusqueda.Text = 'Buscar por A. Paterno' Then
    begin
        BuscaObjeto.Active := False ;
        BuscaObjeto.Sql.Clear ;
        BuscaObjeto.Sql.Add('select * from con_catalogodeusuarios where sAP Like :Parametro Order By sNombreCompleto, sDomicilio')
    end;
    If cbBusqueda.Text = 'Buscar por A. Materno' Then
    begin
        BuscaObjeto.Active := False ;
        BuscaObjeto.Sql.Clear ;
        BuscaObjeto.Sql.Add('select * from con_catalogodeusuarios where sAM Like :Parametro Order By sNombreCompleto, sDomicilio')
    end;
    If cbBusqueda.Text = 'Buscar por Domicilio' Then
    begin
        BuscaObjeto.Active := False ;
        BuscaObjeto.Sql.Clear ;
        BuscaObjeto.Sql.Add('select * from con_catalogodeusuarios where sDomicilio Like :Parametro Order By sNombreCompleto, sDomicilio')
    end;
    BuscaObjeto.Params.ParamByName('Parametro').DataType := ftString ;
    BuscaObjeto.Params.ParamByName('Parametro').Value := sParametro ;
    BuscaObjeto.Open ;
end;

procedure Tfrm_Buscar.FormShow(Sender: TObject);
begin
    cbBusqueda.ItemIndex := 0 ;
    tsBuscar.Text := '' ;
 if global_Usuario <> '' then
  begin
    BuscaObjeto.Active := False ;
    BuscaObjeto.Sql.Clear ;
    BuscaObjeto.Sql.Add('select * from con_catalogodeusuarios where sNombreCompleto Like :Parametro ' +
                        'Order By sNombreCompleto, sDomicilio') ;
    BuscaObjeto.Params.ParamByName('Parametro').Value := '%%' ;
    BuscaObjeto.Open ;
  end;
    tsBuscar.SetFocus
end;

procedure Tfrm_Buscar.GridClientesDblClick(Sender: TObject);
begin
  iIdUsuarioBusqueda := BuscaObjeto.FieldValues['IIdUsuario'] ;
  frm_NuevoUsuario.ShowModal ;
  BuscaObjeto.Refresh ;
  BuscaObjeto.Locate('iIdUsuario', iIdUsuarioBusqueda, [loCaseInsensitive]) ;
  iIdUsuarioBusqueda := -1
end;

procedure Tfrm_Buscar.btnInsertaClick(Sender: TObject);
var
    sParametro : String ;
begin
//#######    Desabilitado Temporalmente   ######
//    Application.CreateForm(Tfrm_NuevoUsuario, frm_NuevoUsuario);
//    frm_NuevoUsuario.ShowModal ;
//    sParametro := '%' + tsBuscar.Text + '%' ;
//    BuscaObjeto.Active := False ;
//    BuscaObjeto.Params.ParamByName('Parametro').DataType := ftString ;
//    BuscaObjeto.Params.ParamByName('Parametro').Value := sParametro ;
//    BuscaObjeto.Open ;
end;

procedure Tfrm_Buscar.tsBuscarChange(Sender: TObject);
var
    sParametro : String ;
begin
//    sParametro := '%' + tsBuscar.Text + '%' ;
//    BuscaObjeto.Active := False ;
//    BuscaObjeto.Params.ParamByName('Parametro').DataType := ftString ;
//    BuscaObjeto.Params.ParamByName('Parametro').Value    := sParametro ;
//    BuscaObjeto.Open ;
end;

procedure Tfrm_Buscar.tsBuscarKeyPress(Sender: TObject; var Key: Char);
var
    sParametro : String ;
begin
    if Key = #13 then
    begin
//        if BuscaObjeto.RecordCount > 0 then
//        begin
//            btnSeleccionar.Click
//        end;
    sParametro := '%' + tsBuscar.Text + '%' ;
    BuscaObjeto.Active := False ;
    BuscaObjeto.Params.ParamByName('Parametro').DataType := ftString ;
    BuscaObjeto.Params.ParamByName('Parametro').Value    := sParametro ;
    BuscaObjeto.Open ;
    end;
end;

end.
