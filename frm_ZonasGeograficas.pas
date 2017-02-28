unit frm_ZonasGeograficas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop;

type
  TfrmZonasGeograficas = class(TForm)
    gridZonasGeo: TDBGrid;
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
    txtZona: TDBEdit;
    txtSalMin: TDBEdit;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    qryZonasGeo: TZQuery;
    dsZonasGeo: TDataSource;
    qryZonasGeoiId: TIntegerField;
    qryZonasGeosZona: TStringField;
    qryZonasGeodSalarioMinimo: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridZonasGeoCellClick(Column: TColumn);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure gridZonasGeoEnter(Sender: TObject);
    procedure gridZonasGeoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridZonasGeoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtZonaEnter(Sender: TObject);
    procedure txtZonaExit(Sender: TObject);
    procedure txtZonaKeyPress(Sender: TObject; var Key: Char);
    procedure txtSalMinEnter(Sender: TObject);
    procedure txtSalMinExit(Sender: TObject);
    procedure txtSalMinKeyPress(Sender: TObject; var Key: Char);
    procedure gridZonasGeoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure gridZonasGeoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridZonasGeoTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmZonasGeograficas : TfrmZonasGeograficas;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure TfrmZonasGeograficas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  utgrid.Destroy;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmZonasGeograficas.FormShow(Sender: TObject);
begin
   UtGrid:=TicdbGrid.create(gridZonasGeo);
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuMarcaSubF', PopupPrincipal);
   frmbarra1.btnCancel.Click ;

   qryZonasGeo.Active := False;
   qryZonasGeo.Open ;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmZonasGeograficas.gridZonasGeoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmZonasGeograficas.frmBarra1btnAddClick(Sender: TObject);
begin
   BotonPermiso.permisosBotones(frmBarra1);
   txtZona.SetFocus;
   frmBarra1.btnAddClick(Sender);
   qryZonasGeo.Append;
end;

procedure TfrmZonasGeograficas.frmBarra1btnEditClick(Sender: TObject);
begin
    If qryZonasGeo.RecordCount > 0 Then
    Begin
        try
          qryZonasGeo.Edit ;
          txtZona.SetFocus;
        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Zonas Geográficas', 'Al Actualizar el registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnEditClick(Sender);
end;

procedure TfrmZonasGeograficas.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas  : TStringList;

begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Descripción');     cadenas.Add(txtZona.Text);
    nombres.Add('Salario Mínimo');  cadenas.Add(txtSalMin.Text);

    if not validaTexto(nombres, cadenas, '',txtZona.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    Try
       qryZonasGeo.Post ;
       frmBarra1.btnPostClick(Sender);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catálogo de Zonas Geográficas', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click;
         qryZonasGeo.Cancel;
       end;
    end;
    BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmZonasGeograficas.frmBarra1btnCancelClick(Sender: TObject);
begin
   qryZonasGeo.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmBarra1.btnCancelClick(Sender);
end;

procedure TfrmZonasGeograficas.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   qryZonasGeo.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          qryZonasGeo.Delete ;
      except
         on e : exception do begin
           MessageDlg('No se puede Eliminar el Registro, por que éste Existe en otras Tablas',mtError,[mbOk],0);
         end;
      end
    end
end;

procedure TfrmZonasGeograficas.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryZonasGeo.refresh ;
end;

procedure TfrmZonasGeograficas.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Close;
end;

procedure TfrmZonasGeograficas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmZonasGeograficas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmZonasGeograficas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmZonasGeograficas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmZonasGeograficas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmZonasGeograficas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmZonasGeograficas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmZonasGeograficas.gridZonasGeoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmZonasGeograficas.gridZonasGeoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmZonasGeograficas.gridZonasGeoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmZonasGeograficas.gridZonasGeoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmZonasGeograficas.gridZonasGeoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmZonasGeograficas.gridZonasGeoTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmZonasGeograficas.txtZonaEnter(Sender: TObject);
begin
    txtZona.Color := global_color_entrada
end;

procedure TfrmZonasGeograficas.txtZonaExit(Sender: TObject);
begin
    txtZona.Color := global_color_salida
end;

procedure TfrmZonasGeograficas.txtZonaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        txtSalMin.SetFocus
end;

procedure TfrmZonasGeograficas.txtSalMinEnter(Sender: TObject);
begin
    txtSalMin.Color := global_color_entrada
end;

procedure TfrmZonasGeograficas.txtSalMinExit(Sender: TObject);
begin
    txtSalMin.Color := global_color_salida
end;

procedure TfrmZonasGeograficas.txtSalMinKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        txtZona.SetFocus
end;

end.
