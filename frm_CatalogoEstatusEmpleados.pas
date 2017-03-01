unit frm_catalogoestatusempleados;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  UnitGenerales;

type
  TfrmCatalogoEstatusEmpleados = class(TForm)
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
    qryestatus: TZQuery;
    ds_estatus: TDataSource;
    qryestatussDescripcion: TStringField;
    qryestatusiColor: TIntegerField;
    qryestatusiIdEstatus: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    tsDescripcion: TDBEdit;
    tiColores: TColorBox;
    dbPerforacion: TDBComboBox;
    frmBarra1: TfrmBarra;
    qryestatuslAplicaEmpleadosActivos: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_estatus: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
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
    procedure grid_estatusEnter(Sender: TObject);
    procedure grid_estatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_estatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure grid_estatusMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_estatusMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgrd_estatuTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure qryestatusAfterScroll(DataSet: TDataSet);
    procedure qryestatusAfterInsert(DataSet: TDataSet);
    procedure dbgrd_estatuDblClick(Sender: TObject);
    procedure tiColoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbPerforacionEnter(Sender: TObject);
    procedure dbPerforacionExit(Sender: TObject);
    procedure CloseFormulario;
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoEstatusEmpleados : TfrmCatalogoEstatusEmpleados;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frmEmpleados, Utilerias;
{$R *.dfm}

procedure TfrmCatalogoEstatusEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree ;
end;

procedure TfrmCatalogoEstatusEmpleados.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryestatus.Active := False ;
   qryestatus.Open ;

   grid_estatus.SetFocus;
  // UtGrid:=TicdbGrid.create(grid_estatus);

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmCatalogoEstatusEmpleados.dbgrd_estatuDblClick(Sender: TObject);
begin
    CloseFormulario;
end;

procedure TfrmCatalogoEstatusEmpleados.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   global_movimiento := 'Insertó';
   qryestatus.Append ;
   qryestatus.FieldValues['sDescripcion'] := '';
   tsDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_estatus.Enabled := False;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnEditClick(Sender: TObject);
begin
    // agregamos...
    If qryestatus.RecordCount > 0 Then
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
           global_movimiento := 'Modificó';
           tsDescripcion.SetFocus;
           qryEstatus.Edit;
           grid_estatus.Enabled := False;
        except
           on e : exception do
            begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
           end;
        end;
    End;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
    mov : String;
begin
    frmBarra1.btnPostClick(Sender);
    if trim(tsDescripcion.Text) = '' then
    begin
       MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
       exit;
    end;

    qryestatus.FieldValues['iColor'] := tiColores.ItemIndex;
    qryestatus.Post;
    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción del Estatus de Empleado No. [' + qryestatus.FieldByName('iIdEstatus').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificacion del Estatus de Empleado No. [' + qryestatus.FieldByName('iIdEstatus').AsString + ']';

    kardex_almacen(mov, global_movimiento);

    Insertar1.Enabled  := True ;
    Editar1.Enabled    := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled       := False ;
    Eliminar1.Enabled  := True ;
    Refresh1.Enabled   := True ;

    Salir1.Enabled     := True ;
    grid_estatus.Enabled := True;

    desactivapop(popupprincipal);

    //Cerrar la ventana y colocar el area en el combo de empleados
    closeFormulario;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnCancelClick(Sender: TObject);
begin

   frmBarra1.btnCancelClick(Sender);
   qryestatus.Cancel;
   desactivapop(popupprincipal);
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_estatus.Enabled := True;
   sOpcion := '';
   global_movimiento := '';
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnDeleteClick(Sender: TObject);
var mov : String;
begin
  If qryestatus.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        global_movimiento := 'Eliminó';
        mov:= 'Se realizó la eliminación del Estatus de Empleado No. [' + qryestatus.FieldByName('iIdEstatus').AsString + ']';
        connection.QryBusca.Active:=False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select * from empleados where iIdEstatus = :iIdEstatus');
        connection.QryBusca.ParamByName('iIdEstatus').AsInteger := qryestatus.FieldByName('iIdEstatus').AsInteger;
        connection.QryBusca.Open;
        if connection.QryBusca.RecordCount > 0 then
        begin
          MessageDlg('No es posible eliminar el registro por que esta asigado a un empleado', mtWarning, [ mbOk ], 0 );
          Exit;
        end else qryestatus.Delete;

        kardex_almacen(mov, global_movimiento);
      except
         on e : exception do
         begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
         end;
      end
    end;
  end;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnRefreshClick(Sender: TObject);
begin
    qryestatus.refresh ;
end;

procedure TfrmCatalogoEstatusEmpleados.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled   := True ;
   CloseFormulario;
   Close
end;

procedure TfrmCatalogoEstatusEmpleados.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoEstatusEmpleados.qryestatusAfterInsert(DataSet: TDataSet);
begin

    qryestatus.FieldValues['lAplicaEmpleadosActivos'] := 'N/A' ;
end;

procedure TfrmCatalogoEstatusEmpleados.qryestatusAfterScroll(DataSet: TDataSet);
begin
    if qryestatus.RecordCount > 0 then
    begin
        if (qryestatus.State <> dsInsert) then
          tiColores.ItemIndex := qryestatus.FieldValues['iColor'];
    end;
end;

procedure TfrmCatalogoEstatusEmpleados.Copy1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogoEstatusEmpleados.Cut1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmCatalogoEstatusEmpleados.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEstatusEmpleados.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
   CloseFormulario;
end;

procedure TfrmCatalogoEstatusEmpleados.dbPerforacionEnter(Sender: TObject);
begin
  dbPerforacion.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEstatusEmpleados.dbPerforacionExit(Sender: TObject);
begin
  dbPerforacion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEmpleados.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoEstatusEmpleados.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoEstatusEmpleados.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoEstatusEmpleados.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoEstatusEmpleados.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoEstatusEmpleados.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoEstatusEmpleados.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEstatusEmpleados.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEstatusEmpleados.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoEstatusEmpleados.grid_estatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogoEstatusEmpleados.grid_estatusMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogoEstatusEmpleados.dbgrd_estatuTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmCatalogoEstatusEmpleados.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsDescripcion.SetFocus
end;

procedure TfrmCatalogoEstatusEmpleados.tiColoresEnter(Sender: TObject);
begin
    tiColores.Color := $00E6FEFF;
end;

procedure TfrmCatalogoEstatusEmpleados.tiColoresExit(Sender: TObject);
begin
    tiColores.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEmpleados.tiColoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then
    dbPerforacion.SetFocus;
end;

procedure TfrmCatalogoEstatusEmpleados.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoEstatusEmpleados.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEmpleados.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key =#13 then
          tiColores.SetFocus;
end;

procedure TfrmCatalogoEstatusEmpleados.CloseFormulario;
begin
    //Cerrar la ventana y colocar el area en el combo de empleados
    if Assigned(frm_Empleados)then
    begin
        try
           frmEmpleados.frm_Empleados.qryEstatus.Refresh;
           frmEmpleados.frm_Empleados.cxEstatus.DataBinding.DataSource.DataSet.FieldByName('iIdEstatus').AsInteger := qryestatus.FieldValues['iIdEstatus'];
           Close;
        Except
        end;
    end;
end;

end.
