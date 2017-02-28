unit frm_Recursos_pernocta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, RxDBComb,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit,
  rxCurrEdit, RXDBCtrl, udbgrid, unitexcepciones, unittbotonespermisos,UnitValidaTexto,
  UnitValidacion, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;
type
  TfrmRecursosPernocta = class(TForm)
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
    ds_recursos: TDataSource;
    recursos: TZQuery;
    ds_movimientos: TDataSource;
    movimientos: TZQuery;
    recursossDescripcion: TStringField;
    recursosdCantidad: TFloatField;
    recursossContrato: TStringField;
    recursossIdConvenio: TStringField;
    recursossIdCuenta: TStringField;
    ImportarCatalogo1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N4: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_pernoctan: TcxGrid;
    pnl1: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    tsDescripcion: TDBEdit;
    tdCantidad: TRxDBCalcEdit;
    tstipo: TDBLookupComboBox;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
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
    procedure tstipoExit(Sender: TObject);
    procedure recursosCalcFields(DataSet: TDataSet);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tstipoEnter(Sender: TObject);
    procedure ImportarCatalogo1Click(Sender: TObject);
    procedure tstipoKeyPress(Sender: TObject; var Key: Char);
    procedure Pegar1Click(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure recursosdCantidadSetText(Sender: TField; const Text: string);
    procedure tdCantidadChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecursosPernocta: TfrmRecursosPernocta;

  botonpermiso: tbotonespermisos;
  banderaAgregar:boolean;
implementation

{$R *.dfm}

procedure TfrmRecursosPernocta.tdCantidadChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmRecursosPernocta.tdCantidadEnter(Sender: TObject);
begin
     tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmRecursosPernocta.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmRecursosPernocta.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
     tsTipo.SetFocus;   
end;

procedure TfrmRecursosPernocta.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color:=global_color_entradaERP
end;

procedure TfrmRecursosPernocta.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmRecursosPernocta.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then     
     tdCantidad.SetFocus;
end;

procedure TfrmRecursosPernocta.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmRecursosPernocta.tstipoEnter(Sender: TObject);
begin
      tsTipo.Color := global_color_entradaERP
end;

procedure TfrmRecursosPernocta.tstipoExit(Sender: TObject);
begin
     tsTipo.Color := global_color_salidaERP;
     //tsDescripcion.Text := movimientos.FieldValues['sDescripcion'];
     Recursos.FieldByName('sDescripcion').AsString := movimientos.FieldbyName('sDescripcion').AsString ;
     tdCantidad.SetFocus;
end;

procedure TfrmRecursosPernocta.tstipoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13  then
        tsDescripcion.SetFocus;
end;

procedure TfrmRecursosPernocta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  recursos.Cancel ;
  action := cafree ;
  botonpermiso.Free;
end;

procedure TfrmRecursosPernocta.FormShow(Sender: TObject);
begin
BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rPernoctas', PopupPrincipal);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  recursos.Active := False ;
  recursos.ParamByName('Contrato').AsString := global_contrato;
  recursos.ParamByName('Convenio').AsString := global_convenio;
  recursos.Open ;

  movimientos.Active := False ;
  movimientos.Open ;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmRecursosPernocta.grid_pernoctanCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmRecursosPernocta.frmBarra1btnAddClick(Sender: TObject);
begin
   banderaAgregar:=true;
   try
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
    BotonPermiso.permisosBotones(frmBarra1);
   except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al agregar registro', 0);
     end;
   end;
   frmbarra1.btnPrinter.Enabled:=false;
   grid_pernoctan.Enabled:=false;
end;

procedure TfrmRecursosPernocta.frmBarra1btnEditClick(Sender: TObject);
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
   except
     on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al editar registro', 0);
     frmBarra1.btnCancel.Click ;
     end;
   end ;
   tsTipo.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled:=false;
   grid_pernoctan.Enabled:=false;
end;

procedure TfrmRecursosPernocta.frmBarra1btnPostClick(Sender: TObject);
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
       recursos.FieldValues['sContrato']   := global_contrato;
       recursos.FieldValues['sIdConvenio'] := global_convenio;
       recursos.FieldValues['sIdCuenta']   := tsTipo.KeyValue;
       recursos.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
   except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al salvar registro', 0);
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

procedure TfrmRecursosPernocta.frmBarra1btnCancelClick(Sender: TObject);
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

procedure TfrmRecursosPernocta.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If recursos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        recursos.Delete ;
      except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmRecursosPernocta.frmBarra1btnRefreshClick(Sender: TObject);
begin
  try
   recursos.refresh
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al actualizar el Grid', 0);
  end;
  end;
end;

procedure TfrmRecursosPernocta.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmRecursosPernocta.ImportarCatalogo1Click(Sender: TObject);
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
             Q_Catalogo.SQL.Add('delete from cuentas_contrato where sContrato =:Contrato and sIdConvenio =:Convenio ');
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
        Q_Catalogo.SQL.Add('select * from cuentas ');
        Q_Catalogo.Open;

        while not Q_Catalogo.Eof do
        begin
             recursos.Append;
             recursos.FieldValues['sContrato']   := global_contrato;
             recursos.FieldValues['sIdConvenio'] := global_convenio;
             recursos.FieldValues['sIdCuenta']   := Q_Catalogo.FieldValues['sIdCuenta'];
             recursos.FieldValues['dCantidad']   := 0;
             try
             recursos.Post;
             except
             on e : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al importar catálogo', 0);
             frmbarra1.btnCancel.Click;
             exit;
             end;
             end;

             Q_Catalogo.Next;
        end;
        recursos.Refresh;
        messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk],0);
    end;
    Q_Catalogo.Destroy;
  except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al importar catálogo', 0);
   end;
  end;


end;

procedure TfrmRecursosPernocta.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmRecursosPernocta.Pegar1Click(Sender: TObject);
begin
try

except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Pernoctas PT', 'Al pegar el Grid', 0);
  end;
end;
end;

procedure TfrmRecursosPernocta.recursosCalcFields(DataSet: TDataSet);
var
    Q_Movimiento :TZReadOnlyQuery;
begin
    if recursos.RecordCount > 0 then
    begin
        Q_Movimiento := TZReadOnlyQuery.Create(self);
        Q_movimiento.Connection := connection.zConnection;

        Q_Movimiento.Active := False;
        Q_Movimiento.SQL.Clear;
        Q_Movimiento.SQL.Add('select sDescripcion from cuentas where sIdCuenta =:Cuenta');
        if recursos.FieldValues['sIdCuenta'] = Null  then
           Q_Movimiento.ParamByName('Cuenta').AsString := ''
        else
        Q_Movimiento.ParamByName('Cuenta').AsString := recursos.FieldValues['sIdCuenta'];
        Q_Movimiento.Open;

        if Q_Movimiento.RecordCount > 0 then
           recursossDescripcion.Text := Q_Movimiento.FieldValues['sDescripcion'];
    end;
end;

procedure TfrmRecursosPernocta.recursosdCantidadSetText(Sender: TField;
  const Text: string);
begin
Sender.Value:=abs(strtofloatdef(text, 0));
end;

procedure TfrmRecursosPernocta.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmRecursosPernocta.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmRecursosPernocta.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmRecursosPernocta.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmRecursosPernocta.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmRecursosPernocta.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

end.
