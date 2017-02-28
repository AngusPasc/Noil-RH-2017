unit frm_catalogoDiametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, strUtils;

type
  TfrmcatalogoDiametros = class(TForm)
    grid_diametros: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tsdiametro: TDBEdit;
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
    tzdiametros: TZQuery;
    dsdiametros: TDataSource;
    tzdiametrosiIdDiametro: TIntegerField;
    tzdiametrossDescripcion: TStringField;
    tzdiametrosfconvercion: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_diametrosCellClick(Column: TColumn);
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
    procedure grid_diametrosEnter(Sender: TObject);
    procedure grid_diametrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_diametrosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdsistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tsdiametroEnter(Sender: TObject);
    procedure tsdiametroExit(Sender: TObject);
    procedure grid_diametrosMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_diametrosMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_diametrosTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsdiametroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcatalogoDiametros : TfrmcatalogoDiametros;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure TfrmcatalogoDiametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmcatalogoDiametros.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, '', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzdiametros.Open ;

   grid_diametros.SetFocus;
   UtGrid:=TicdbGrid.create(grid_diametros);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
      tsdiametro.Enabled := False ;


end;
procedure TfrmcatalogoDiametros.grid_diametrosCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmcatalogoDiametros.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure TfrmcatalogoDiametros.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tzdiametros.Append ;
   tzdiametros.FieldValues['sDescripcion']   := '' ;
   activapop(frmcatalogoDiametros,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_diametros.Enabled := False;

   tsdiametro.Enabled := True;
   tsdiametro.SetFocus

end;

procedure TfrmcatalogoDiametros.frmBarra1btnEditClick(Sender: TObject);
begin
    If tzdiametros.RecordCount > 0 Then
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
       sOldId := tzdiametros.FieldValues['iIdDiametro'];
       tzdiametros.Edit ;
       grid_diametros.Enabled := False;
       tsdiametro.Enabled := True ;
       tsdiametro.SetFocus;
       activapop(frmcatalogoDiametros,popupprincipal)

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Diametros', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmcatalogoDiametros.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  Clave  : string;
  decimal,decimal2, wCadena, entero : string;
  convertfracion, convercionfractofloat: double;
begin
    {Validaciones de campos}
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Descripcion');
    cadenas.Add(tsdiametro.Text);

    if not validaTexto(nombres, cadenas, 'Clave', tsdiametro.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;
    
    wcadena := tsDiametro.Text;
    entero := MidStr(wCadena, 1, Pos(' ', wCadena)-1);
    decimal2 := MidStr(wCadena, Pos('/', wCadena)+1, Length(wCadena));
    decimal := MidStr(wCadena, Pos(' ', wCadena)+1,Length(wCadena)-((Pos(' ', wCadena))+(Length(decimal2))+1));
    if decimal<>'' then
    begin
     if entero='' then
    entero:='0';
    convertfracion:=(strtoint(decimal))/(strtoint(decimal2));
    convercionfractofloat:=(strtofloat(entero))+convertfracion;

    end else begin
    convercionfractofloat:=(strtofloat(decimal2));
    end;

    {Continua insercion de datos..}
    lEdicion := tzdiametros.state = dsEdit;//capturar la bandera para usarla luego del post
    Try
       tzdiametros.FieldValues['fconvercion']   := convercionfractofloat;
       tzdiametros.Post ;

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
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Diametros', 'Al salvar registro', 0);
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
         grid_diametros.Enabled := True;
         tsdiametro.Enabled := False ;
         sOpcion := '';
    end;


end;

procedure TfrmcatalogoDiametros.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzdiametros.Cancel ;
   tsdiametro.Enabled:=false;
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
   grid_diametros.Enabled := True;
   sOpcion := '';
end;

procedure TfrmcatalogoDiametros.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzdiametros.RecordCount > 0 then
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
            tzdiametros.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Diametros', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmcatalogoDiametros.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzdiametros.refresh ;
end;

procedure TfrmcatalogoDiametros.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmcatalogoDiametros.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmcatalogoDiametros.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmcatalogoDiametros.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmcatalogoDiametros.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmcatalogoDiametros.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmcatalogoDiametros.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmcatalogoDiametros.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmcatalogoDiametros.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmcatalogoDiametros.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmcatalogoDiametros.grid_diametrosEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmcatalogoDiametros.grid_diametrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmcatalogoDiametros.grid_diametrosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmcatalogoDiametros.grid_diametrosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmcatalogoDiametros.grid_diametrosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmcatalogoDiametros.grid_diametrosTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmcatalogoDiametros.tsIdsistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsdiametro.SetFocus
end;

procedure TfrmcatalogoDiametros.tsdiametroEnter(Sender: TObject);
begin
    tsdiametro.Color := global_color_entrada
end;

procedure TfrmcatalogoDiametros.tsdiametroExit(Sender: TObject);
begin
    tsdiametro.Color := global_color_salida
end;

procedure TfrmcatalogoDiametros.tsdiametroKeyPress(Sender: TObject;
  var Key: Char);
begin
    tsdiametro.SetFocus
end;

end.
