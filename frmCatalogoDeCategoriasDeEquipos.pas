unit frmCatalogoDeCategoriasDeEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra,
  JvExMask, JvToolEdit, JvDBControls;

type
  Tfrm_CatalogoDeCategoriasDeEquipos = class(TForm)
    ds_CategoriasDeEquipos: TDataSource;
    zq_CategoriasDeEquipos: TZQuery;
    grid_Comunidades: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    zq_CategoriasDeEquiposiId: TIntegerField;
    zq_CategoriasDeEquipossCategoria: TStringField;
    frmBarra1: TfrmBarra;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure grid_ComunidadesDblClick(Sender: TObject);
    procedure closeFormulario;
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CatalogoDeCategoriasDeEquipos: Tfrm_CatalogoDeCategoriasDeEquipos;

implementation
  uses
    frmCatalogoDeEquipos;
{$R *.dfm}

procedure Tfrm_CatalogoDeCategoriasDeEquipos.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.btnRefreshClick(Sender: TObject);
begin
  zq_CategoriasDeEquipos.Active:=False;
  zq_CategoriasDeEquipos.Open;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.FormShow(Sender: TObject);
begin
  zq_CategoriasDeEquipos.Active := False ;
  zq_CategoriasDeEquipos.Open ;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  DBEdit1.SetFocus;
  zq_CategoriasDeEquipos.Append;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  zq_CategoriasDeEquipos.Cancel;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zq_CategoriasDeEquipos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zq_CategoriasDeEquipos.Delete;
//         frm_Principal.QryBusca.Active := False ;
//         frm_Principal.qryBusca.SQL.Clear ;
//         frm_principal.QryBusca.SQL.Add('Select sIdArea from tesoreriaegresos Where sIdArea =:Area');
//         frm_principal.QryBusca.Params.ParamByName('Area').DataType := ftString ;
//         frm_principal.QryBusca.Params.ParamByName('Area').Value    := zQEquipos.FieldValues['sIdArea'] ;
//         frm_Principal.QryBusca.Open ;
//         If frm_Principal.QryBusca.RecordCount > 0 Then
//             MessageDlg('NO SE PUEDE BORRAR, EXISTE CON MOVIMIENTOS EN EGRESOS.', mtInformation, [mbOk], 0)
//         Else
//            zQEquipos.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zq_CategoriasDeEquipos.RecordCount > 0 Then
  begin
      zq_CategoriasDeEquipos.Edit ;
      DBEdit1.SetFocus
  end ;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnPostClick(Sender: TObject);
begin
  zq_CategoriasDeEquipos.Post ;
  frmBarra1.btnPostClick(Sender);

  closeFormulario;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zq_CategoriasDeEquipos.Refresh
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.grid_ComunidadesDblClick(
  Sender: TObject);
begin
  closeFormulario;
end;

procedure Tfrm_CatalogoDeCategoriasDeEquipos.closeFormulario;
begin
    try
      if Assigned(frm_CatalogoDeEquipos)then
      begin
          frm_CatalogoDeEquipos.qryCatEquipos.Refresh;
          frm_CatalogoDeEquipos.cbxCategorias.KeyValue := zq_CategoriasDeEquipos.FieldValues['iId'];

          frm_CatalogoDeEquipos.qryCategorias.Refresh;
          //frm_CatalogoDeEquipos.tsCategorias.KeyValue  := zq_CategoriasDeEquipos.FieldValues['iId'];
          Close;
      end;
    Except
    end;

end;

end.
