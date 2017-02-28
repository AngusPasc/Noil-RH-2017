unit frm_catalogocomponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop;

type
  Tfrmcatalogocomponentes = class(TForm)
    grid_componente: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tscomponente: TDBEdit;
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
    tzComponente: TZQuery;
    dsComponente: TDataSource;
    tzComponentesComponente: TStringField;
    tzComponenteiIdComponente: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_componenteCellClick(Column: TColumn);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
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
    procedure grid_componenteEnter(Sender: TObject);
    procedure grid_componenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_componenteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdsistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tscomponenteEnter(Sender: TObject);
    procedure tscomponenteExit(Sender: TObject);
    procedure grid_componenteMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_componenteMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_componenteTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tscomponenteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcatalogocomponentes : Tfrmcatalogocomponentes;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure Tfrmcatalogocomponentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure Tfrmcatalogocomponentes.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, '', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzComponente.Open ;

   grid_componente.SetFocus;
   UtGrid:=TicdbGrid.create(grid_componente);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
      tscomponente.Enabled := False ;


end;
procedure Tfrmcatalogocomponentes.grid_componenteCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatalogocomponentes.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure Tfrmcatalogocomponentes.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tzComponente.Append ;
   tzComponente.FieldValues['sComponente']   := '' ;
   activapop(frmcatalogocomponentes,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_componente.Enabled := False;

   tscomponente.Enabled := True;
   tscomponente.SetFocus

end;

procedure Tfrmcatalogocomponentes.frmBarra1btnEditClick(Sender: TObject);
begin
    If tzComponente.RecordCount > 0 Then
    Begin
        try
       frmBarra1.btnEditClick(Sender);
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOpcion := 'Edit';
       sOldId := tzComponente.FieldValues['iIdComponente'];
       tzComponente.Edit ;
       grid_componente.Enabled := False;
       tscomponente.Enabled := True ;
       tscomponente.SetFocus;
       activapop(frmcatalogocomponentes,popupprincipal)

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Componenetes', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure Tfrmcatalogocomponentes.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Descripcion');
    cadenas.Add(tscomponente.Text);

    if not validaTexto(nombres, cadenas, 'Clave', tscomponente.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    lEdicion := tzComponente.state = dsEdit;//capturar la bandera para usarla luego del post
    Try

       tzComponente.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;


       frmBarra1.btnPostClick(Sender);
       desactivapop(popupprincipal);
    except
       on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Componentes', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;

    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    if sOpcion = 'Edit' then
    begin
         grid_componente.Enabled := True;
         tscomponente.Enabled := False ;
         sOpcion := '';
    end;


end;

procedure Tfrmcatalogocomponentes.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzComponente.Cancel ;
   tscomponente.Enabled:=false;
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_componente.Enabled := True;
   sOpcion := '';
end;

procedure Tfrmcatalogocomponentes.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzComponente.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try

            tzComponente.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Componentes', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure Tfrmcatalogocomponentes.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzComponente.refresh ;
end;

procedure Tfrmcatalogocomponentes.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;

procedure Tfrmcatalogocomponentes.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure Tfrmcatalogocomponentes.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure Tfrmcatalogocomponentes.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure Tfrmcatalogocomponentes.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure Tfrmcatalogocomponentes.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure Tfrmcatalogocomponentes.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure Tfrmcatalogocomponentes.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure Tfrmcatalogocomponentes.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure Tfrmcatalogocomponentes.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure Tfrmcatalogocomponentes.grid_componenteEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatalogocomponentes.grid_componenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatalogocomponentes.grid_componenteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatalogocomponentes.grid_componenteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrmcatalogocomponentes.grid_componenteMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrmcatalogocomponentes.grid_componenteTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrmcatalogocomponentes.tsIdsistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tscomponente.SetFocus
end;

procedure Tfrmcatalogocomponentes.tscomponenteEnter(Sender: TObject);
begin
    tscomponente.Color := global_color_entrada
end;

procedure Tfrmcatalogocomponentes.tscomponenteExit(Sender: TObject);
begin
    tscomponente.Color := global_color_salida
end;

procedure Tfrmcatalogocomponentes.tscomponenteKeyPress(Sender: TObject;
  var Key: Char);
begin
    tscomponente.SetFocus
end;

end.
