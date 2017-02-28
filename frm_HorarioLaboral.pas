unit frm_HorarioLaboral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, strUtils;

  //, frm_Empleados;

type
  TfrmHorarioLaboral = class(TForm)
    grid_Horarios: TDBGrid;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    tshorario: TDBEdit;
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
    tzhorarios: TZQuery;
    dshorarios: TDataSource;
    tzhorariosiIdhorario: TIntegerField;
    tzhorariossDescripcion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_HorariosCellClick(Column: TColumn);
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
    procedure grid_HorariosEnter(Sender: TObject);
    procedure grid_HorariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_HorariosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdsistemazKeyPress(Sender: TObject; var Key: Char);
    procedure tshorarioEnter(Sender: TObject);
    procedure tshorarioExit(Sender: TObject);
    procedure grid_HorariosMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_HorariosMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_HorariosTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tshorarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHorarioLaboral : TfrmHorarioLaboral;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
 uses
    frm_inteligent;
{$R *.dfm}

procedure TfrmHorarioLaboral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;

  end;

procedure TfrmHorarioLaboral.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, '', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   //tzMarcas := False ;
  tzhorarios.Open ;

   grid_Horarios.SetFocus;
   UtGrid:=TicdbGrid.create(grid_Horarios);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
      tshorario.Enabled := False ;


end;
procedure TfrmHorarioLaboral.grid_HorariosCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmHorarioLaboral.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then
//    tsMarca.SetFocus ;
end;

procedure TfrmHorarioLaboral.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tzhorarios.Append ;
   tzhorarios.FieldValues['sDescripcion']   := '' ;
   activapop(frmHorarioLaboral,popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Horarios.Enabled := False;

   tshorario.Enabled := True;
   tshorario.SetFocus

end;

procedure TfrmHorarioLaboral.frmBarra1btnEditClick(Sender: TObject);
begin
    If tzhorarios.RecordCount > 0 Then
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
       sOldId := tzhorarios.FieldValues['iIdhorario'];
       tzhorarios.Edit ;
       grid_Horarios.Enabled := False;
       tshorario.Enabled := True ;
       tshorario.SetFocus;
       activapop(frmHorarioLaboral,popupprincipal)

        except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Diametros', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmHorarioLaboral.frmBarra1btnPostClick(Sender: TObject);
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
    cadenas.Add(tshorario.Text);

    if not validaTexto(nombres, cadenas, 'Clave', tshorario.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;

    {Continua insercion de datos..}
    lEdicion := tzhorarios.state = dsEdit;//capturar la bandera para usarla luego del post
    Try

       tzhorarios.Post ;

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
         grid_Horarios.Enabled := True;
         tshorario.Enabled := False ;
         sOpcion := '';
    end;


end;

procedure TfrmHorarioLaboral.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   tzhorarios.Cancel ;
   tshorario.Enabled:=false;
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
   grid_Horarios.Enabled := True;
   sOpcion := '';
end;

procedure TfrmHorarioLaboral.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If   tzhorarios.RecordCount > 0 then
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
            tzhorarios.Delete ;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Periodo de Pagos', 'Al eliminar registro', 0);
         end;
      end
    end
end;

procedure TfrmHorarioLaboral.frmBarra1btnRefreshClick(Sender: TObject);
begin
    tzhorarios.refresh ;
end;

procedure TfrmHorarioLaboral.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmHorarioLaboral.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmHorarioLaboral.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmHorarioLaboral.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmHorarioLaboral.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmHorarioLaboral.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmHorarioLaboral.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmHorarioLaboral.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmHorarioLaboral.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmHorarioLaboral.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmHorarioLaboral.grid_HorariosEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmHorarioLaboral.grid_HorariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmHorarioLaboral.grid_HorariosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmHorarioLaboral.grid_HorariosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmHorarioLaboral.grid_HorariosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmHorarioLaboral.grid_HorariosTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmHorarioLaboral.tsIdsistemazKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tshorario.SetFocus
end;

procedure TfrmHorarioLaboral.tshorarioEnter(Sender: TObject);
begin
    tshorario.Color := global_color_entrada
end;

procedure TfrmHorarioLaboral.tshorarioExit(Sender: TObject);
begin
    tshorario.Color := global_color_salida
end;

procedure TfrmHorarioLaboral.tshorarioKeyPress(Sender: TObject;
  var Key: Char);
begin
    tshorario.SetFocus
end;

end.
