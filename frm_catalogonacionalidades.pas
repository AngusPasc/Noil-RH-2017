unit frm_catalogonacionalidades;

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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmCatalogoNacionalidades = class(TForm)
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
    qryNacionalidad: TZQuery;
    ds_nacionalidad: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    tsPais: TDBEdit;
    frmBarra1: TfrmBarra;
    qryNacionalidadsDescripcion: TStringField;
    qryNacionalidadiIdNacionalidad: TIntegerField;
    Label1: TLabel;
    tsNacionalidad: TDBEdit;
    qryNacionalidadsNacionalidad: TStringField;
    grid_estatus: TcxGrid;
    cxgrdbtblvw_estatusDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_estatusDBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvw_estatusDBTableView1Column2: TcxGridDBColumn;
    grid_estatusLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure grid_estatusCellClick(Column: TColumn);
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
    procedure tsPaisEnter(Sender: TObject);
    procedure tsPaisExit(Sender: TObject);
    procedure tsPaisKeyPress(Sender: TObject; var Key: Char);
    procedure grid_estatusDblClick(Sender: TObject);
    procedure tsNacionalidadEnter(Sender: TObject);
    procedure tsNacionalidadExit(Sender: TObject);
    procedure closeFormulario;
    procedure cxgrdbtblvw_estatusDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvw_estatusDBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoNacionalidades : TfrmCatalogoNacionalidades;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frmEmpleados, Frm_CatalogoDePostulante;
{$R *.dfm}

procedure TfrmCatalogoNacionalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmCatalogoNacionalidades.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;

  qryNacionalidad.Active := False ;
  qryNacionalidad.Open ;

  grid_estatus.SetFocus;

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;
procedure TfrmCatalogoNacionalidades.grid_estatusCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoNacionalidades.grid_estatusDblClick(Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoNacionalidades.cxgrdbtblvw_estatusDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoNacionalidades.cxgrdbtblvw_estatusDBTableView1DblClick(
  Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmCatalogoNacionalidades.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsPais.SetFocus ;
end;

procedure TfrmCatalogoNacionalidades.tsNacionalidadEnter(Sender: TObject);
begin
  tsNacionalidad.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoNacionalidades.tsNacionalidadExit(Sender: TObject);
begin
  tsNacionalidad.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled   := False;
  Editar1.Enabled     := False;
  Registrar1.Enabled  :=  True;
  Can1.Enabled        :=  True;
  Eliminar1.Enabled   := False;
  Refresh1.Enabled    := False;
  Salir1.Enabled      := False;
  qryNacionalidad.Append;
  qryNacionalidad.FieldValues['sDescripcion'] := '';
  tsPais.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled :=   False;
  grid_estatus.Enabled := False;
  sOpcion := 'New';
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryNacionalidad.RecordCount > 0 Then
  Begin
    try
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled := False;
      Editar1.Enabled   := False;
      Registrar1.Enabled := True;
      Can1.Enabled      :=  True;
      Eliminar1.Enabled := False;
      Refresh1.Enabled  := False;
      Salir1.Enabled    := False;
      sOpcion := 'Edit';
      tsPais.SetFocus;
      qryNacionalidad.Edit;
      grid_estatus.Enabled := False;
    except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Nacionalidades', 'Al agregar registro', 0);
      end;
    end;
  End;
 BotonPermiso.permisosBotones(frmBarra1);
 frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
begin
  try
    frmBarra1.btnPostClick(Sender);
    if trim(tsPais.Text) = '' then
    begin
       MessageDlg('Exiten campos vacíos !', mtInformation, [mbOk], 0);
       exit;
    end;
    if sOpcion = 'New' then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iIdNacionalidad) AS id FROM rh_nacionalidades');
      connection.QryBusca.Open;
      if connection.QryBusca.FieldValues['id'] = null then
      begin
        qryNacionalidad.FieldValues['iIdNacionalidad'] := 1;
      end
      else
      begin
        qryNacionalidad.FieldValues['iIdNacionalidad'] := connection.QryBusca.FieldValues['id'] + 1;
      end;
    end;
    qryNacionalidad.Post ;
    Insertar1.Enabled  :=  True;
    Editar1.Enabled    :=  True;
    Registrar1.Enabled := False;
    Can1.Enabled       := False;
    Eliminar1.Enabled  :=  True;
    Refresh1.Enabled   :=  True;
    Salir1.Enabled     :=  True;
    sOpcion := '';
    grid_estatus.Enabled := True;
    desactivapop(popupprincipal);

    //Cuando se de click en guardar, entonces mostrar en el combo de empleados, el valor recien creado
    //Cerrar la ventana y colocar el area en el combo de empleados
    closeFormulario;
  except
    on E:Exception do begin
      ShowMessage('Ocurrió un error al Insertar, inténtelo nuevamente mas tarde.' + E.Message);
    end;
  end;
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnCancelClick(Sender: TObject);
begin
  sOpcion := '';
  frmBarra1.btnCancelClick(Sender);
  qryNacionalidad.Cancel;

  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_estatus.Enabled := True;
  sOpcion := '';
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If qryNacionalidad.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        qryNacionalidad.Delete;
      except
        on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Nacionalidades', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryNacionalidad.refresh ;
end;

procedure TfrmCatalogoNacionalidades.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled     :=  True;
  Editar1.Enabled       :=  True;
  Registrar1.Enabled    := False;
  Can1.Enabled          := False;
  Eliminar1.Enabled     :=  True;
  Refresh1.Enabled      :=  True;
  Salir1.Enabled        :=  True;
  Close
end;

procedure TfrmCatalogoNacionalidades.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoNacionalidades.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoNacionalidades.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoNacionalidades.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoNacionalidades.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoNacionalidades.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoNacionalidades.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoNacionalidades.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoNacionalidades.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmCatalogoNacionalidades.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;
end;

procedure TfrmCatalogoNacionalidades.tsIdGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
    tsPais.SetFocus
end;

procedure TfrmCatalogoNacionalidades.tsPaisEnter(Sender: TObject);
begin
  tsPais.Color := global_color_entradaERP
end;

procedure TfrmCatalogoNacionalidades.tsPaisExit(Sender: TObject);
begin
  tsPais.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoNacionalidades.tsPaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  if frmbarra1.btnPost.Enabled = True then
    if key =#13 then
      tsNacionalidad.SetFocus;
end;

procedure TfrmCatalogoNacionalidades.closeFormulario;
begin
  if global_frmActivo = 'Frm_CatalogoDePostulante' then
  begin
    frmCatalogoDePostulante.zqNacionalidad.Refresh;
    frmCatalogoDePostulante.NACIONALIDAD.DataBinding.DataSource.DataSet.FieldByName('iIdNacionalidad').AsInteger := qryNacionalidad.FieldValues['iIdNacionalidad'];
    Close;

    global_frmActivo := '';
  end else if global_frmActivo = 'frmEmpleados' then
  begin
    frm_Empleados.cxPais.DataBinding.DataSource.DataSet.FieldByName('iIdNacionalidad').AsInteger := qryNacionalidad.FieldValues['iIdNacionalidad'];
    frm_Empleados.cxPais.SetFocus;
    Close;

    global_frmActivo := '';
  end;
end;

end.

       
