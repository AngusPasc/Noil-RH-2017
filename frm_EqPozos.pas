unit frm_EqPozos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, frm_barra, StdCtrls, DBCtrls,
  Mask, ExtCtrls, jpeg, ExtDlgs, DB, Global, Menus, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,udbgrid, unitexcepciones,
  unittbotonespermisos, UnitValidaTexto,unitactivapop ;

type
  TfrmEqPozos = class(TForm)
    grid_plataformas: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    frmBarra1: TfrmBarra;
    tsIdPlataforma: TDBEdit;
    tsDescripcion: TDBEdit;
    DBPlataformas: TfrxDBDataset;
    frxPlataformas: TfrxReport;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_pozos: TDataSource;
    pozos: TZQuery;
    dbEquipo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure grid_plataformasCellClick(Column: TColumn);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tlStatusEnter(Sender: TObject);
    procedure tlStatusExit(Sender: TObject);
    procedure tlStatusKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure dbEquipoEnter(Sender: TObject);
    procedure dbEquipoExit(Sender: TObject);
    procedure dbEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_plataformasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_plataformasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_plataformasTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Copiar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEqPozos: TfrmEqPozos;
  utgrid:ticdbgrid;
  botonpermiso: tbotonespermisos;
  sOpcion : string;
implementation

{$R *.dfm}

procedure TfrmEqPozos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'mnuPozosdePerfo', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;
  Pozos.active := false ;
  Pozos.Open;
  UtGrid:=TicdbGrid.create(grid_plataformas);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmEqPozos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Pozos.Cancel;
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmEqPozos.tsIdPlataformaEnter(Sender: TObject);
begin
tsIdPlataforma.Color := global_color_entrada
end;

procedure TfrmEqPozos.tsIdPlataformaExit(Sender: TObject);
begin
tsIdPlataforma.Color := global_color_salida
end;

procedure TfrmEqPozos.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmEqPozos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbEquipo.SetFocus
end;

procedure TfrmEqPozos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   Pozos.Append ;
   Pozos.FieldValues['sIdPozo'] := '' ;
   activapop(frmEqPozos,popupprincipal);
   tsIdPlataforma.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_plataformas.Enabled := False;
end;

procedure TfrmEqPozos.frmBarra1btnEditClick(Sender: TObject);
begin
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'Edit';
   try
     Pozos.Edit ;
     activapop(frmEqPozos,popupprincipal);
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pozos/Equipos de Perforacion', 'Al agregar registro', 0);
     frmbarra1.btnCancel.Click ;
     end;
   end ;
   tsIdPlataforma.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmEqPozos.frmBarra1btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');nombres.Add('Equipo');cadenas.Add(tsDescripcion.Text);cadenas.Add(dbEquipo.Text);
  if not validaTexto(nombres, cadenas, 'Pozo', tsIdPlataforma.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;

  try
      Pozos.Post ;
      Insertar1.Enabled  := True ;
      Editar1.Enabled    := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled       := False ;
      Eliminar1.Enabled  := True ;
      Refresh1.Enabled   := True ;
      Salir1.Enabled     := True ;
      frmBarra1.btnPostClick(Sender) ;
      desactivapop(popupprincipal);
  except
   on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pozos/Equipos de Perforacion', 'Al salvar registro', 0);
      frmbarra1.btnCancel.Click ;
   end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  if sOpcion = 'Edit' then
  begin
      grid_plataformas.Enabled := True;
      sOpcion := '';
  end;
end;

procedure TfrmEqPozos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Pozos.Cancel ;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   Grid_plataformas.Enabled := True;
   sOpcion := '';
end;

procedure TfrmEqPozos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Pozos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        Pozos.Delete ;
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pozos/Equipos de Perforacion', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmEqPozos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Pozos.refresh ;
end;

procedure TfrmEqPozos.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close;
end;


procedure TfrmEqPozos.grid_plataformasCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
      frmbarra1.btnCancel.Click ;
end;

procedure TfrmEqPozos.grid_plataformasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEqPozos.grid_plataformasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEqPozos.grid_plataformasTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEqPozos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmEqPozos.Paste1Click(Sender: TObject);
begin
   UtGrid.AddRowsFromClip;
end;

procedure TfrmEqPozos.Copiar2Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmEqPozos.Copy1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmEqPozos.dbEquipoEnter(Sender: TObject);
begin
dbEquipo.color := global_color_entrada
end;

procedure TfrmEqPozos.dbEquipoExit(Sender: TObject);
begin
dbEquipo.color := global_color_salida
end;

procedure TfrmEqPozos.dbEquipoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    tsIdPlataforma.SetFocus
end;

procedure TfrmEqPozos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmEqPozos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmEqPozos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmEqPozos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmEqPozos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmEqPozos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmEqPozos.tlStatusEnter(Sender: TObject);
begin
    dbEquipo.Color := global_color_entrada
end;

procedure TfrmEqPozos.tlStatusExit(Sender: TObject);
begin
    dbEquipo.Color := global_color_salida
end;

procedure TfrmEqPozos.tlStatusKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsIdPlataforma.SetFocus 
end;

procedure TfrmEqPozos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entrada
end;

procedure TfrmEqPozos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salida
end;

end.

