unit frm_asigna_salario;

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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl;

type
  TfrmAsignaSalario = class(TForm)
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
    zqCargo: TZQuery;
    ds_cargo: TDataSource;
    Panel1: TPanel;
    frmBarra1: TfrmBarra;
    grid_estatus: TcxGrid;
    cxgrdbtblvw_estatusDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_estatusDBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvw_estatusDBTableView1Column2: TcxGridDBColumn;
    grid_estatusLevel1: TcxGridLevel;
    Panel2: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxgrdbtblvw_estatusDBTableView1Column3: TcxGridDBColumn;
    cxgrdbtblvw_estatusDBTableView1Column4: TcxGridDBColumn;
    cxgrdbtblvw_estatusDBTableView1Column5: TcxGridDBColumn;
    cxCategoria: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxSalario: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    zqCargoAsigna: TZQuery;
    ds_CargoAsigna: TDataSource;
    zqSalario: TZQuery;
    ds_salario: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure grid_estatusCellClick(Column: TColumn);
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
    procedure grid_estatusDblClick(Sender: TObject);
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
  frmAsignaSalario : TfrmAsignaSalario;
  //utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

  implementation
uses
    frm_consumibles, frmEmpleados, Frm_CatalogoDePostulante;
{$R *.dfm}

procedure TfrmAsignaSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmAsignaSalario.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;

  zqCargo.Active := False ;
  zqCargo.ParamByName('Id').AsInteger := connection.contrato.FieldByName('idOrganizacion').AsInteger;
  zqCargo.Open ;

  zqCargoAsigna.Active := False ;
  zqCargoAsigna.ParamByName('Id').AsInteger := connection.contrato.FieldByName('idOrganizacion').AsInteger;
  zqCargoAsigna.Open ;

  zqSalario.Active := False ;
  zqSalario.ParamByName('Id').AsInteger := connection.contrato.FieldByName('idOrganizacion').AsInteger;
  zqSalario.Open ;

  grid_estatus.SetFocus;

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;
procedure TfrmAsignaSalario.grid_estatusCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmAsignaSalario.grid_estatusDblClick(Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmAsignaSalario.cxgrdbtblvw_estatusDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmAsignaSalario.cxgrdbtblvw_estatusDBTableView1DblClick(
  Sender: TObject);
begin
  CloseFormulario;
end;

procedure TfrmAsignaSalario.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled   := False;
  Editar1.Enabled     := False;
  Registrar1.Enabled  :=  True;
  Can1.Enabled        :=  True;
  Eliminar1.Enabled   := False;
  Refresh1.Enabled    := False;
  Salir1.Enabled      := False;
  cxCategoria.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled :=   False;
  grid_estatus.Enabled := False;
  sOpcion := 'New';
end;

procedure TfrmAsignaSalario.frmBarra1btnEditClick(Sender: TObject);
begin
  If zqCargo.RecordCount > 0 Then
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
      cxCategoria.SetFocus;
      zqCargo.Edit;
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

procedure TfrmAsignaSalario.frmBarra1btnPostClick(Sender: TObject);
var
    lEdicion : boolean;
begin
  try
    frmBarra1.btnPostClick(Sender);
    if trim(cxCategoria.Text) = '' then
    begin
       MessageDlg('Exiten campos vacíos !', mtInformation, [mbOk], 0);
       exit;
    end;
  
    zqCargo.Post ;
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

procedure TfrmAsignaSalario.frmBarra1btnCancelClick(Sender: TObject);
begin
  sOpcion := '';
  frmBarra1.btnCancelClick(Sender);
  zqCargo.Cancel;

  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_estatus.Enabled := True;
  sOpcion := '';
end;

procedure TfrmAsignaSalario.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If zqCargo.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zqCargo.Delete;
      except
        on e : exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Salario', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmAsignaSalario.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zqCargo.refresh ;
end;

procedure TfrmAsignaSalario.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmAsignaSalario.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmAsignaSalario.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmAsignaSalario.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmAsignaSalario.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmAsignaSalario.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmAsignaSalario.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmAsignaSalario.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmAsignaSalario.grid_estatusEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmAsignaSalario.grid_estatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
        frmBarra1.btnCancel.Click ;
end;

procedure TfrmAsignaSalario.grid_estatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;
end;

procedure TfrmAsignaSalario.closeFormulario;
begin
  if global_frmActivo = 'frmEmpleados' then
  begin      
    if (frm_Empleados.zQEmpleados.State in [dsInsert]) or (frm_Empleados.zQEmpleados.State in [dsEdit]) then
    begin
        zqSalario.Locate('idCargo', zqCargo.FieldByName('idCargo').AsInteger, []);
        frm_Empleados.cxSalarioDiario.Value           := zqSalario.FieldByName('Salario').AsFloat;
        frm_Empleados.cxSalarioDiarioIntegrado.Value  := zqSalario.FieldByName('SalarioIntegrado').AsFloat;
        frm_Empleados.cxPais.SetFocus;
    end;
    Close;

    global_frmActivo := '';
  end;
end;

end.

       
