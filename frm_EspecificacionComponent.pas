unit frm_EspecificacionComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop;

type
  TfrmEspecificacionComponent = class(TForm)
    grid_Subfamilia: TDBGrid;
    Label2: TLabel;
    Label9: TLabel;
    frmBarra1: TfrmBarra;
    tsDescripcion: TDBEdit;
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
    qryEspecificacion: TZQuery;
    ds_Especificacion: TDataSource;
    cbFamilia: TDBLookupComboBox;
    qryFamilia: TZQuery;
    ds_Familia: TDataSource;
    qryFamiliaiIdFamilia: TIntegerField;
    qryFamiliasFamilia: TStringField;
    qryEspecificacioniIdEspecificacion: TIntegerField;
    qryEspecificacionsEspecificacion: TStringField;
    qryEspecificacioniIdFamilia: TIntegerField;
    qryEspecificacionsFamilia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_SubfamiliaCellClick(Column: TColumn);
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
    procedure grid_SubfamiliaEnter(Sender: TObject);
    procedure grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_SubfamiliaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_SubfamiliaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_SubfamiliaTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure cbFamiliaEnter(Sender: TObject);
    procedure cbFamiliaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEspecificacionComponent : TfrmEspecificacionComponent;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles;
{$R *.dfm}

procedure TfrmEspecificacionComponent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
  utgrid.Destroy;
  botonpermiso.Free;
  end;

procedure TfrmEspecificacionComponent.FormShow(Sender: TObject);
begin
  cbFamilia.Enabled:=false;
  tsDescripcion.Enabled:=false;
  qryFamilia.active := False;
  qryFamilia.open;

   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryEspecificacion.Active := False ;
   qryEspecificacion.Open ;

   grid_Subfamilia.SetFocus;
   UtGrid:=TicdbGrid.create(grid_Subfamilia);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

   try
      if frmConsumibles.Active then
         frmBarra1.btnAdd.Click;
   Except
   end;
end;
procedure TfrmEspecificacionComponent.grid_SubfamiliaCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEspecificacionComponent.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmEspecificacionComponent.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   cbFamilia.Enabled:=true;
   tsDescripcion.Enabled:=true;
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   qryEspecificacion.Last;
   qryEspecificacion.Append ;
   qryEspecificacion.FieldValues['sEspecificacion']    := '' ;
   //tsIdGrupo.SetFocus ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_Subfamilia.Enabled := False;

end;

procedure TfrmEspecificacionComponent.frmBarra1btnEditClick(Sender: TObject);
begin
    If qryEspecificacion.RecordCount > 0 Then
    Begin
        try
       frmBarra1.btnEditClick(Sender);
       cbFamilia.Enabled:=true;
       tsDescripcion.Enabled:=true;
       Insertar1.Enabled := False ;
       Editar1.Enabled := False ;
       Registrar1.Enabled := True ;
       Can1.Enabled := True ;
       Eliminar1.Enabled := False ;
       Refresh1.Enabled := False ;
       Salir1.Enabled := False ;
       sOpcion := 'Edit';
       sOldId := qryEspecificacion.FieldValues['iIdFamilia'];
       qryEspecificacion.Edit ;
       grid_Subfamilia.Enabled := False;
      // tsIdGrupo.SetFocus;
               except
           on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Especificacion de Componentes', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmEspecificacionComponent.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  nombres,
  cadenas  : TStringList;
  IdGrupo  : string;
begin




    {Validaciones de campos}
    nombres:=TStringList.Create;
    cadenas:=TStringList.Create;
    nombres.Add('Descripcion');
    cadenas.Add(tsDescripcion.Text);

    if not validaTexto(nombres, cadenas, '',tsDescripcion.Text) then
    begin
       MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
       exit;
    end;
     qryEspecificacion.FieldValues['iIdFamilia']:=qryFamilia.Fieldbyname('iIdFamilia').AsInteger;
    {Continua insercion de datos..}
//    lEdicion := qrysubFamilias.state = dsEdit;//capturar la bandera para usarla luego del post
//    Try
//       IdGrupo := qrysubFamilias.FieldValues['sIdFamilia'];
       qryEspecificacion.Post ;

       Insertar1.Enabled  := True ;
       Editar1.Enabled    := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled       := False ;
       Eliminar1.Enabled  := True ;
       Refresh1.Enabled   := True ;
       Salir1.Enabled     := True ;
       grid_Subfamilia.Enabled := True;

//       try
//          if frmConsumibles.Active then
//          begin
//              frmConsumibles.grupos.Refresh;
//              frmConsumibles.dbGrupos.KeyValue := IdGrupo;
//              frmConsumibles.dbGrupos.SetFocus;
//          end;
//       Except
//       end;

       frmBarra1.btnPostClick(Sender);
       desactivapop(popupprincipal);
       if qryEspecificacion.state=dsEdit then
       begin
        cbFamilia.Enabled:=false;
        tsDescripcion.Enabled:=false;
       end;
end;

procedure TfrmEspecificacionComponent.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   cbFamilia.Enabled:=false;
   tsDescripcion.Enabled:=false;
   qryEspecificacion.Cancel ;
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
   grid_Subfamilia.Enabled := True;
   sOpcion := '';
end;

procedure TfrmEspecificacionComponent.frmBarra1btnDeleteClick(Sender: TObject);
begin
//  If   qrysubFamilias.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     try
//          Connection.QryBusca.Active := False ;
//          Connection.QryBusca.SQL.Clear ;
//          Connection.QryBusca.SQL.Add('Select iIdSubfamilia FROM insumos WHERE iIdSubfamilia =:Subfamilia');
//          Connection.QryBusca.Params.ParamByName('Subfamilia').DataType := ftInteger ;
//          Connection.QryBusca.Params.ParamByName('Subfamilia').Value    := qrysubFamilias.FieldValues['iIdSubfamilia'];
//          Connection.QryBusca.Open;
//
//          If Connection.QryBusca.RecordCount > 0 Then
//             MessageDlg('No se puede Borrar el Registro por que esta Ligado ala Tabla Innsumos', mtInformation, [mbOk], 0)
//          Else
            qryEspecificacion.Delete;
      except
         on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Especificacion de Componentes', 'Al eliminar registro', 0);
         end;
      end


    end
end;

procedure TfrmEspecificacionComponent.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryEspecificacion.refresh ;
end;

procedure TfrmEspecificacionComponent.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmEspecificacionComponent.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEspecificacionComponent.cbFamiliaEnter(Sender: TObject);
begin
cbFamilia.Color := global_color_entrada
end;

procedure TfrmEspecificacionComponent.cbFamiliaExit(Sender: TObject);
begin
  cbFamilia.Color := global_color_salida
end;

procedure TfrmEspecificacionComponent.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmEspecificacionComponent.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmEspecificacionComponent.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEspecificacionComponent.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEspecificacionComponent.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEspecificacionComponent.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEspecificacionComponent.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEspecificacionComponent.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEspecificacionComponent.grid_SubfamiliaTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEspecificacionComponent.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmEspecificacionComponent.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entrada
end;

procedure TfrmEspecificacionComponent.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salida
end;

end.
