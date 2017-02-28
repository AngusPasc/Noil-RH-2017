unit frm_catsistematizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop;

type
  Tfrmcatsistematizacion = class(TForm)
    grid_GruposIsometrico: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
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
    tzSistematizacion: TZQuery;
    dsSistematizacion: TDataSource;
    tzSistematizacioniIdSistematizacion: TIntegerField;
    tzSistematizacionsIdentificador: TStringField;
    tzSistematizacionsDescripcion: TStringField;
    tsIdsistemaz: TDBEdit;
    Label1: TLabel;
    tssistemaz: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_GruposIsometricoCellClick(Column: TColumn);
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
    procedure grid_GruposIsometricoEnter(Sender: TObject);
    procedure grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdsistemazEnter(Sender: TObject);
    procedure tsIdsistemazExit(Sender: TObject);
    procedure tsIdsistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tssistemazEnter(Sender: TObject);
    procedure tssistemazExit(Sender: TObject);
    procedure tssistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tlFaseKeyPress(Sender: TObject; var Key: Char);
    procedure grid_GruposIsometricoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_GruposIsometricoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_GruposIsometricoTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcatsistematizacion : Tfrmcatsistematizacion;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure Tfrmcatsistematizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure Tfrmcatsistematizacion.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, '', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzSistematizacion.Open ;

   Grid_GruposIsometrico.SetFocus;
   UtGrid:=TicdbGrid.create(grid_gruposisometrico);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   tsIdsistemaz.Enabled := False ;
   tssistemaz.Enabled := False ;


end;
procedure Tfrmcatsistematizacion.grid_GruposIsometricoCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatsistematizacion.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure Tfrmcatsistematizacion.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tzSistematizacion.Append ;
   tzSistematizacion.FieldValues['sIdentificador'] := '' ;
   tzSistematizacion.FieldValues['sDescripcion']   := '' ;
   activapop(frmcatsistematizacion,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_gruposisometrico.Enabled := False;
   tsIdsistemaz.Enabled := True ;
   tssistemaz.Enabled := True;
   tsIdsistemaz.SetFocus;
end;

procedure Tfrmcatsistematizacion.frmBarra1btnEditClick(Sender: TObject);
begin
    If tzSistematizacion.RecordCount > 0 Then
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
       sOldId := tzSistematizacion.FieldValues['sIdentificador'];
       tzSistematizacion.Edit ;
       grid_gruposisometrico.Enabled := False;
       tsIdsistemaz.Enabled := True ;
       tssistemaz.Enabled := True ;
       tsIdsistemaz.SetFocus;
       activapop(frmcatsistematizacion,popupprincipal)

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sistematizacíon', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure Tfrmcatsistematizacion.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Clave');         nombres.Add('Descripcion');
    cadenas.Add(tsIdsistemaz.Text); cadenas.Add(tssistemaz.Text);

    if not validaTexto(nombres, cadenas, 'Clave',tssistemaz.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    lEdicion := tzSistematizacion.state = dsEdit;//capturar la bandera para usarla luego del post
    Try
       Clave := tzSistematizacion.FieldValues['sIdentificador'];
       tzSistematizacion.Post ;

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
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo Sistematizacíon', 'Al salvar registro', 0);
         frmBarra1.btnCancel.Click ;
         lEdicion := false;
       end;
    end;

//    if (lEdicion) and (sOldId <> tzSistematizacion.FieldValues['iIdsistematizacion']) then
//    begin
//        //El registro fue editado y su ID cambio, es necesario actualizar este ID en tablas dependientes
//        Connection.zCommand.Active := False ;
//        Connection.zCommand.SQL.Clear ;
//        Connection.zCommand.SQL.Add('UPDATE sistematizacion SET sIdMarca = :nuevo WHERE sIdMarca = :viejo');
//        Connection.zCommand.Params.ParamByName('nuevo').value := tzSistematizacion.FieldValues['sIdMarca'];
//        Connection.zCommand.Params.ParamByName('viejo').value := sOldId;
//        try
//           Connection.zCommand.ExecSQL;
//        except
//           MessageDlg('Ocurrio un error al actualizar los registros de la tabla dependiente "marcas".', mtInformation, [mbOk], 0);
//        end;
//    end;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;
    if sOpcion = 'Edit' then
    begin
         grid_gruposisometrico.Enabled := True;
         tsIdsistemaz.Enabled:=false;
         tssistemaz.Enabled:=false;
         sOpcion := '';
    end;


end;

procedure Tfrmcatsistematizacion.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzSistematizacion.Cancel ;
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
   grid_gruposisometrico.Enabled := True;
   sOpcion := '';
   tsIdsistemaz.Enabled:=false;
   tssistemaz.Enabled:=false;

end;

procedure Tfrmcatsistematizacion.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzSistematizacion.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
//          Connection.QryBusca.Active := False ;
//          Connection.QryBusca.SQL.Clear ;
//          Connection.QryBusca.SQL.Add('Select sIdMarca from insumos Where sIdMarca =:Clave');
//          Connection.QryBusca.Params.ParamByName('Clave').DataType := ftString ;
//          Connection.QryBusca.Params.ParamByName('Clave').Value    := tzSistematizacion.FieldValues['sIdMarca'] ;
//          Connection.QryBusca.Open ;
//          If Connection.QryBusca.RecordCount > 0 Then
//             MessageDlg('No se puede Borrar el Registro por que esta asignado a un Material en la tabla Insumos', mtInformation, [mbOk], 0)
//          Else
            tzSistematizacion.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Sistematizacion', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure Tfrmcatsistematizacion.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzSistematizacion.refresh ;
end;

procedure Tfrmcatsistematizacion.frmBarra1btnExitClick(Sender: TObject);
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

procedure Tfrmcatsistematizacion.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure Tfrmcatsistematizacion.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure Tfrmcatsistematizacion.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure Tfrmcatsistematizacion.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure Tfrmcatsistematizacion.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure Tfrmcatsistematizacion.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure Tfrmcatsistematizacion.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure Tfrmcatsistematizacion.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure Tfrmcatsistematizacion.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrmcatsistematizacion.grid_GruposIsometricoTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrmcatsistematizacion.tsIdsistemazEnter(Sender: TObject);
begin
    tsIdsistemaz.Color := global_color_entrada
end;

procedure Tfrmcatsistematizacion.tsIdsistemazExit(Sender: TObject);
begin
    tsIdsistemaz.Color := global_color_salida
end;

procedure Tfrmcatsistematizacion.tsIdsistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tssistemaz.SetFocus
end;

procedure Tfrmcatsistematizacion.tssistemazEnter(Sender: TObject);
begin
    tsIdsistemaz.Color := global_color_entrada
end;

procedure Tfrmcatsistematizacion.tssistemazExit(Sender: TObject);
begin
    tssistemaz.Color := global_color_salida
end;

procedure Tfrmcatsistematizacion.tssistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsIdsistemaz.SetFocus
end;

procedure Tfrmcatsistematizacion.tlFaseKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tsIdsistemaz.SetFocus
end;

end.
