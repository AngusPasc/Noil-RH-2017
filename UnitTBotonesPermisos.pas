unit UnitTBotonesPermisos;

interface

uses
  SysUtils, ZDataset, ZConnection, Classes, frm_barra, Dialogs, Menus, DB,
  Buttons, AdvGlowButton,cxButtons;

type

ListaPermisos = record
  btnAdd: boolean;
  btnEdit: boolean;
  btnDelete: boolean;
  btnPrinter: boolean;
  sAlerta: string;
end;

TBotonesPermisos=class
private
  pdbError: string;
  pError: boolean;
  pPermisos: ListaPermisos;
  pConexion: TZConnection;
  pGrupo: string;
  pModulo: string;
  pMenu: TPopupMenu;
  Owner: TComponent;
  pDataSet: TDataSet;
  ListaInsert: Array of TMenuItem;
  ListaEdit: Array of TMenuItem;
  ListaDelete: Array of TMenuItem;
  ListaPrint: Array of TMenuItem;
  OldBeforePost: Procedure(DataSet: TDataSet) of Object;
  OldBeforeDelete: Procedure(DataSet: TDataSet) of Object;
  function dbConsulta(sSQLCommand: string; paramNames, paramValues: TStringList): TZReadOnlyQuery;
  function adaptarMenu: boolean;
  function permisosMenu: boolean;
  function darAlerta: boolean;
  function permisoInsercion: boolean;
  function permisoEdicion: boolean;
  function permisoEliminacion: boolean;
  function permisoImpresion: boolean;
  procedure NewBeforePost(DataSet: TDataSet);
  procedure NewBeforeDelete(DataSet: TDataSet);
public
  property agregar: boolean read permisoInsercion;
  property editar: boolean read permisoEdicion;
  property borrar: boolean read permisoEliminacion;
  property imprimir: boolean read permisoImpresion;
  property dbError:string read pdbError;
  constructor Create(AOwner: TComponent; Conexion: TZConnection; grupo, modulo: string; Menu: TPopupMenu = nil);overload;
  constructor Create(AOwner: TComponent; Conexion: TZConnection; grupo, modulo: string; DataSet: TDataSet);overload;
  function definirPermisos: boolean;
  function permisosBotones(barra: TfrmBarra): boolean;
  function permisosBotones2(btnAgr, btnEdt, btnBor, btnImp: TBitBtn): boolean;
  function permisosBotones3(btnAgr, btnEdt, btnBor, btnImp: TAdvGlowButton): boolean;
end;

implementation

{ TBotonesPermisos }

function TBotonesPermisos.adaptarMenu: boolean;
var
  ii: integer;
begin
  result := true;
  if Assigned(pMenu) then
  begin
    try
      for ii := 0 to pMenu.Items.Count - 1 do
      begin
        if pMenu.Items[ii].Tag = 1 then//el numero asignado a los derechos de insercion es 1
        begin
          SetLength(ListaInsert, Length(ListaInsert) + 1);
          ListaInsert[Length(ListaInsert) - 1] := pMenu.Items[ii];
        end;

        if pMenu.Items[ii].Tag = 2 then//el numero asignado a los derechos de edicion es 2
        begin
          SetLength(ListaEdit, Length(ListaEdit) + 1);
          ListaEdit[Length(ListaEdit) - 1] := pMenu.Items[ii];
        end;

        if pMenu.Items[ii].Tag = 3 then//el numero asignado a los derechos de eliminacion es 3
        begin
          SetLength(ListaDelete, Length(ListaDelete) + 1);
          ListaDelete[Length(ListaDelete) - 1] := pMenu.Items[ii];
        end;

        if pMenu.Items[ii].Tag = 4 then//el numero asignado a los derechos de impresion es 4
        begin
          SetLength(ListaPrint, Length(ListaPrint) + 1);
          ListaPrint[Length(ListaPrint) - 1] := pMenu.Items[ii];
        end;
      end;
    except
      result := false;
    end;
  end;
end;

constructor TBotonesPermisos.Create(AOwner: TComponent; Conexion: TZConnection;
  grupo, modulo: string; Menu: TPopupMenu = nil);
begin
  //asignar atributos
  Owner := AOwner;
  pConexion := Conexion;
  pGrupo := grupo;
  pModulo := modulo;
  pMenu := Menu;
  pdbError := '';
  pError := False;
  //inicializar record
  pPermisos.btnAdd := True;
  pPermisos.btnEdit := True;
  pPermisos.btnDelete := True;
  pPermisos.btnPrinter := True;
  pPermisos.sAlerta := '';
  //generar el record de permisos
  if not definirPermisos() then
    pError := True;
  if not adaptarMenu then
    pError := True;
  //if pPermisos.sAlerta <> '' then
    //darAlerta();
end;

constructor TBotonesPermisos.Create(AOwner: TComponent; Conexion: TZConnection;
  grupo, modulo: string; DataSet: TDataSet);
begin
 //asignar atributos
  Owner := AOwner;
  pConexion := Conexion;
  pGrupo := grupo;
  pModulo := modulo;
  pDataSet := DataSet;
  pdbError := '';
  pError := False;
  //inicializar record
  pPermisos.btnAdd := True;
  pPermisos.btnEdit := True;
  pPermisos.btnDelete := True;
  pPermisos.btnPrinter := True;
  pPermisos.sAlerta := '';
  //generar el record de permisos
  if not definirPermisos() then
    pError := True;
  //Administrar el evento befor post
  OldBeforePost := dataset.BeforePost;
  dataset.BeforePost := NewBeforePost;
  OldBeforeDelete := dataset.BeforeDelete;
  dataset.BeforeDelete := NewBeforeDelete;
end;

function TBotonesPermisos.darAlerta: boolean;
var
  sSQL: string;
  ZQuery: TZReadOnlyQuery;
  paramNames, paramValues: TStringList;
begin
  result := false;
  MessageDlg(pPermisos.sAlerta, mtWarning, [mbOk], 0); 
  sSQL := 'UPDATE usuarios SET sAlerta = "" WHERE sIdUsuario = :usuario';
  paramNames := TStringList.Create;paramNames.Add('usuario');
  paramValues := TStringList.Create;paramValues.Add(pGrupo);
  ZQuery := dbConsulta(sSQL, paramNames, paramValues); 
  ZQuery.Free; 
  if pdbError = '' then
    result := true;
end;

function TBotonesPermisos.dbConsulta(sSQLCommand: string; paramNames,
  paramValues: TStringList): TZReadOnlyQuery;
var
  ZQuery: TZReadOnlyQuery;
  ii: integer;
begin
  pdbError := '';//reiniciar el error DB
  ZQuery := TZReadOnlyQuery.Create(Owner);  //crear el componente
  ZQuery.Connection := pConexion;
  ZQuery.Active := false;
  ZQuery.SQL.Clear;
  ZQuery.SQL.Add(sSQLCommand);//agregar la instruccion
  if (paramNames <> nil) and (paramValues <> nil) then begin
    for ii := 0 to paramNames.Count - 1 do begin //agregar los parametros
      ZQuery.ParamByName(paramNames[ii]).Value := paramValues[ii];
    end;
  end;
  try
    ZQuery.Open;
  except
    on E: exception do begin //se registra el error
      pdbError := E.Message;
    end;
  end;
  result := ZQuery;
end;

function TBotonesPermisos.definirPermisos: boolean;
var
  sSQL: string;
  paramNames, paramValues: TStringList;
  ZQuery: TZReadOnlyQuery;
  prueba: TStrings;
begin
  result := True;
  //consultar los permisos del usuario
  sSQL :=
  'SELECT eInsertar, eEditar, eEliminar, eImprimir ' +
  'FROM gruposxprograma ' +
  'WHERE sIdGrupo = :grupo AND sIdPrograma = :modulo';
  paramNames := TStringList.Create;paramNames.Add('grupo');paramNames.Add('modulo');
  paramValues := TStringList.Create;paramValues.Add(pGrupo);paramValues.Add(pModulo);
  ZQuery := dbConsulta(sSQL, paramNames, paramValues);
  //sino hay error
  if pdbError = '' then begin
    if ZQuery.RecordCount > 0 then begin
      pPermisos.btnAdd := ZQuery.FieldByName('eInsertar').AsString = 'Si';
      pPermisos.btnEdit := ZQuery.FieldByName('eEditar').AsString = 'Si';
      pPermisos.btnDelete := ZQuery.FieldByName('eEliminar').AsString = 'Si';
      pPermisos.btnPrinter := ZQuery.FieldByName('eImprimir').AsString = 'Si';
      ZQuery.Free;
    end
    else begin
      result := False;
    end;
  end
  else begin
    result := False;
  end;
end;

function TBotonesPermisos.permisosBotones(barra: TfrmBarra): boolean;
begin
  result := not pError;
  if result then begin
    try
      if Assigned(barra) then
      begin
        if barra.btnAdd.Enabled then
          barra.btnAdd.Enabled := pPermisos.btnAdd;
        if barra.btnEdit.Enabled then
          barra.btnEdit.Enabled := pPermisos.btnEdit;
        if barra.btnDelete.Enabled then
          barra.btnDelete.Enabled := pPermisos.btnDelete;
        if barra.btnPrinter.Enabled then
          barra.btnPrinter.Enabled := pPermisos.btnPrinter;
      end;
    except
      result := False;
    end;
    permisosMenu;
  end;
end;

function TBotonesPermisos.permisosBotones2(btnAgr, btnEdt, btnBor, btnImp: TBitBtn): boolean;
begin
  result := not pError;
  if result then begin
    try
      if Assigned(btnAgr) then
      begin
        if btnAgr.Enabled then
          btnAgr.Enabled := pPermisos.btnAdd;
      end;
      if Assigned(btnEdt) then
      begin
        if btnEdt.Enabled then
          btnEdt.Enabled := pPermisos.btnEdit;
      end;
      if Assigned(btnBor) then
      begin
        if btnBor.Enabled then
          btnBor.Enabled := pPermisos.btnDelete;
      end;
      if Assigned(btnImp) then
      begin
        if btnImp.Enabled then
          btnImp.Enabled := pPermisos.btnPrinter;
      end;
    except
      result := False;
    end;
  end;
end;

function TBotonesPermisos.permisosBotones3(btnAgr, btnEdt, btnBor, btnImp: TAdvGlowButton): boolean;
begin
  result := not pError;
  if result then begin
    try
      if Assigned(btnAgr) then
      begin
        if btnAgr.Enabled then
          btnAgr.Enabled := pPermisos.btnAdd;
      end;
      if Assigned(btnEdt) then
      begin
        if btnEdt.Enabled then
          btnEdt.Enabled := pPermisos.btnEdit;
      end;
      if Assigned(btnBor) then
      begin
        if btnBor.Enabled then
          btnBor.Enabled := pPermisos.btnDelete;
      end;
      if Assigned(btnImp) then
      begin
        if btnImp.Enabled then
          btnImp.Enabled := pPermisos.btnPrinter;
      end;
    except
      result := False;
    end;
  end;
end;

function TBotonesPermisos.permisosMenu: boolean;
var
  ii: integer;
begin
  result := true;
  if Assigned(pMenu) then
  begin
    try
      for ii := 0 to Length(ListaInsert) - 1 do
      begin
        if ListaInsert[ii].Enabled then
          ListaInsert[ii].Enabled := pPermisos.btnAdd;
      end;

      for ii := 0 to Length(ListaEdit) - 1 do
      begin
        if ListaEdit[ii].Enabled then
          ListaEdit[ii].Enabled := pPermisos.btnEdit;
      end;

      for ii := 0 to Length(ListaDelete) - 1 do
      begin
        if ListaDelete[ii].Enabled then
          ListaDelete[ii].Enabled := pPermisos.btnDelete;
      end;

      for ii := 0 to Length(ListaPrint) - 1 do
      begin
        if ListaPrint[ii].Enabled then
          ListaPrint[ii].Enabled := pPermisos.btnPrinter;
      end;
    except
      result := false;
    end;
  end;
end;

procedure TBotonesPermisos.NewBeforePost(DataSet: TDataSet);
begin
  if pDataSet.State = dsInsert then
  begin
    if pPermisos.btnAdd then
    begin
      if Assigned(OldBeforePost) then
        OldBeforePost(DataSet)
    end
    else
    begin
      abort;
      pDataSet.Cancel;
    end;
  end
  else if pDataSet.State = dsEdit then
  begin
    if pPermisos.btnEdit then
    begin
      if Assigned(OldBeforePost) then
        OldBeforePost(DataSet)
    end
    else
    begin
      abort;
      pDataSet.Cancel;
    end;
  end;
end;

procedure TBotonesPermisos.NewBeforeDelete(DataSet: TDataSet);
begin
  if pPermisos.btnDelete then
  begin
    if Assigned(OldBeforeDelete) then
      OldBeforeDelete(DataSet)
  end
  else
    abort;
end;

function TBotonesPermisos.permisoInsercion: boolean;
begin
  result := pPermisos.btnAdd;
end;

function TBotonesPermisos.permisoEdicion: boolean;
begin
  result := pPermisos.btnEdit;
end;

function TBotonesPermisos.permisoEliminacion: boolean;
begin
  result := pPermisos.btnDelete;
end;

function TBotonesPermisos.permisoImpresion: boolean;
begin
  result := pPermisos.btnPrinter;
end;

end.
