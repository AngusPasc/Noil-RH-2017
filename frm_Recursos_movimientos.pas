unit frm_Recursos_movimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit,
  rxCurrEdit, RXDBCtrl, UdbGrid,UnitExcepciones, unittbotonespermisos,
  UnitValidaTexto, UnitValidacion ;
type
  TfrmRecursosMovimientos = class(TForm)
    grid_pernoctan: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    tsDescripcion: TDBEdit;
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
    N3: TMenuItem;
    Salir1: TMenuItem;
    Label3: TLabel;
    ds_recursos: TDataSource;
    recursos: TZQuery;
    tdCantidad: TRxDBCalcEdit;
    tsTipo: TDBLookupComboBox;
    ds_movimientos: TDataSource;
    movimientos: TZQuery;
    recursossIdTipoMovimiento: TStringField;
    recursossDescripcion: TStringField;
    recursosdCantidad: TFloatField;
    recursossContrato: TStringField;
    recursossIdConvenio: TStringField;
    ImportarCatalogo1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N4: TMenuItem;
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_pernoctanCellClick(Column: TColumn);
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
    procedure tsTipoExit(Sender: TObject);
    procedure recursosCalcFields(DataSet: TDataSet);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tsTipoEnter(Sender: TObject);
    procedure ImportarCatalogo1Click(Sender: TObject);
    procedure tsTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadChange(Sender: TObject);
    procedure recursosdCantidadValidate(Sender: TField);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecursosMovimientos: TfrmRecursosMovimientos;
   botonpermiso: tbotonespermisos;
   banderaagregar:boolean;
implementation

{$R *.dfm}

procedure TfrmRecursosMovimientos.tdCantidadChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdcantidad, 'Cantidad');
end;

procedure TfrmRecursosMovimientos.tdCantidadEnter(Sender: TObject);
begin
     tdCantidad.Color := global_color_entradaERP
end;

procedure TfrmRecursosMovimientos.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmRecursosMovimientos.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 then
     tsTipo.SetFocus;
end;

procedure TfrmRecursosMovimientos.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmRecursosMovimientos.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmRecursosMovimientos.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  tdCantidad.SetFocus
end;

procedure TfrmRecursosMovimientos.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmRecursosMovimientos.tsTipoEnter(Sender: TObject);
begin
      tsTipo.Color := global_color_entradaERP
end;

procedure TfrmRecursosMovimientos.tsTipoExit(Sender: TObject);
begin
     tsTipo.Color := global_color_salidaERP;
     Recursos.FieldByName('sDescripcion').AsString := movimientos.FieldbyName('sDescripcion').AsString ;
     tdCantidad.SetFocus;
end;

procedure TfrmRecursosMovimientos.tsTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
        tsDescripcion.SetFocus;
end;

procedure TfrmRecursosMovimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  recursos.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmRecursosMovimientos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rMovimientosdeBarco', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  recursos.Active := False ;
  recursos.ParamByName('Contrato').AsString := global_contrato;
  recursos.ParamByName('Convenio').AsString := global_convenio;
  recursos.Open ;

  movimientos.Active := False ;
  movimientos.ParamByName('Contrato').AsString      := global_contrato_barco;
  movimientos.ParamByName('Clasificacion').AsString := 'Movimiento de Barco';
  movimientos.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmRecursosMovimientos.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnAddClick(Sender: TObject);
begin
    banderaAgregar:=true;
    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Salir1.Enabled := False ;
    tsTipo.SetFocus ;
    recursos.Append ;
    opcButton := 'Nuevo';
    BotonPermiso.permisosBotones(frmBarra1);
    grid_pernoctan.Enabled:=false;
    frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnEditClick(Sender: TObject);
begin
   banderaAgregar:=false;
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   try
      recursos.Edit ;
      opcButton := 'Editar';
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Barco PT', 'Al agregar registro', 0);
      frmBarra1.btnCancel.Click ;  end;
   end ;
   tsTipo.SetFocus;
   grid_pernoctan.Enabled:=false;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnPostClick(Sender: TObject);
var
    nombres, cadenas: TStringList;
begin
//*****************validacampos
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');
  cadenas.Add(Tsdescripcion.Text);
  if not validaTexto(nombres, cadenas, 'Movimiento', tsTipo.Text) then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
//*****************************continua el post
   try
       recursos.FieldValues['sContrato']         := global_contrato;
       recursos.FieldValues['sIdConvenio']       := global_convenio;
       recursos.FieldValues['sIdTipoMovimiento'] := tsTipo.KeyValue;
       recursos.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
       opcButton := '';
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Barco PT', 'Al salvar registro', 0);
       frmBarra1.btnCancel.Click ;
       end;
   end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnCancel.Click;
  if banderaAgregar then
  frmbarra1.btnAdd.Click;
  frmbarra1.btnPrinter.Enabled:=false;
  grid_pernoctan.Enabled:=true;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   recursos.Cancel ;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_pernoctan.Enabled:=true;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If recursos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        recursos.Delete ;
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Barco PT', 'Al eliminar registro', 0);
        end
      end
    end
end;

procedure TfrmRecursosMovimientos.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
   recursos.refresh
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Barco PT', 'Al actualizar el Grid', 0);
  end;
 end;
end;

procedure TfrmRecursosMovimientos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmRecursosMovimientos.ImportarCatalogo1Click(Sender: TObject);
var
    Q_Catalogo  : TZReadOnlyQuery;
    lContinua   : boolean;
begin
  try
    Q_Catalogo := TZReadOnlyQuery.Create(self);
    Q_Catalogo.Connection := connection.zConnection;

    lContinua := False;
    if recursos.RecordCount > 0 then
    begin
         If MessageDlg('Desea eliminar los Recursos Existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
             Q_Catalogo.Active := False;
             Q_Catalogo.SQL.Clear;
             Q_Catalogo.SQL.Add('delete from movimientos_contrato where sContrato =:Contrato and sIdConvenio =:Convenio ');
             Q_Catalogo.ParamByName('Contrato').AsString := global_contrato;
             Q_Catalogo.ParamByName('Convenio').AsString := global_convenio;
             Q_Catalogo.ExecSQL;
             lContinua := True;
         end
    end
    else
       lContinua := True;

    if lContinua then
    begin
        Q_Catalogo.Active := False;
        Q_Catalogo.SQL.Clear;
        Q_Catalogo.SQL.Add('select * from tiposdemovimiento where sClasificacion ="Movimiento de Barco" ');
        Q_Catalogo.Open;

        while not Q_Catalogo.Eof do
        begin
             recursos.Append;
             recursos.FieldValues['sContrato']         := global_contrato;
             recursos.FieldValues['sIdConvenio']       := global_convenio;
             recursos.FieldValues['sIdTipoMovimiento'] := Q_Catalogo.FieldValues['sIdTipoMovimiento'];
             recursos.FieldValues['dCantidad']         := 0;
             recursos.Post;
             Q_Catalogo.Next;
        end;
        recursos.Refresh;
        messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk],0);
    end;
    Q_Catalogo.Destroy;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Movimientos de Barco PT', 'Al importar catálogo', 0);
    end;
  end;

end;

procedure TfrmRecursosMovimientos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmRecursosMovimientos.recursosCalcFields(DataSet: TDataSet);
var
    Q_Movimiento :TZReadOnlyQuery;
begin
    if recursos.RecordCount > 0 then
    begin
        Q_Movimiento := TZReadOnlyQuery.Create(self);
        Q_movimiento.Connection := connection.zConnection;

        Q_Movimiento.Active := False;
        Q_Movimiento.SQL.Clear;
        Q_Movimiento.SQL.Add('select sDescripcion from tiposdemovimiento where sContrato =:Contrato and sIdTipoMovimiento =:Movimiento and sClasificacion = "Movimiento de Barco"');
        Q_Movimiento.ParamByName('Contrato').AsString   := global_contrato_barco;
        if recursos.FieldValues['sIdTipoMovimiento'] = Null  then
           Q_Movimiento.ParamByName('Movimiento').AsString := ''
        else
        Q_Movimiento.ParamByName('Movimiento').AsString := recursos.FieldValues['sIdTipoMovimiento'];
        Q_Movimiento.Open;

        if Q_Movimiento.RecordCount > 0 then
           recursossDescripcion.Text := Q_Movimiento.FieldValues['sDescripcion'];
    end;
end;

procedure TfrmRecursosMovimientos.recursosdCantidadValidate(Sender: TField);
begin
  //Sender.Value:=abs(strtofloatdef(text, 0));
end;

procedure TfrmRecursosMovimientos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmRecursosMovimientos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmRecursosMovimientos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmRecursosMovimientos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmRecursosMovimientos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmRecursosMovimientos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

end.
