unit frm_PeriododePagoRH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, strUtils;

type
  TfrmPeriododePagoRH = class(TForm)
    grid_periodos: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tsperiodo: TDBEdit;
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
    tzperiodos: TZQuery;
    dsperiodos: TDataSource;
    tzperiodossPeriodo: TIntegerField;
    tzperiodossDescripcion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_periodosCellClick(Column: TColumn);
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
    procedure grid_periodosEnter(Sender: TObject);
    procedure grid_periodosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_periodosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdsistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tsperiodoEnter(Sender: TObject);
    procedure tsperiodoExit(Sender: TObject);
    procedure grid_periodosMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_periodosMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_periodosTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsperiodoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriododePagoRH : TfrmPeriododePagoRH;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure TfrmPeriododePagoRH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmPeriododePagoRH.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, '', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzperiodos.Open ;

   grid_periodos.SetFocus;
   UtGrid:=TicdbGrid.create(grid_periodos);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
      tsperiodo.Enabled := False ;


end;
procedure TfrmPeriododePagoRH.grid_periodosCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriododePagoRH.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure TfrmPeriododePagoRH.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tzperiodos.Append ;
   tzperiodos.FieldValues['sDescripcion']   := '' ;
   activapop(frmPeriododePagoRH,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_periodos.Enabled := False;

   tsperiodo.Enabled := True;
   tsperiodo.SetFocus

end;

procedure TfrmPeriododePagoRH.frmBarra1btnEditClick(Sender: TObject);
begin
    If tzperiodos.RecordCount > 0 Then
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
       sOldId := tzperiodos.FieldValues['sPeriodo'];
       tzperiodos.Edit ;
       grid_periodos.Enabled := False;
       tsperiodo.Enabled := True ;
       tsperiodo.SetFocus;
       activapop(frmPeriododePagoRH,popupprincipal)

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Diametros', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmPeriododePagoRH.frmBarra1btnPostClick(Sender: TObject);
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
    cadenas.Add(tsperiodo.Text);

    if not validaTexto(nombres, cadenas, 'Clave', tsperiodo.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    lEdicion := tzperiodos.state = dsEdit;//capturar la bandera para usarla luego del post
    Try

       tzperiodos.Post ;

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
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Periodo de Pagos', 'Al salvar registro', 0);
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
         grid_periodos.Enabled := True;
         tsperiodo.Enabled := False ;
         sOpcion := '';
    end;


end;

procedure TfrmPeriododePagoRH.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzperiodos.Cancel ;
   tsperiodo.Enabled:=false;
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
   grid_periodos.Enabled := True;
   sOpcion := '';
end;

procedure TfrmPeriododePagoRH.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzperiodos.RecordCount > 0 then
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
            tzperiodos.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Periodo de Pagos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmPeriododePagoRH.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzperiodos.refresh ;
end;

procedure TfrmPeriododePagoRH.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmPeriododePagoRH.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmPeriododePagoRH.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmPeriododePagoRH.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmPeriododePagoRH.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmPeriododePagoRH.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmPeriododePagoRH.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmPeriododePagoRH.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmPeriododePagoRH.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmPeriododePagoRH.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmPeriododePagoRH.grid_periodosEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriododePagoRH.grid_periodosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriododePagoRH.grid_periodosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmPeriododePagoRH.grid_periodosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmPeriododePagoRH.grid_periodosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmPeriododePagoRH.grid_periodosTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmPeriododePagoRH.tsIdsistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsperiodo.SetFocus
end;

procedure TfrmPeriododePagoRH.tsperiodoEnter(Sender: TObject);
begin
    tsperiodo.Color := global_color_entrada
end;

procedure TfrmPeriododePagoRH.tsperiodoExit(Sender: TObject);
begin
    tsperiodo.Color := global_color_salida
end;

procedure TfrmPeriododePagoRH.tsperiodoKeyPress(Sender: TObject;
  var Key: Char);
begin
    tsperiodo.SetFocus
end;

end.
